include $(GOROOT)/src/Make.inc

TARG=id3tag

CGOFILES=\
        alsa.go\

CGO_LDFLAGS=-lasound

#CGO_OFILES=\
#        id3_hlp.o\

include $(GOROOT)/src/Make.pkg

format:
	find . -type f -name '*.go' -exec gofmt -w {} \;
