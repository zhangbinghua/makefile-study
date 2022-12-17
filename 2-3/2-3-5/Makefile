.PHONY: clean
BIN:= mp3
OBJS:= player.o lcd.o
CC = gcc

$(BIN): $(OBJS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -o $@ -c $^

clean:
	rm -f $(BIN) $(OBJS)
