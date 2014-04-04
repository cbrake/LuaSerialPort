Lua Serial Port
===============


Introduction
------------

This project contains Serial Port module.  It currently only supports Linux, and requires LuaJIT
FFI.

Usage
-----

local sp = require "serial-port"

Example
-------

```lua
sp.open("/dev/ttyUSB0");
sp.setBaud(sp.B115200);
local count = sp.write("123);
print("Wrote " .. count .. " bytes");
```

Motivation
----------

While the same could be accomplished using various projects like luaposix or librs232lua, many times
you simply need something simple and don't want to be bothered with building extensions that have
native code -- especially cross compiling on embedded platforms.

Status
------

* write has been tested
* working on read 

License:MIT
-----------





