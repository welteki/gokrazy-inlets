// gokrazy-inlets is a gokrazy wrapper program that runs the bundled inlets-pro
// executable in /usr/local/bin/inlets-pro.
package main

import (
	"log"
	"os"
	"syscall"
)

func main() {
	if err := syscall.Exec("/usr/local/bin/inlets-pro", os.Args, os.Environ()); err != nil {
		log.Fatal(err)
	}
}
