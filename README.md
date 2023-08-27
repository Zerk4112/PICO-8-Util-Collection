# PICO-8-Util-Collection

## Project Description

PICO-8-Util-Collection is a collection of utilities created to assist in the creation of Games and Programs for the PICO-8 Fantasy Console by Lexaloffle.

## Installation Instructions

1. Clone the repo to your project directory

``` bash
git clone https://github.com/your-username/PICO-8-Util-Collection.git
```

2. Rename cloned folder as "lib", or desired directory name
3. Use `#include` to import the utilities desired.

``` lua
#include "lib/mouse.lua"
```

## Documentation for Libraries

Each utility in the collection has detailed comments and docstring-like documentation at the beginning of the include file. This documentation explains the purpose of the utility, its input and output parameters, and how to use it in your PICO-8 code. Here's an example of the documentation for the `math.lua` library:

```lua
-- math.lua
--
-- A collection of math utility functions for PICO-8.
--
-- Functions:
--   randib(a,b) --> integer
--   aget(x1,y1,x2,y2) --> float
--   dst(x0,y0,x1,y1) --> float
--   sqr(x) --> float
--
-- Usage:
--   #include "lib/math.lua"
--   local x = randib(1, 10)
--   local y = randb(1, 10)
--   local d = dst(0, 0, 10, 10)
--   local s = sqr(10)
--   local a = aget(0, 0, 10, 10)
```

## Contributing

If you find a bug or have a suggestion for a new utility, feel free to open an issue or submit a pull request on GitHub. We welcome contributions from the community!

License
PICO-8-Util-Collection is licensed under the MIT License. See the LICENSE file for more information.
