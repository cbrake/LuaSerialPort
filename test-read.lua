#!/usr/bin/env luajit

local sp = require "serial-port"

sp.open("/dev/ttyUSB18");
sp.setBaud(sp.B115200);

while true do
  local r = sp.read();
  if #r > 0 then
    print(r);
  end
end

