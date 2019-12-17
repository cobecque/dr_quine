#out of code
import sys

str = "#out of code%cimport sys%c%cstr = %c%s%c%c%cdef printf(file, format, *args):%c    fd = open(file, %cw+%c)%c    sys.stdout = fd%c    sys.stdout.write(format %% args)%c    fd.close()%c%c#in code%cprintf(%cGrace_kid.py%c, str, 10, 10, 10, 34, str, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10)%c"

def printf(file, format, *args):
    fd = open(file, "w+")
    sys.stdout = fd
    sys.stdout.write(format % args)
    fd.close()

#in code
printf("Grace_kid.py", str, 10, 10, 10, 34, str, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10)
