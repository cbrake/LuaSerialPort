#!/usr/bin/env luajit

local sp = require "serial-port"

assert(sp.open("/dev/ttyUSB0"), "Port opened failed");
assert(sp.setBaud(sp.B115200), "set baud failed");
local data = "123";
assert(sp.write(data), #data);



