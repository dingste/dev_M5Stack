# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"
# 1 "/home/dieter/Development/ProjektEi/build/libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c"

# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 3 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdint.h" 1 3 4
# 9 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdint.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 1 3 4
# 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 1 3 4







# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/features.h" 1 3 4
# 28 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/features.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_newlib_version.h" 1 3 4
# 29 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/features.h" 2 3 4
# 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 2 3 4
# 41 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 103 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 200 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_intsup.h" 1 3 4
# 35 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h" 1 3 4
# 20 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdint.h" 2 3 4
# 4 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c" 2

# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h" 1



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h" 2







# 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
__attribute__ ((visibility ("default")))
size_t crypto_verify_16_bytes(void);

__attribute__ ((visibility ("default")))
int crypto_verify_16(const unsigned char *x, const unsigned char *y)
            __attribute__ ((warn_unused_result));
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h" 1



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h" 2







__attribute__ ((visibility ("default")))
size_t crypto_verify_32_bytes(void);

__attribute__ ((visibility ("default")))
int crypto_verify_32(const unsigned char *x, const unsigned char *y)
            __attribute__ ((warn_unused_result));
# 7 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_64.h" 1



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_64.h" 2







__attribute__ ((visibility ("default")))
size_t crypto_verify_64_bytes(void);

__attribute__ ((visibility ("default")))
int crypto_verify_64(const unsigned char *x, const unsigned char *y)
            __attribute__ ((warn_unused_result));
# 8 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_verify/sodium/verify.c" 2

int
crypto_verify_16(const unsigned char *x, const unsigned char *y)
{
    uint_fast16_t d = 0U;
    int i;

    for (i = 0; i < 16; i++) {
        d |= x[i] ^ y[i];
    }
    return (1 & ((d - 1) >> 8)) - 1;
}

size_t
crypto_verify_16_bytes(void)
{
    return 16U;
}

int
crypto_verify_32(const unsigned char *x, const unsigned char *y)
{
    uint_fast16_t d = 0U;
    int i;

    for (i = 0; i < 32; i++) {
        d |= x[i] ^ y[i];
    }
    return (1 & ((d - 1) >> 8)) - 1;
}

size_t
crypto_verify_32_bytes(void)
{
    return 32U;
}

int
crypto_verify_64(const unsigned char *x, const unsigned char *y)
{
    uint_fast16_t d = 0U;
    int i;

    for (i = 0; i < 64; i++) {
        d |= x[i] ^ y[i];
    }
    return (1 & ((d - 1) >> 8)) - 1;
}

size_t
crypto_verify_64_bytes(void)
{
    return 64U;
}
