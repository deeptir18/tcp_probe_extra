TARGET = tcp_probe_extra
ccp-objs := tcp_probe_extra.o

obj-m := $(TARGET).o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
