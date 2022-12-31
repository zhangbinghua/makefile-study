.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
#BIN := $(addprefix /home/mp3/,$(BIN))
BIN := $(addprefix $(shell pwd)/,$(BIN))

#LINK_OBJ_DIR =/home/mp3/app/link_obj
LINK_OBJ_DIR = /home/zhangbh/linux_kernel/TbusOS/to_zhangzong/makefile-test/makefile-study/3.4/link_obj
#LINK_OBJ_DIR =$(shell pwd)/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))

OBJS := $(addprefix $(LINK_OBJ_DIR)/,$(OBJS))

LINK_OBJ = $(wildcard $(LINK_OBJ_DIR)/*.o)
LINK_OBJ +=$(OBJS)
all: $(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")	
include $(DEPS)
endif
$(BIN):$(LINK_OBJ)
	@echo "LINK_OBJ=$(LINK_OBJ)"
	@echo "BIN=$(BIN)"
	gcc -o $@ $^ 
$(LINK_OBJ_DIR)/%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
%.d:%.c
	#文本替换命令
	gcc -MM $^ | sed 's,\(.*\).o[ :]*,$(LINK_OBJ_DIR)/\1.o:,g' > $@
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS)
