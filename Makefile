# GLIBC_DIST=/home/dimak/projects/piot/glibc/dist/opt/piot
# KERNEL_HEADERS=/home/dimak/projects/piot/devenv/images/build/kernel-headers/

CFLAGS = $(CFLAGS_EXTRA) -Wall -I. -O2 -DNDEBUG -std=c99 -DSQLITE_OMIT_LOAD_EXTENSION=1 -g3 -static
#  -I${KERNEL_HEADERS}/include -I${GLIBC_DIST}/include -L${GLIBC_DIST}/lib
LDFLAGS+=-lpthread -ldl -lm -static
# -L${GLIBC_DIST}/lib
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
HDRS=$(wildcard *.h)
TARGET=sqlite-bench

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJS): $(HDRS)

bench: $(TARGET) clean-db
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o

clean-db:
	rm -f dbbench_sqlite3*

.PHONY: bench clean clean-db
