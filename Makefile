CFLAGS = -O2 -Werror -Wall -Wextra -pedantic

test: test_wcwidth
	@./test_wcwidth

test_wcwidth: test_wcwidth.c wcwidth.c wcwidth.h
	$(CC) $(CFLAGS) -o $@ test_wcwidth.c wcwidth.c

clean:
	rm -f test_wcwidth

.PHONY: clean test
