#!/bin/sh
prog=luvwall
prog_conf=luvwall.conf
prefix="/usr/local/bin"
auth=sudo

help() {
  echo './make install
./make uninstall'
}

install() {
  chmod 0755 $(PROG)
  $auth cp -r $prog $prefix/$prog
  cp -r $prog_conf $HOME/config
  cp -r subreddits $HOME/config
}

uninstall() {
  $auth rm -f $prefix/$prog
  rm -f $HOME/config/$prog_conf
  rm -f $HOME/config/subreddits
}

case $1 in
  install) install;;
  uninstall) uninstall;;
  *) help;;
esac
