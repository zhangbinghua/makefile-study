.PHONY:all
SRCS = player.c lcd.c usb.c media.c hello.h main.txt
#函数名称：字符串替换函数—subst。 
#函数功能：把字串“TEXT”中的“FROM”字符替换为“TO”。 
#返回值：替换后的新字符串。
OBJS = $(subst .c,.o,$(strip $(SRCS)))
#数名称：模式替换函数—patsubst。 
#函数功能：搜索“TEXT”中以空格分开的单词，将否符合模式“TATTERN”替换
#为“REPLACEMENT”。参数“PATTERN”中可以使用模式通配符“%”
#来代表一个单词中的若干字符。如果参数“REPLACEMENT”中也包含
#一个“%”，那么“REPLACEMENT”中的“%”将是“TATTERN”中
#的那个“%”所代表的字符串。在“TATTERN”和“REPLACEMENT”
#中，只有第一个“%”被作为模式字符来处理，之后出现的不再作模式
#字符（作为一个字符）。在参数中如果需要将第一个出现的“%”作为字
#符本身而不作为模式字符时，可使用反斜杠“\”进行转义处理（转义处
#理的机制和使用静态模式的转义一致，具体可参考 5.12.1 静态模式规则的
#语法 一小节）。 
#返回值：替换后的新字符串。 
#函数说明：参数“TEXT”单词之间的多个空格在处理时被合并为一个空格，并忽略
#前导和结尾空格。
DEPS = $(patsubst %.c,%.d,$(SRCS))
DEPS2 = $(SRCS:.c=.d)
FIND = $(findstring usb,$(SRCS))
FILTER = $(filter %.c %.h, $(SRCS))
FILTER_OUT = $(filter-out %.c %.h, $(SRCS))

all:
	@echo "OBJS = $(OBJS)"	
	@echo "DEPS = $(DEPS)"
	@echo "DEPS2 = $(DEPS2)"
	@echo "FIND = $(FIND)"
	@echo "FILTER = $(FILTER)"
	@echo "FILTER_OUT = $(FILTER_OUT)"