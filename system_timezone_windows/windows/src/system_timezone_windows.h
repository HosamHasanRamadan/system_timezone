#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>


#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT
#endif

struct MyString {
	char* stringValue;
	int stringSize;
};

struct MyList {
	char **listValue;
	int listSize;
	int listElementSize;
};

FFI_PLUGIN_EXPORT struct MyString* timezone();

FFI_PLUGIN_EXPORT struct MyList* timezones();

FFI_PLUGIN_EXPORT void free_pointer_mylist(struct MyList* ptr);

FFI_PLUGIN_EXPORT void free_pointer_mystring(struct MyString* ptr);