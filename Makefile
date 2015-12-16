BOOKS := core

all: ${BOOKS}

$(BOOKS):
	make -C $@ -I$(CURDIR)

clean:
	git clean -Xf

.PHONY: all clean $(BOOKS)
