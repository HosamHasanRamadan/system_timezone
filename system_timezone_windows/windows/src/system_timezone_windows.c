#include "system_timezone_windows.h"
#include "icu.h"

FFI_PLUGIN_EXPORT struct MyString* timezone() {
    UErrorCode status = U_ZERO_ERROR;
    UChar buffer[1024];
    int32_t bufferLength = sizeof(buffer) / sizeof(buffer[0]);

    int32_t resultLength = ucal_getHostTimeZone(buffer, bufferLength, &status);
    if (U_FAILURE(status)) {
        fprintf(stderr, "Error getting default time zone: %s\n", u_errorName(status));
        return NULL;
    }

    char* stringValue = (char*)malloc((resultLength + 1) * sizeof(char));
    if (stringValue == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }

    u_austrcpy(stringValue, buffer);
    stringValue[resultLength] = '\0';

    struct MyString* result = (struct MyString*)malloc(sizeof(struct MyString));
    if (result == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        free(stringValue);
        return NULL;
    }

    result->stringValue = stringValue;
    result->stringSize = resultLength;

    return result;
}

FFI_PLUGIN_EXPORT struct MyList* timezones() {
    UErrorCode status = U_ZERO_ERROR;
    UEnumeration* timeZones = ucal_openTimeZones(&status);

    if (U_FAILURE(status)) {
        fprintf(stderr, "Error opening time zones: %s\n", u_errorName(status));
        return NULL;
    }

    int32_t totalTimeZones = uenum_count(timeZones, &status);
    if (U_FAILURE(status)) {
        fprintf(stderr, "Error counting time zones: %s\n", u_errorName(status));
        uenum_close(timeZones);
        return NULL;
    }

    struct MyList* result = (struct MyList*)malloc(sizeof(struct MyList));
    if (result == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        uenum_close(timeZones);
        return NULL;
    }

    result->listSize = totalTimeZones;
    result->listElementSize = 1024; // Assuming each timezone string won't exceed 1024 characters
    result->listValue = (char**)malloc(totalTimeZones * sizeof(char*));

    if (result->listValue == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        uenum_close(timeZones);
        free(result);
        return NULL;
    }

    for (int32_t i = 0; i < totalTimeZones; i++) {
        int32_t length = 0;
        const UChar* id = uenum_unext(timeZones, &length, &status);
        if (U_FAILURE(status)) {
            fprintf(stderr, "Error getting timezone id: %s\n", u_errorName(status));
            uenum_close(timeZones);
            for (int32_t j = 0; j < i; j++) {
                free(result->listValue[j]);
            }
            free(result->listValue);
            free(result);
            return NULL;
        }

        char buffer[1024];
        u_austrcpy(buffer, id);
        result->listValue[i] = strdup(buffer);
    }

    uenum_close(timeZones);
    return result;
}
