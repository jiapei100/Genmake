# Genmake
A simple makefile generator for C/C++/Assembly Projects of all shapes and sizes

#How does it work
Simply download the genmake.py script, put it on your project root folder, and execute it with python:

```
python genmake.py
```

- It will ask for the output executable filename (including extension),
and will also ask for optional paths, such as build paths (where .o files will go), the root source file directory and the executable's path.

- Secondly, it will recursively scan the root path you provided (or not) of the location of your source files, and will create subdir.mk files next to them, finally, it'll generate a makefile.mak file which will link all object files into one.

- After the generation is done, simply type:
```
make -f makefile.mak all
```

#Special Features
This script has a very special feature, which allows the programmer to inject options into the makefile.mak or subdir.mk right from the source code.
For example, imagine you want to compile foo.c differently from all other files. For this, you'd write this block of comment into your source code:
```javascript
// $FLAGS(-O2 -Wall -std=c++11) 
```

What's more, you can also inject dependencies, as such:
```javascript
// $DEPS(bar, baz) Where 'bar' and 'baz' are object files which exist/will exist on the build path  
```

Finally, it is also possible to inject misc configurations, for whatever reason:
```javascript
// $INJ(@echo "I injected this into the makefile and this will be run AFTER the compilation")
```