# Top level makefile, the real shit is at src/Makefile


# 在makefile中，使用target:dependendencies的格式来定义构建规则
# 在执行构建时，通过make {target}命令来执行对应的构建规则
# default 是默认的目标，当执行 make 命令时，会执行 default 目标对应的规则
default: all


# 可见具体的编译都是在src目录下调用子makefile构建的
.DEFAULT:
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

.PHONY: install

# 对redis来说，编译完成后主要有两个产出，./src/redis-server 和 ./src/redis-cli