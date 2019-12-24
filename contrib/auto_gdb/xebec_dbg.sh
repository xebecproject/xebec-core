#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.xebeccore/xebecd.pid file instead
xebec_pid=$(<~/.xebeccore/testnet3/xebecd.pid)
sudo gdb -batch -ex "source debug.gdb" xebecd ${xebec_pid}
