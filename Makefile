CC=gcc
splc:
	@mkdir bin
	yacc -d parser.y -Wnone
	lex scanner.l
	gcc lex.yy.c y.tab.c symbol_table.c scope.c stack.c -w -lm -o bin/splc
	@chmod +x bin/splc
clean:
	@rm -rf bin/
.PHONY: splc