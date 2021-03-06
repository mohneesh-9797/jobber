package common

import (
	"fmt"
	"os"
	"os/user"
	"strconv"
	"syscall"
)

func UserOwnsFile(usr *user.User, path string) (bool, error) {
	f, err := os.Open(path)
	if err != nil {
		return false, err
	}
	defer f.Close()
	return UserOwnsFileF(usr, f)
}

func UserOwnsFileF(usr *user.User, f *os.File) (bool, error) {
	// get file's owner
	stat, err := f.Stat()
	if err != nil {
		return false, err
	}
	fileUid := stat.Sys().(*syscall.Stat_t).Uid
	fileUidStr := fmt.Sprintf("%v", fileUid)

	return fileUidStr == usr.Uid, nil
}

func Chown(path string, usr *user.User) error {
	// convert UID & GID to int
	uid, err := strconv.Atoi(usr.Uid)
	if err != nil {
		return err
	}
	gid, err := strconv.Atoi(usr.Gid)
	if err != nil {
		return err
	}

	// chown
	if err := os.Chown(path, uid, gid); err != nil {
		return err
	}

	return nil
}
