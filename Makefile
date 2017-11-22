obj-m := ak4554.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	sudo cp ak4554.ko /lib/modules/$(shell uname -r)
	sudo depmod -a
