# Makefile
CC=clang

all: main.m 
	$(CC) -x objective-c main.m -dynamiclib -target arm64-apple-ios16.2 -fmodules -F/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/ -undefined dynamic_lookup -o "tweak.dylib"
codesign:
	codesign --force -s - ./*.dylib
clean: 
	$(RM) ./*.dylib