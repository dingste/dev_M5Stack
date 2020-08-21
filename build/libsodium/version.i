# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/version.c"
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/version.c"

# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/port_include/sodium/version.h" 1




# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/port_include/sodium/version.h" 2
# 22 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/port_include/sodium/version.h"
__attribute__ ((visibility ("default")))
const char *sodium_version_string(void);

__attribute__ ((visibility ("default")))
int sodium_library_version_major(void);

__attribute__ ((visibility ("default")))
int sodium_library_version_minor(void);
# 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/sodium/version.c" 2

const char *
sodium_version_string(void)
{
    return "1.0.12-idf";
}

int
sodium_library_version_major(void)
{
    return 9;
}

int
sodium_library_version_minor(void)
{
    return 4;
}

int
sodium_library_minimal(void)
{



    return 0;

}
