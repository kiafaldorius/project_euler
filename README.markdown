# project_euler.rb

This is an attempt at solving the [Project Euler](http://projecteuler.net/) problem set using
[Ruby](http://www.ruby-lang.org/)

Each problem has its own file located inside a subdirectory of the problems/ directory in sets of 10. Each set has an include file that requires all the files in the set. The file project_euler.rb in the root loads all the files. Inside the file, the problem is defined as method with the name euler_# where # is the number of the problem. The output is the answer. The methods are meant to be flexible enough that you can replace the initial input and they should return the answers for that input based on the rules of the problem set.

I try to keep the code simple and concise, so most of the problems shouldn't need any explaination on how they work. It should be able to be analyzed quite quickly. In cases where the problem is complex, I'll comment the code a bit.

## Example

You can open by an irb session by running the euler app in terminal:

    Kiafaldorius:project_euler kia$ ./euler
    >> euler_1
    => 233169
    >> exit

# License (MIT)

Copyright (c) 2010 Kia Kroas

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

