PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin

CC      ?= cc
CFLAGS  ?= -O2 -Wall -Wextra
LDLIBS  ?= -lm

TARGET  := peaae
SRC     := src/peaae.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -std=c99 $(CFLAGS) $(LDFLAGS) -o $@ $(SRC) $(LDLIBS)

install: $(TARGET)
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(TARGET) $(DESTDIR)$(BINDIR)/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all install uninstall clean
