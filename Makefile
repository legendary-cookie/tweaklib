ARCHS = arm64 
TARGET := iphone:clang:13.6:7.0

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libcosmo

libcosmo_FILES = CosmoLib.m
libcosmo_CFLAGS = -fobjc-arc
libcosmo_INSTALL_PATH = /usr/local/lib
libcosmo_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/library.mk

host-install: create-tbd
	cp *.h ${THEOS}/vendor/include

create-tbd:
	tbd -p .theos/obj/debug/libcosmo.dylib > ${THEOS}/vendor/lib/libcosmo.tbd
