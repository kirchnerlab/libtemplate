A C++ library template
======================

== Introduction ==
This is a basic project that can be used to set up a reasonable development
environment for a C++ library. It includes a working cmake setup, including
documentation, unit test and gcov test coverage targets.

Many people have contributed bits and pieces to this; major contributions
come from Bernhard Kausler, David Sichau and Mathias Wilhelm. Thank you.
The code template is licensed under an MIT license, see below.

== How to use ==

git clone git://github.com/kirchnerlab/libtemplate.git
mv libtemplate libmyname
cd libmyname
./config_template.sh libmyname myname
rm config_template.sh

This will give you a pristine development environment with a working cmake
setup. Compilation will fail until you add your own code and remove Dummy.cpp.

You will want to edit README.txt and LICENSE.txt.

Boost support is available; simply uncomment the respective lines in the
CMakeList.txt file in the root directory. 

Please consider contributing your improvements.

== License ==

Copyright (C) 2012 Marc Kirchner

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
