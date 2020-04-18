# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
# 1 "/home/dieter/Development/ProjektEi/build/libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 1



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h" 2







# 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_outputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_inputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_hsalsa20_constbytes(void);

__attribute__ ((visibility ("default")))
int crypto_core_hsalsa20(unsigned char *out, const unsigned char *in,
                         const unsigned char *k, const unsigned char *c);
# 2 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h" 1
# 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h" 2
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
# 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h" 2
# 24 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"

# 24 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_stream_salsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_stream_salsa20_noncebytes(void);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20(unsigned char *c, unsigned long long clen,
                          const unsigned char *n, const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20_xor(unsigned char *c, const unsigned char *m,
                              unsigned long long mlen, const unsigned char *n,
                              const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20_xor_ic(unsigned char *c, const unsigned char *m,
                                 unsigned long long mlen,
                                 const unsigned char *n, uint64_t ic,
                                 const unsigned char *k);

__attribute__ ((visibility ("default")))
void crypto_stream_salsa20_keygen(unsigned char k[32U]);



int _crypto_stream_salsa20_pick_best_implementation(void);
# 3 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_xsalsa20.h" 1
# 12 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_xsalsa20.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 13 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_xsalsa20.h" 2
# 24 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_xsalsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_stream_xsalsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_stream_xsalsa20_noncebytes(void);

__attribute__ ((visibility ("default")))
int crypto_stream_xsalsa20(unsigned char *c, unsigned long long clen,
                           const unsigned char *n, const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_xsalsa20_xor(unsigned char *c, const unsigned char *m,
                               unsigned long long mlen, const unsigned char *n,
                               const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_xsalsa20_xor_ic(unsigned char *c, const unsigned char *m,
                                  unsigned long long mlen,
                                  const unsigned char *n, uint64_t ic,
                                  const unsigned char *k);

__attribute__ ((visibility ("default")))
void crypto_stream_xsalsa20_keygen(unsigned char k[32U]);
# 4 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 1




# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2


# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 1 3 4
# 20 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 1 3 4
# 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/newlib.h" 1 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 1 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/ieeefp.h" 1 3 4
# 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 2 3 4
# 193 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 3 4
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core-isa.h" 1 3 4
# 194 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 2 3 4
# 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 2 3 4
# 21 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 1 3 4
# 45 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 2 3 4
# 22 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_types.h" 1 3 4
# 23 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4






# 28 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 63 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 1 3 4
# 25 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 1 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 3 4
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 3 4
void _lock_init(_lock_t *lock);
void _lock_init_recursive(_lock_t *lock);
void _lock_close(_lock_t *lock);
void _lock_close_recursive(_lock_t *lock);
void _lock_acquire(_lock_t *lock);
void _lock_acquire_recursive(_lock_t *lock);
int _lock_try_acquire(_lock_t *lock);
int _lock_try_acquire_recursive(_lock_t *lock);
void _lock_release(_lock_t *lock);
void _lock_release_recursive(_lock_t *lock);
# 26 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 2 3 4


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
typedef unsigned int __size_t;
# 145 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
typedef signed int _ssize_t;
# 156 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
typedef _ssize_t __ssize_t;


# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 357 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 2 3 4



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;


typedef __builtin_va_list __va_list;
# 64 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 1 3 4





# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_endian.h" 1 3 4
# 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 2 3 4
# 68 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h" 1 3 4
# 19 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 1 3 4
# 20 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h" 2 3 4

# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 1 3 4
# 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_sigset.h" 1 3 4
# 41 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_sigset.h" 3 4
typedef unsigned long __sigset_t;
# 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_timeval.h" 1 3 4
# 35 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_timeval.h" 3 4
typedef __suseconds_t suseconds_t;




typedef long time_t;
# 52 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_timeval.h" 3 4
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/timespec.h" 1 3 4
# 38 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/timespec.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_timespec.h" 1 3 4
# 45 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_timespec.h" 3 4
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/timespec.h" 2 3 4
# 58 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/timespec.h" 3 4
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;
# 34 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 3 4
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 60 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/select.h" 3 4


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 22 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h" 2 3 4
# 69 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;
# 87 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 135 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 236 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef __int64_t sbintime_t;


# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 1 3 4
# 23 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/sched.h" 1 3 4
# 48 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/sched.h" 3 4
struct sched_param {
  int sched_priority;
# 61 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/sched.h" 3 4
};

int sched_yield( void );
# 24 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 2 3 4
# 32 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 3 4
typedef __uint32_t pthread_t;
# 61 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 3 4
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 3 4
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 166 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_pthreadtypes.h" 3 4
  int type;

  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 240 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/types.h" 1 3 4
# 241 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4
# 9 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2
# 19 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"

# 19 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
typedef struct randombytes_implementation {
    const char *(*implementation_name)(void);
    uint32_t (*random)(void);
    void (*stir)(void);
    uint32_t (*uniform)(const uint32_t upper_bound);
    void (*buf)(void * const buf, const size_t size);
    int (*close)(void);
} randombytes_implementation;


__attribute__ ((visibility ("default")))
size_t randombytes_seedbytes(void);

__attribute__ ((visibility ("default")))
void randombytes_buf(void * const buf, const size_t size);

__attribute__ ((visibility ("default")))
void randombytes_buf_deterministic(void * const buf, const size_t size,
                                   const unsigned char seed[32U]);

__attribute__ ((visibility ("default")))
uint32_t randombytes_random(void);

__attribute__ ((visibility ("default")))
uint32_t randombytes_uniform(const uint32_t upper_bound);

__attribute__ ((visibility ("default")))
void randombytes_stir(void);

__attribute__ ((visibility ("default")))
int randombytes_close(void);

__attribute__ ((visibility ("default")))
int randombytes_set_implementation(randombytes_implementation *impl);

__attribute__ ((visibility ("default")))
const char *randombytes_implementation_name(void);



__attribute__ ((visibility ("default")))
void randombytes(unsigned char * const buf, const unsigned long long buf_len);
# 5 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 2
# 1 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 1




# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 2
# 21 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
__attribute__ ((visibility ("default")))
void sodium_memzero(void * const pnt, const size_t len);







__attribute__ ((visibility ("default")))
int sodium_memcmp(const void * const b1_, const void * const b2_, size_t len)
            __attribute__ ((warn_unused_result));







__attribute__ ((visibility ("default")))
int sodium_compare(const unsigned char *b1_, const unsigned char *b2_,
                   size_t len)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int sodium_is_zero(const unsigned char *n, const size_t nlen);

__attribute__ ((visibility ("default")))
void sodium_increment(unsigned char *n, const size_t nlen);

__attribute__ ((visibility ("default")))
void sodium_add(unsigned char *a, const unsigned char *b, const size_t len);

__attribute__ ((visibility ("default")))
char *sodium_bin2hex(char * const hex, const size_t hex_maxlen,
                     const unsigned char * const bin, const size_t bin_len);

__attribute__ ((visibility ("default")))
int sodium_hex2bin(unsigned char * const bin, const size_t bin_maxlen,
                   const char * const hex, const size_t hex_len,
                   const char * const ignore, size_t * const bin_len,
                   const char ** const hex_end);

__attribute__ ((visibility ("default")))
int sodium_mlock(void * const addr, const size_t len);

__attribute__ ((visibility ("default")))
int sodium_munlock(void * const addr, const size_t len);
# 103 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
__attribute__ ((visibility ("default")))
void *sodium_malloc(const size_t size)
            __attribute__ ((malloc));

__attribute__ ((visibility ("default")))
void *sodium_allocarray(size_t count, size_t size)
            __attribute__ ((malloc));

__attribute__ ((visibility ("default")))
void sodium_free(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_noaccess(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_readonly(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_readwrite(void *ptr);



int _sodium_alloc_init(void);
# 6 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 2

int
crypto_stream_xsalsa20(unsigned char *c, unsigned long long clen,
                       const unsigned char *n, const unsigned char *k)
{
    unsigned char subkey[32];
    int ret;

    crypto_core_hsalsa20(subkey, n, k, 
# 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 3 4
                                      ((void *)0)
# 14 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
                                          );
    ret = crypto_stream_salsa20(c, clen, n + 16, subkey);
    sodium_memzero(subkey, sizeof subkey);

    return ret;
}

int
crypto_stream_xsalsa20_xor_ic(unsigned char *c, const unsigned char *m,
                              unsigned long long mlen, const unsigned char *n,
                              uint64_t ic, const unsigned char *k)
{
    unsigned char subkey[32];
    int ret;

    crypto_core_hsalsa20(subkey, n, k, 
# 29 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c" 3 4
                                      ((void *)0)
# 29 "/home/dieter/Development/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
                                          );
    ret = crypto_stream_salsa20_xor_ic(c, m, mlen, n + 16, ic, subkey);
    sodium_memzero(subkey, sizeof subkey);

    return ret;
}

int
crypto_stream_xsalsa20_xor(unsigned char *c, const unsigned char *m,
                           unsigned long long mlen, const unsigned char *n,
                           const unsigned char *k)
{
    return crypto_stream_xsalsa20_xor_ic(c, m, mlen, n, 0ULL, k);
}

size_t
crypto_stream_xsalsa20_keybytes(void)
{
    return 32U;
}

size_t
crypto_stream_xsalsa20_noncebytes(void)
{
    return 24U;
}

void
crypto_stream_xsalsa20_keygen(unsigned char k[32U])
{
    randombytes_buf(k, 32U);
}
