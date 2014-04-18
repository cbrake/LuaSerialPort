#!/usr/bin/env luajit

local sp = require "serial-port"

assert(sp.open("/dev/ttyUSB0"), "Open failed");
assert(sp.setBaud(sp.B115200), "set baud failed");

while true do
  local r = sp.read();
  if #r > 0 then
    print(r);
  end
end

