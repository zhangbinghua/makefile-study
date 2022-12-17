ifeq ($(DEBUG), true)
CC := gcc -g
else
CC := gcc
endif

.PONHY: all clean

all: test1

test1:
	@echo "jest for test1:$@"
	@echo "DEBUG: $(DEBUG)"
	@echo "CC= $(CC)"

test2:
	@echo "jest for test2"

hello: lcd.o player.o
	@echo "CC= $(CC)"
	@echo "start build hello"
	$(CC) -o hello lcd.o player.o
	@echo " build hello sucess"

%.o: %.c
	$(CC) -o $@ -c $^

clean:
	rm -f hello *.o
