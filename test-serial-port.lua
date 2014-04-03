#!/usr/bin/env luajit

local sp = require "serial-port"

sp.open("/dev/ttyUSB0");
print("sp.fd = " .. sp.fd);


