test: test_wcwidth
	@./test_wcwidth
	
test_wcwidth: test_wcwidth.c wcwidth.c wcwidth.h
	clang -o test_wcwidth test_wcwidth.c wcwidth.c

.PHONY: test
