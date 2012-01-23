A C++ library template
======================

== Introduction ==
This is a basic project that can be used to set up a reasonable development
environment for a C++ library. It includes a working cmake setup, including
documentation, unit test and gcov test coverage targets.

Many people have contributed bits and pieces to this; major contributions
come from Bernhard Kausler, David Sichau and Mathias Wilhelm. Thank you.
The code is licensed under an MIT license, see LICENSE.txt.

== How to use ==

git clone git://github.com/kirchnerlab/libtemplate.git
mv libtemplate libmyname
cd libmyname
./config_template.sh libmyname myname
rm config_template.sh

This will give you a pristine development environment with a working cmake
setup. Compilation will fail until you add your own code and remove Dummy.cpp.

Boost support is available; simply uncomment the respective lines in the
CMakeList.txt file in the root directory. 

Please consider contributing your improvements.

