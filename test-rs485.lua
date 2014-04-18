#!/usr/bin/env luajit

local sp = require "serial-port";

assert(sp.open("/dev/ttyS2"), "Error: failed to open port");
assert(sp.setBaud(bit.bor(sp.B57600, sp.PARENB)), "Error: failed to set baud");
assert(sp.enableRs485(), "Error: failed to enable rs485 mode");

local data = "55asdf;alskjdfal;skdjfa;lskjfda;lskdjfa;lskjdf;alskdfj;laksjfd;laskjdf;laksjdf;laksjdf;laksjdf;laksjfdal;skdfj";
assert(sp.write(data) == #data);

