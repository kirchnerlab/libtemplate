/*
 * Copyright (c) 2012 User
 *
 * This file is part of __projectname__.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
#ifndef __LIB__PROJECTNAME___INCLUDE___PROJECTNAME___CONFIG_HPP__

#ifdef _WIN32
    #define VC_EXTRALEAN
    #include <windows.h>
    #define __PROJECTNAME___EXPORT __declspec( dllexport )
    #pragma warning (disable: 4251) // http://www.unknownroad.com/rtfm/VisualStudio/warningC4251.html
    #pragma warning (disable: 4101) // warnings to catch statment of Exceptions without using them
    #pragma warning (disable: 4503) // for warnings related to long definitions in boost and std

    #undef DELETE
    #undef max
    #undef min
#else
    #define __PROJECTNAME___EXPORT
#endif

#endif

