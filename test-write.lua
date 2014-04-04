#!/usr/bin/env luajit

local sp = require "serial-port"

sp.open("/dev/ttyUSB18");
sp.setBaud(sp.B115200);
local count = sp.write("123");
print("Wrote " .. count .. " bytes");



