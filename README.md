Lua Serial Port
===============


Introduction
------------

This project implements a Serial Port module for Lua.  It currently only supports Linux, and requires LuaJIT
FFI.

Example
-------

```lua
local sp = require "serial-port"
sp.open("/dev/ttyUSB0");
sp.setBaud(sp.B115200);
local count = sp.write("123");
print("Wrote " .. count .. " bytes");
```

Motivation
----------

While the same could be accomplished using various projects like luaposix or librs232lua, many times
you simply need something simple and don't want to be bothered with building extensions that have
native code -- especially cross compiling for embedded platforms.

Status
------

* non-blocking read/write implemented

License:MIT
-----------





