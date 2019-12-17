#out of code
import sys

str = "#out of code%cimport sys%c%cstr = %c%s%c%c%cdef printf(format, *args):%c    sys.stdout.write(format %% args)%c%c#in code%cprintf(str, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10)%c"

def printf(format, *args):
    sys.stdout.write(format % args)

#in code
printf(str, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10)
