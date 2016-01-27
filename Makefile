BOOKS := core

all: ${BOOKS}

$(BOOKS):
	$(MAKE) -C $@ -I$(CURDIR)

clean:
	git clean -Xf

.PHONY: all clean $(BOOKS)
