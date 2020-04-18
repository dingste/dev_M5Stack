# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c"
# 1 "/home/dieter/Development/ProjektEi/build/bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c"
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c"
# 1 "/home/dieter/Development/ProjektEi/build/include/sdkconfig.h" 1




       
# 15 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2

# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 1
# 17 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 18 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdbool.h" 1 3 4
# 19 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 2
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
# 20 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 1
# 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
       


# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 1 3 4
# 29 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
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
# 30 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4





# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 1 3 4
# 45 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 2 3 4
# 36 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4





typedef __gnuc_va_list va_list;
# 60 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 1 3 4
# 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 1 3 4
# 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 1 3 4
# 24 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_types.h" 1 3 4
# 25 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 2 3 4
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
# 16 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 2 3 4






typedef unsigned long __ULong;
# 38 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 117 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 153 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 181 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 344 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _unspecified_locale_info;
  struct __locale_t *_locale;

  struct _mprec *_mp;

  void (*__cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**_sig_func)(int);



  struct _atexit *_atexit;
  struct _atexit _atexit0;


  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 778 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
extern struct _reent * _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 61 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 1 3 4
# 28 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 63 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 2 3 4




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
# 62 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/stdio.h" 1 3 4
# 80 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4
# 181 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4

# 18 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h"
       

# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 1 3 4
# 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/ieeefp.h" 1 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4





# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 17 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/stdlib.h" 1 3 4
# 21 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4

# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/alloca.h" 1 3 4
# 23 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4







# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/xlocale.h" 1 3 4
# 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/xlocale.h" 3 4
struct __locale_t;
typedef struct __locale_t *locale_t;
# 31 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4




typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);
# 69 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 3 4
int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);


int mkostemp (char *, int);
int mkostemps (char *, int, int);


int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *);






char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);

char * _mktemp_r (struct _reent *, char *);



void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void *__r, size_t __size) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)))
     __attribute__((__alloc_size__(3)));
void * reallocf (void *__r, size_t __size);


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);


void setkey (const char *__key);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);


double strtod_l (const char *restrict, char **restrict, locale_t);
float strtof_l (const char *restrict, char **restrict, locale_t);

extern long double strtold_l (const char *restrict, char **restrict,
         locale_t);

long strtol_l (const char *restrict, char **restrict, int, locale_t);
unsigned long strtoul_l (const char *restrict, char **restrict, int,
    locale_t __loc);
long long strtoll_l (const char *restrict, char **restrict, int, locale_t);
unsigned long long strtoull_l (const char *restrict, char **restrict, int,
          locale_t __loc);


int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 233 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 3 4
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int __attribute__((__nonnull__ (1))) posix_memalign (void **, size_t, size_t);


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);






void qsort_r (void *__base, size_t __nmemb, size_t __size, int (*_compar)(const void *, const void *, void *), void *__thunk);
# 330 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 3 4
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2)));
int at_quick_exit(void (*)(void));
__attribute__((__noreturn__)) void
 quick_exit(int);



# 22 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2

# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h" 1 3 4
# 39 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h" 3 4
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 24 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2
# 19 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 2






# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
typedef int32_t esp_err_t;
# 59 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 77 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _esp_error_check_failed_without_abort(esp_err_t rc, const char *file, int line, const char *function, const char *expression);
# 21 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 2
# 1 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h" 1
# 20 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 21 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h" 2
# 35 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
typedef enum {
    FLASH_WRAP_MODE_8B = 0,
    FLASH_WRAP_MODE_16B = 2,
    FLASH_WRAP_MODE_32B = 4,
    FLASH_WRAP_MODE_64B = 6,
    FLASH_WRAP_MODE_DISABLE = 1
} spi_flash_wrap_mode_t;
# 51 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_wrap_set(spi_flash_wrap_mode_t mode);
# 62 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_init(void);
# 71 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_get_chip_size(void);
# 80 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_sector(size_t sector);
# 91 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_range(size_t start_address, size_t size);
# 110 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write(size_t dest_addr, const void *src, size_t size);
# 133 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write_encrypted(size_t dest_addr, const void *src, size_t size);
# 156 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read(size_t src_addr, void *dest, size_t size);
# 173 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read_encrypted(size_t src, void *dest, size_t size);




typedef enum {
    SPI_FLASH_MMAP_DATA,
    SPI_FLASH_MMAP_INST,
} spi_flash_mmap_memory_t;




typedef uint32_t spi_flash_mmap_handle_t;
# 210 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap(size_t src_addr, size_t size, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 236 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap_pages(const int *pages, size_t page_count, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 250 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_munmap(spi_flash_mmap_handle_t handle);
# 259 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_mmap_dump(void);
# 272 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
uint32_t spi_flash_mmap_get_free_pages(spi_flash_mmap_memory_t memory);
# 288 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_cache2phys(const void *cached);
# 308 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
const void *spi_flash_phys2cache(size_t phys_offs, spi_flash_mmap_memory_t memory);






# 314 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h" 3 4
_Bool 
# 314 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
    spi_flash_cache_enabled(void);






void spi_flash_enable_cache(uint32_t cpuid);





typedef void (*spi_flash_guard_start_func_t)(void);



typedef void (*spi_flash_guard_end_func_t)(void);



typedef void (*spi_flash_op_lock_func_t)(void);



typedef void (*spi_flash_op_unlock_func_t)(void);



typedef 
# 343 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h" 3 4
       _Bool 
# 343 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
            (*spi_flash_is_safe_write_address_t)(size_t addr, size_t size);
# 376 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
typedef struct {
    spi_flash_guard_start_func_t start;
    spi_flash_guard_end_func_t end;
    spi_flash_op_lock_func_t op_lock;
    spi_flash_op_unlock_func_t op_unlock;

    spi_flash_is_safe_write_address_t is_safe_write_address;

} spi_flash_guard_funcs_t;
# 394 "/home/dieter/Development/esp-idf/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_guard_set(const spi_flash_guard_funcs_t* funcs);







const spi_flash_guard_funcs_t *spi_flash_guard_get(void);




extern const spi_flash_guard_funcs_t g_flash_guard_default_ops;







extern const spi_flash_guard_funcs_t g_flash_guard_no_os_ops;
# 22 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 2
# 38 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
uint32_t bootloader_mmap_get_free_pages(void);
# 57 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
const void *bootloader_mmap(uint32_t src_addr, uint32_t size);







void bootloader_munmap(const void *mapping);
# 82 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
esp_err_t bootloader_flash_read(size_t src_addr, void *dest, size_t size, 
# 82 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 3 4
                                                                         _Bool 
# 82 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
                                                                              allow_decrypt);
# 100 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
esp_err_t bootloader_flash_write(size_t dest_addr, void *src, size_t size, 
# 100 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h" 3 4
                                                                          _Bool 
# 100 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
                                                                               write_encrypted);
# 109 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
esp_err_t bootloader_flash_erase_sector(size_t sector);
# 119 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
esp_err_t bootloader_flash_erase_range(uint32_t start_addr, uint32_t size);
# 133 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
static inline uint32_t bootloader_cache_pages_to_map(uint32_t size, uint32_t vaddr)
{
    return (size + (vaddr - (vaddr & (~(0x00010000 - 1)))) + 0x00010000 - 1) / 0x00010000;
}
# 17 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
       
# 27 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
typedef void *bootloader_sha256_handle_t;

bootloader_sha256_handle_t bootloader_sha256_start(void);

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len);

void bootloader_sha256_finish(bootloader_sha256_handle_t handle, uint8_t *digest);
# 18 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 1
# 19 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 1 3 4
# 20 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2


# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 63 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef enum {
    ETS_OK = 0,
    ETS_FAILED = 1
} ETS_STATUS;

typedef uint32_t ETSSignal;
typedef uint32_t ETSParam;

typedef struct ETSEventTag ETSEvent;

struct ETSEventTag {
    ETSSignal sig;
    ETSParam par;
};

typedef void (*ETSTask)(ETSEvent *e);
typedef void (* ets_idle_cb_t)(void *arg);
# 88 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_run(void);
# 99 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 114 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 128 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 142 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 152 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 162 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 172 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                jump, 
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                           config);
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                         jump, 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                                        config);
# 231 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 241 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 251 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 261 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 271 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 293 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 311 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_init(void);
# 320 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_deinit(void);
# 334 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 334 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                   _Bool 
# 334 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                        repeat);
# 348 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 348 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                    _Bool 
# 348 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                         repeat);
# 358 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 372 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 382 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 392 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 402 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 414 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 424 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 433 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 446 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 460 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 475 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 486 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 497 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 508 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_intr_lock(void);
# 519 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_intr_unlock(void);
# 530 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_waiti0(void);
# 548 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 638 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 23 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2
# 35 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 64 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 77 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
vprintf_like_t esp_log_set_vprintf(vprintf_like_t func);
# 91 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 106 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
char* esp_log_system_timestamp(void);
# 116 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 126 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));



# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log_internal.h" 1
# 19 "/home/dieter/Development/esp-idf/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 131 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2
# 19 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
       



# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
       


# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 1
# 23 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 2
# 18 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h" 2
# 54 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
typedef enum {
    ESP_OTA_IMG_NEW = 0x0U,
    ESP_OTA_IMG_PENDING_VERIFY = 0x1U,
    ESP_OTA_IMG_VALID = 0x2U,
    ESP_OTA_IMG_INVALID = 0x3U,
    ESP_OTA_IMG_ABORTED = 0x4U,
    ESP_OTA_IMG_UNDEFINED = 0xFFFFFFFFU,
} esp_ota_img_states_t;



typedef struct {
    uint32_t ota_seq;
    uint8_t seq_label[20];
    uint32_t ota_state;
    uint32_t crc;
} esp_ota_select_entry_t;


typedef struct {
    uint32_t offset;
    uint32_t size;
} esp_partition_pos_t;




typedef struct {
    uint16_t magic;
    uint8_t type;
    uint8_t subtype;
    esp_partition_pos_t pos;
    uint8_t label[16];
    uint32_t flags;
} esp_partition_info_t;
# 98 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
esp_err_t esp_partition_table_verify(const esp_partition_info_t *partition_table, 
# 98 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h" 3 4
                                                                                 _Bool 
# 98 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
                                                                                      log_errors, int *num_partitions);
# 109 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"

# 109 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h" 3 4
_Bool 
# 109 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
    esp_partition_main_flash_region_safe(size_t addr, size_t size);
# 19 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h" 2
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_app_format.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_app_format.h"
       





typedef enum {
    ESP_CHIP_ID_ESP32 = 0x0000,
    ESP_CHIP_ID_INVALID = 0xFFFF
} __attribute__((packed)) esp_chip_id_t;


_Static_assert(sizeof(esp_chip_id_t) == 2, "esp_chip_id_t should be 16 bit");





typedef enum {
    ESP_IMAGE_SPI_MODE_QIO,
    ESP_IMAGE_SPI_MODE_QOUT,
    ESP_IMAGE_SPI_MODE_DIO,
    ESP_IMAGE_SPI_MODE_DOUT,
    ESP_IMAGE_SPI_MODE_FAST_READ,
    ESP_IMAGE_SPI_MODE_SLOW_READ
} esp_image_spi_mode_t;




typedef enum {
    ESP_IMAGE_SPI_SPEED_40M,
    ESP_IMAGE_SPI_SPEED_26M,
    ESP_IMAGE_SPI_SPEED_20M,
    ESP_IMAGE_SPI_SPEED_80M = 0xF
} esp_image_spi_freq_t;




typedef enum {
    ESP_IMAGE_FLASH_SIZE_1MB = 0,
    ESP_IMAGE_FLASH_SIZE_2MB,
    ESP_IMAGE_FLASH_SIZE_4MB,
    ESP_IMAGE_FLASH_SIZE_8MB,
    ESP_IMAGE_FLASH_SIZE_16MB,
    ESP_IMAGE_FLASH_SIZE_MAX
} esp_image_flash_size_t;






typedef struct {
    uint8_t magic;
    uint8_t segment_count;
    uint8_t spi_mode;
    uint8_t spi_speed: 4;
    uint8_t spi_size: 4;
    uint32_t entry_addr;
    uint8_t wp_pin;


    uint8_t spi_pin_drv[3];
    esp_chip_id_t chip_id;
    uint8_t min_chip_rev;
    uint8_t reserved[8];
    uint8_t hash_appended;




} __attribute__((packed)) esp_image_header_t;


_Static_assert(sizeof(esp_image_header_t) == 24, "binary image header should be 24 bytes");






typedef struct {
    uint32_t load_addr;
    uint32_t data_len;
} esp_image_segment_header_t;
# 109 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_app_format.h"
typedef struct {
    uint32_t magic_word;
    uint32_t secure_version;
    uint32_t reserv1[2];
    char version[32];
    char project_name[32];
    char time[16];
    char date[16];
    char idf_ver[32];
    uint8_t app_elf_sha256[32];
    uint32_t reserv2[20];
} esp_app_desc_t;


_Static_assert(sizeof(esp_app_desc_t) == 256, "esp_app_desc_t should be 256 bytes");
# 20 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h" 2
# 36 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
typedef struct {
  uint32_t start_addr;
  esp_image_header_t image;
  esp_image_segment_header_t segments[16];
  uint32_t segment_data[16];
  uint32_t image_len;
  uint8_t image_digest[32];
} esp_image_metadata_t;

typedef enum {
    ESP_IMAGE_VERIFY,
    ESP_IMAGE_VERIFY_SILENT,




} esp_image_load_mode_t;

typedef struct {
    esp_partition_pos_t partition;
    uint16_t reboot_counter;
    uint16_t reserve;



    uint32_t crc;
} rtc_retain_mem_t;
# 107 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_verify(esp_image_load_mode_t mode, const esp_partition_pos_t *part, esp_image_metadata_t *data);
# 133 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
esp_err_t bootloader_load_image(const esp_partition_pos_t *part, esp_image_metadata_t *data);
# 151 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
esp_err_t bootloader_load_image_no_verify(const esp_partition_pos_t *part, esp_image_metadata_t *data);
# 161 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_verify_bootloader(uint32_t *length);
# 170 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_verify_bootloader_data(esp_image_metadata_t *data);


typedef struct {
    uint32_t drom_addr;
    uint32_t drom_load_addr;
    uint32_t drom_size;
    uint32_t irom_addr;
    uint32_t irom_load_addr;
    uint32_t irom_size;
} esp_image_flash_mapping_t;
# 20 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
       



# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h"
       
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/efuse_reg.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/efuse_reg.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2


# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h"
       
# 24 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 19 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/efuse_reg.h" 2
# 16 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 2
# 19 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 2
# 47 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
static inline 
# 47 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 3 4
             _Bool 
# 47 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
                  esp_secure_boot_enabled(void)
{

    return ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 3 4
          ((
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
          "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 3 4
          ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h", 50, __func__, 
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
          "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))"
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h" 3 4
          ))
# 50 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
          ; } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x018))); }) & ((1UL << (4)));



}
# 74 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_generate_digest(void);
# 101 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_permanently_enable(void);
# 115 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length);
# 126 "/home/dieter/Development/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
typedef struct {
    uint32_t version;
    uint8_t signature[64];
} esp_secure_boot_sig_block_t;

esp_err_t esp_secure_boot_verify_signature_block(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest);




typedef struct {
    uint8_t iv[128];
    uint8_t digest[64];
} esp_secure_boot_iv_digest_t;
# 21 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h" 1
# 33 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h" 1
# 31 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h" 1
# 3292 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h" 1
# 37 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 1 3 4
# 34 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 1 3 4
# 194 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/limits.h" 1 3 4
# 195 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 2 3 4
# 8 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 2 3 4
# 38 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h" 2
# 696 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 3293 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h" 2
# 32 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h" 2
# 97 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/esp_mem.h" 1
# 15 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/esp_mem.h"
       



void *esp_mbedtls_mem_calloc(size_t n, size_t size);
void esp_mbedtls_mem_free(void *ptr);
# 98 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h" 2
# 2332 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h" 1
# 2333 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/mbedtls/esp_config.h" 2
# 34 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h" 2


# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h" 2
# 69 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/sha256_alt.h" 1
# 32 "/home/dieter/Development/esp-idf/components/mbedtls/port/include/sha256_alt.h"
typedef enum {
    ESP_MBEDTLS_SHA256_UNUSED,
    ESP_MBEDTLS_SHA256_HARDWARE,
    ESP_MBEDTLS_SHA256_SOFTWARE,
} esp_mbedtls_sha256_mode;




typedef struct
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
    esp_mbedtls_sha256_mode mode;
}
mbedtls_sha256_context;
# 70 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h" 2







void mbedtls_sha256_init( mbedtls_sha256_context *ctx );
# 86 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
void mbedtls_sha256_free( mbedtls_sha256_context *ctx );







void mbedtls_sha256_clone( mbedtls_sha256_context *dst,
                           const mbedtls_sha256_context *src );
# 108 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_sha256_starts_ret( mbedtls_sha256_context *ctx, int is224 );
# 123 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_sha256_update_ret( mbedtls_sha256_context *ctx,
                               const unsigned char *input,
                               size_t ilen );
# 139 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_sha256_finish_ret( mbedtls_sha256_context *ctx,
                               unsigned char output[32] );
# 154 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_internal_sha256_process( mbedtls_sha256_context *ctx,
                                     const unsigned char data[64] );
# 173 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
 void mbedtls_sha256_starts( mbedtls_sha256_context *ctx,
                                               int is224 );
# 188 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
 void mbedtls_sha256_update( mbedtls_sha256_context *ctx,
                                               const unsigned char *input,
                                               size_t ilen );
# 203 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
 void mbedtls_sha256_finish( mbedtls_sha256_context *ctx,
                                               unsigned char output[32] );
# 217 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
 void mbedtls_sha256_process( mbedtls_sha256_context *ctx,
                                                const unsigned char data[64] );
# 241 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_sha256_ret( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[32],
                        int is224 );
# 273 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
 void mbedtls_sha256( const unsigned char *input,
                                        size_t ilen,
                                        unsigned char output[32],
                                        int is224 );
# 289 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
int mbedtls_sha256_self_test( int verbose );
# 22 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h" 1
# 33 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h" 1
# 33 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 34 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h" 2


# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h" 1
# 33 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 34 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h" 2
# 172 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    typedef int32_t mbedtls_mpi_sint;
    typedef uint32_t mbedtls_mpi_uint;

        typedef uint64_t mbedtls_t_udbl;
# 187 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
typedef struct mbedtls_mpi
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
# 203 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
void mbedtls_mpi_init( mbedtls_mpi *X );
# 212 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
void mbedtls_mpi_free( mbedtls_mpi *X );
# 227 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs );
# 244 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs );
# 259 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y );







void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y );
# 293 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign );
# 318 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char assign );
# 330 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z );
# 342 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos );
# 359 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val );
# 373 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X );
# 387 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X );
# 402 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_size( const mbedtls_mpi *X );
# 414 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s );
# 438 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen );
# 463 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin );
# 480 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X,
                            int radix, FILE *fout );
# 496 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf,
                             size_t buflen );
# 513 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf,
                              size_t buflen );
# 526 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count );
# 538 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count );
# 550 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 562 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 574 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z );
# 587 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 602 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 616 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 630 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 644 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
# 659 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
# 674 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 690 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_uint b );
# 711 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 732 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
# 752 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
# 771 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
# 800 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *E, const mbedtls_mpi *N,
                         mbedtls_mpi *_RR );
# 821 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 836 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A,
                     const mbedtls_mpi *B );
# 855 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *N );
# 883 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
 int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                          int (*f_rng)(void *, unsigned char *, size_t),
                          void *p_rng );
# 916 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_is_prime_ext( const mbedtls_mpi *X, int rounds,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng );






typedef enum {
    MBEDTLS_MPI_GEN_PRIME_FLAG_DH = 0x0001,
    MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR = 0x0002,
} mbedtls_mpi_gen_prime_flag_t;
# 949 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int flags,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng );
# 963 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_self_test( int verbose );
# 37 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h" 2
# 134 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;




typedef struct mbedtls_asn1_bitstring
{
    size_t len;
    unsigned char unused_bits;
    unsigned char *p;
}
mbedtls_asn1_bitstring;




typedef struct mbedtls_asn1_sequence
{
    mbedtls_asn1_buf buf;
    struct mbedtls_asn1_sequence *next;
}
mbedtls_asn1_sequence;




typedef struct mbedtls_asn1_named_data
{
    mbedtls_asn1_buf oid;
    mbedtls_asn1_buf val;
    struct mbedtls_asn1_named_data *next;
    unsigned char next_merged;
}
mbedtls_asn1_named_data;
# 187 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_len( unsigned char **p,
                  const unsigned char *end,
                  size_t *len );
# 203 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_tag( unsigned char **p,
                  const unsigned char *end,
                  size_t *len, int tag );
# 217 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bool( unsigned char **p,
                   const unsigned char *end,
                   int *val );
# 231 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_int( unsigned char **p,
                  const unsigned char *end,
                  int *val );
# 245 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                        mbedtls_asn1_bitstring *bs);
# 259 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring_null( unsigned char **p, const unsigned char *end,
                             size_t *len );
# 273 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_sequence_of( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_asn1_sequence *cur,
                          int tag);
# 289 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_mpi( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_mpi *X );
# 306 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_asn1_buf *alg, mbedtls_asn1_buf *params );
# 322 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg );
# 336 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len );






void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *entry );







void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head );
# 34 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h" 2
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h" 1
# 34 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h" 1
# 30 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 31 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h" 2
# 58 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
} mbedtls_md_type_t;
# 80 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
typedef struct mbedtls_md_info_t mbedtls_md_info_t;




typedef struct mbedtls_md_context_t
{

    const mbedtls_md_info_t *md_info;


    void *md_ctx;


    void *hmac_ctx;
} mbedtls_md_context_t;
# 106 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
const int *mbedtls_md_list( void );
# 117 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
# 128 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );
# 138 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
void mbedtls_md_init( mbedtls_md_context_t *ctx );
# 153 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
void mbedtls_md_free( mbedtls_md_context_t *ctx );
# 179 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
# 202 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac );
# 223 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
# 235 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
# 246 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
# 257 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
# 272 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
# 290 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
# 310 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
# 330 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
# 351 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path,
                     unsigned char *output );
# 373 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
# 395 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
# 416 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
# 433 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
# 457 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );


int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
# 35 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h" 2


# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h" 1
# 100 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
typedef struct mbedtls_rsa_context
{
    int ver;
    size_t len;

    mbedtls_mpi N;
    mbedtls_mpi E;

    mbedtls_mpi D;
    mbedtls_mpi P;
    mbedtls_mpi Q;

    mbedtls_mpi DP;
    mbedtls_mpi DQ;
    mbedtls_mpi QP;

    mbedtls_mpi RN;

    mbedtls_mpi RP;
    mbedtls_mpi RQ;

    mbedtls_mpi Vi;
    mbedtls_mpi Vf;

    int padding;


    int hash_id;






}
mbedtls_rsa_context;
# 168 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
                       int padding,
                       int hash_id );
# 201 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_import( mbedtls_rsa_context *ctx,
                        const mbedtls_mpi *N,
                        const mbedtls_mpi *P, const mbedtls_mpi *Q,
                        const mbedtls_mpi *D, const mbedtls_mpi *E );
# 240 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_import_raw( mbedtls_rsa_context *ctx,
                            unsigned char const *N, size_t N_len,
                            unsigned char const *P, size_t P_len,
                            unsigned char const *Q, size_t Q_len,
                            unsigned char const *D, size_t D_len,
                            unsigned char const *E, size_t E_len );
# 279 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_complete( mbedtls_rsa_context *ctx );
# 321 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_export( const mbedtls_rsa_context *ctx,
                        mbedtls_mpi *N, mbedtls_mpi *P, mbedtls_mpi *Q,
                        mbedtls_mpi *D, mbedtls_mpi *E );
# 372 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_export_raw( const mbedtls_rsa_context *ctx,
                            unsigned char *N, size_t N_len,
                            unsigned char *P, size_t P_len,
                            unsigned char *Q, size_t Q_len,
                            unsigned char *D, size_t D_len,
                            unsigned char *E, size_t E_len );
# 398 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_export_crt( const mbedtls_rsa_context *ctx,
                            mbedtls_mpi *DP, mbedtls_mpi *DQ, mbedtls_mpi *QP );
# 410 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding,
                              int hash_id );
# 421 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
size_t mbedtls_rsa_get_len( const mbedtls_rsa_context *ctx );
# 441 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         unsigned int nbits, int exponent );
# 460 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx );
# 498 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx );
# 511 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub,
                                const mbedtls_rsa_context *prv );
# 533 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output );
# 568 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output );
# 612 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output );
# 652 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output );
# 696 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output );
# 749 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len );
# 799 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len );
# 853 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len );
# 912 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig );
# 959 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig );
# 1020 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig );
# 1073 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig );
# 1119 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig );
# 1176 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig );
# 1224 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig );
# 1244 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src );
# 1253 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_free( mbedtls_rsa_context *ctx );
# 1263 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_self_test( int verbose );
# 38 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h" 2



# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h" 1
# 77 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef enum
{
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_CURVE448,
} mbedtls_ecp_group_id;
# 105 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef struct mbedtls_ecp_curve_info
{
    mbedtls_ecp_group_id grp_id;
    uint16_t tls_id;
    uint16_t bit_size;
    const char *name;
} mbedtls_ecp_curve_info;
# 124 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef struct mbedtls_ecp_point
{
    mbedtls_mpi X;
    mbedtls_mpi Y;
    mbedtls_mpi Z;
}
mbedtls_ecp_point;
# 173 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef struct mbedtls_ecp_group
{
    mbedtls_ecp_group_id id;
    mbedtls_mpi P;
    mbedtls_mpi A;

    mbedtls_mpi B;

    mbedtls_ecp_point G;
    mbedtls_mpi N;
    size_t pbits;
    size_t nbits;


    unsigned int h;
    int (*modp)(mbedtls_mpi *);

    int (*t_pre)(mbedtls_ecp_point *, void *);
    int (*t_post)(mbedtls_ecp_point *, void *);
    void *t_data;
    mbedtls_ecp_point *T;
    size_t T_size;
}
mbedtls_ecp_group;
# 320 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef void mbedtls_ecp_restart_ctx;
# 332 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
typedef struct mbedtls_ecp_keypair
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
}
mbedtls_ecp_keypair;
# 427 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void );
# 437 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void );
# 448 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id );
# 459 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id );
# 470 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name );






void mbedtls_ecp_point_init( mbedtls_ecp_point *pt );
# 488 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
void mbedtls_ecp_group_init( mbedtls_ecp_group *grp );






void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key );






void mbedtls_ecp_point_free( mbedtls_ecp_point *pt );
# 511 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
void mbedtls_ecp_group_free( mbedtls_ecp_group *grp );
# 520 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key );
# 552 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q );
# 565 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst,
                            const mbedtls_ecp_group *src );
# 577 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt );
# 588 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt );
# 602 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q );
# 617 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y );
# 640 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *P,
                            int format, size_t *olen,
                            unsigned char *buf, size_t buflen );
# 666 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *P,
                                   const unsigned char *buf, size_t ilen );
# 688 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point *pt,
                                const unsigned char **buf, size_t len );
# 714 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp,
                                 const mbedtls_ecp_point *pt,
                                 int format, size_t *olen,
                                 unsigned char *buf, size_t blen );
# 736 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id );
# 755 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp,
                                const unsigned char **buf, size_t len );
# 776 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_read_group_id( mbedtls_ecp_group_id *grp,
                                   const unsigned char **buf,
                                   size_t len );
# 797 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp,
                                 size_t *olen,
                                 unsigned char *buf, size_t blen );
# 834 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 868 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_mul_restartable( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_ecp_restart_ctx *rs_ctx );
# 902 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q );
# 940 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_muladd_restartable(
             mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q,
             mbedtls_ecp_restart_ctx *rs_ctx );
# 973 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp,
                              const mbedtls_ecp_point *pt );
# 995 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp,
                               const mbedtls_mpi *d );
# 1013 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_privkey( const mbedtls_ecp_group *grp,
                     mbedtls_mpi *d,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 1045 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                                  const mbedtls_ecp_point *G,
                                  mbedtls_mpi *d, mbedtls_ecp_point *Q,
                                  int (*f_rng)(void *, unsigned char *, size_t),
                                  void *p_rng );
# 1074 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp, mbedtls_mpi *d,
                             mbedtls_ecp_point *Q,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng );
# 1092 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
# 1113 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub,
                                const mbedtls_ecp_keypair *prv );
# 1124 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_self_test( int verbose );
# 42 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h" 2



# 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h" 1
# 75 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
typedef mbedtls_ecp_keypair mbedtls_ecdsa_context;
# 119 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
typedef void mbedtls_ecdsa_restart_ctx;
# 159 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_sign( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 199 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_sign_det( mbedtls_ecp_group *grp, mbedtls_mpi *r,
                            mbedtls_mpi *s, const mbedtls_mpi *d,
                            const unsigned char *buf, size_t blen,
                            mbedtls_md_type_t md_alg );
# 237 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_verify( mbedtls_ecp_group *grp,
                          const unsigned char *buf, size_t blen,
                          const mbedtls_ecp_point *Q, const mbedtls_mpi *r,
                          const mbedtls_mpi *s);
# 289 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_write_signature( mbedtls_ecdsa_context *ctx,
                                   mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng );
# 335 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_write_signature_restartable( mbedtls_ecdsa_context *ctx,
                           mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           mbedtls_ecdsa_restart_ctx *rs_ctx );
# 393 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_write_signature_det( mbedtls_ecdsa_context *ctx,
                               const unsigned char *hash, size_t hlen,
                               unsigned char *sig, size_t *slen,
                               mbedtls_md_type_t md_alg ) ;
# 428 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_read_signature( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen );
# 463 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_read_signature_restartable( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen,
                          mbedtls_ecdsa_restart_ctx *rs_ctx );
# 484 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_genkey( mbedtls_ecdsa_context *ctx, mbedtls_ecp_group_id gid,
                  int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 502 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_from_keypair( mbedtls_ecdsa_context *ctx,
                                const mbedtls_ecp_keypair *key );







void mbedtls_ecdsa_init( mbedtls_ecdsa_context *ctx );
# 520 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
void mbedtls_ecdsa_free( mbedtls_ecdsa_context *ctx );
# 46 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h" 2
# 78 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
typedef enum {
    MBEDTLS_PK_NONE=0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
} mbedtls_pk_type_t;





typedef struct mbedtls_pk_rsassa_pss_options
{
    mbedtls_md_type_t mgf1_hash_id;
    int expected_salt_len;

} mbedtls_pk_rsassa_pss_options;




typedef enum
{
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
} mbedtls_pk_debug_type;




typedef struct mbedtls_pk_debug_item
{
    mbedtls_pk_debug_type type;
    const char *name;
    void *value;
} mbedtls_pk_debug_item;







typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;




typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
# 147 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
typedef void mbedtls_pk_restart_ctx;
# 157 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
# 170 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_ecp_keypair *mbedtls_pk_ec( const mbedtls_pk_context pk )
{
    return( (mbedtls_ecp_keypair *) (pk).pk_ctx );
}






typedef int (*mbedtls_pk_rsa_alt_decrypt_func)( void *ctx, int mode, size_t *olen,
                    const unsigned char *input, unsigned char *output,
                    size_t output_max_len );
typedef int (*mbedtls_pk_rsa_alt_sign_func)( void *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
                    int mode, mbedtls_md_type_t md_alg, unsigned int hashlen,
                    const unsigned char *hash, unsigned char *sig );
typedef size_t (*mbedtls_pk_rsa_alt_key_len_func)( void *ctx );
# 197 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
const mbedtls_pk_info_t *mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type );







void mbedtls_pk_init( mbedtls_pk_context *ctx );







void mbedtls_pk_free( mbedtls_pk_context *ctx );
# 248 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info );
# 266 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_setup_rsa_alt( mbedtls_pk_context *ctx, void * key,
                         mbedtls_pk_rsa_alt_decrypt_func decrypt_func,
                         mbedtls_pk_rsa_alt_sign_func sign_func,
                         mbedtls_pk_rsa_alt_key_len_func key_len_func );
# 279 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );
# 288 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
# 305 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type );
# 331 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len );
# 355 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify_restartable( mbedtls_pk_context *ctx,
               mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len,
               mbedtls_pk_restart_ctx *rs_ctx );
# 390 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len );
# 420 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_sign( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 448 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_sign_restartable( mbedtls_pk_context *ctx,
             mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_pk_restart_ctx *rs_ctx );
# 472 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_decrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 493 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_encrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 506 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_check_pair( const mbedtls_pk_context *pub, const mbedtls_pk_context *prv );
# 516 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_debug( const mbedtls_pk_context *ctx, mbedtls_pk_debug_item *items );
# 525 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
const char * mbedtls_pk_get_name( const mbedtls_pk_context *ctx );
# 535 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
mbedtls_pk_type_t mbedtls_pk_get_type( const mbedtls_pk_context *ctx );
# 567 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );
# 593 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen );
# 618 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_keyfile( mbedtls_pk_context *ctx,
                      const char *path, const char *password );
# 638 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_public_keyfile( mbedtls_pk_context *ctx, const char *path );
# 656 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_key_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 671 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 684 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 696 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_key_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 716 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );
# 731 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey( unsigned char **p, unsigned char *start,
                     const mbedtls_pk_context *key );







int mbedtls_pk_load_file( const char *path, unsigned char **buf, size_t *n );
# 35 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h" 2
# 189 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
typedef mbedtls_asn1_buf mbedtls_x509_buf;




typedef mbedtls_asn1_bitstring mbedtls_x509_bitstring;





typedef mbedtls_asn1_named_data mbedtls_x509_name;




typedef mbedtls_asn1_sequence mbedtls_x509_sequence;


typedef struct mbedtls_x509_time
{
    int year, mon, day;
    int hour, min, sec;
}
mbedtls_x509_time;
# 229 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_dn_gets( char *buf, size_t size, const mbedtls_x509_name *dn );
# 242 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_serial_gets( char *buf, size_t size, const mbedtls_x509_buf *serial );
# 256 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_past( const mbedtls_x509_time *to );
# 270 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_future( const mbedtls_x509_time *from );
# 279 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_self_test( int verbose );







int mbedtls_x509_get_name( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur );
int mbedtls_x509_get_alg_null( unsigned char **p, const unsigned char *end,
                       mbedtls_x509_buf *alg );
int mbedtls_x509_get_alg( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *alg, mbedtls_x509_buf *params );

int mbedtls_x509_get_rsassa_pss_params( const mbedtls_x509_buf *params,
                                mbedtls_md_type_t *md_alg, mbedtls_md_type_t *mgf_md,
                                int *salt_len );

int mbedtls_x509_get_sig( unsigned char **p, const unsigned char *end, mbedtls_x509_buf *sig );
int mbedtls_x509_get_sig_alg( const mbedtls_x509_buf *sig_oid, const mbedtls_x509_buf *sig_params,
                      mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg,
                      void **sig_opts );
int mbedtls_x509_get_time( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_time *t );
int mbedtls_x509_get_serial( unsigned char **p, const unsigned char *end,
                     mbedtls_x509_buf *serial );
int mbedtls_x509_get_ext( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *ext, int tag );
int mbedtls_x509_sig_alg_gets( char *buf, size_t size, const mbedtls_x509_buf *sig_oid,
                       mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                       const void *sig_opts );
int mbedtls_x509_key_size_helper( char *buf, size_t buf_size, const char *name );
int mbedtls_x509_string_to_names( mbedtls_asn1_named_data **head, const char *name );
int mbedtls_x509_set_extension( mbedtls_asn1_named_data **head, const char *oid, size_t oid_len,
                        int critical, const unsigned char *val,
                        size_t val_len );
int mbedtls_x509_write_extensions( unsigned char **p, unsigned char *start,
                           mbedtls_asn1_named_data *first );
int mbedtls_x509_write_names( unsigned char **p, unsigned char *start,
                      mbedtls_asn1_named_data *first );
int mbedtls_x509_write_sig( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len,
                    unsigned char *sig, size_t size );
# 23 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 2

static const char *TAG = "secure_boot";

extern const uint8_t signature_verification_key_start[] asm("_binary_signature_verification_key_bin_start");
extern const uint8_t signature_verification_key_end[] asm("_binary_signature_verification_key_bin_end");





esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length)
{
    uint8_t digest[32];
    const uint8_t *data;
    const esp_secure_boot_sig_block_t *sigblock;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "verifying signature src_addr 0x%x length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "verifying signature src_addr 0x%x length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "verifying signature src_addr 0x%x length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "verifying signature src_addr 0x%x length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "verifying signature src_addr 0x%x length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length); } } while(0); } while(0);

    data = bootloader_mmap(src_addr, length + sizeof(esp_secure_boot_sig_block_t));
    if (data == 
# 42 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c" 3 4
               ((void *)0)
# 42 "/home/dieter/Development/esp-idf/components/bootloader_support/src/idf/secure_boot_signatures.c"
                   ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length + sizeof(esp_secure_boot_sig_block_t)); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length + sizeof(esp_secure_boot_sig_block_t)); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length + sizeof(esp_secure_boot_sig_block_t)); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length + sizeof(esp_secure_boot_sig_block_t)); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, length + sizeof(esp_secure_boot_sig_block_t)); } } while(0); } while(0);
        return -1;
    }


    mbedtls_sha256_ret(data, length, digest, 0);


    sigblock = (const esp_secure_boot_sig_block_t *)(data + length);
    esp_err_t err = esp_secure_boot_verify_signature_block(sigblock, digest);
    bootloader_munmap(data);
    return err;
}

esp_err_t esp_secure_boot_verify_signature_block(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest)
{




    ptrdiff_t keylen;

    keylen = signature_verification_key_end - signature_verification_key_start;
    if (keylen != 64) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Embedded public verification key has wrong length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Embedded public verification key has wrong length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Embedded public verification key has wrong length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Embedded public verification key has wrong length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Embedded public verification key has wrong length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } } while(0); } while(0);
        return -1;
    }

    if (sig_block->version != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image has invalid signature version field 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, sig_block->version); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image has invalid signature version field 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, sig_block->version); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image has invalid signature version field 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, sig_block->version); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image has invalid signature version field 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, sig_block->version); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image has invalid signature version field 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, sig_block->version); } } while(0); } while(0);
        return -1;
    }

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Verifying secure boot signature" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Verifying secure boot signature" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Verifying secure boot signature" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Verifying secure boot signature" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Verifying secure boot signature" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);

    int ret;
    mbedtls_mpi r, s;

    mbedtls_mpi_init(&r);
    mbedtls_mpi_init(&s);



    ret = mbedtls_mpi_read_binary(&r, &sig_block->signature[0], 32);
    if (ret != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed mbedtls_mpi_read_binary(1), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed mbedtls_mpi_read_binary(1), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed mbedtls_mpi_read_binary(1), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed mbedtls_mpi_read_binary(1), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed mbedtls_mpi_read_binary(1), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } } while(0); } while(0);
        return -1;
    }

    ret = mbedtls_mpi_read_binary(&s, &sig_block->signature[32], 32);
    if (ret != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed mbedtls_mpi_read_binary(2), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed mbedtls_mpi_read_binary(2), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed mbedtls_mpi_read_binary(2), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed mbedtls_mpi_read_binary(2), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed mbedtls_mpi_read_binary(2), err:%d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } } while(0); } while(0);
        mbedtls_mpi_free(&r);
        return -1;
    }


    mbedtls_ecdsa_context ecdsa_context;
    mbedtls_ecdsa_init(&ecdsa_context);

    mbedtls_ecp_group_load(&ecdsa_context.grp, MBEDTLS_ECP_DP_SECP256R1);
    size_t plen = mbedtls_mpi_size(&ecdsa_context.grp.P);
    if (keylen != 2 * plen) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Incorrect ECDSA key length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Incorrect ECDSA key length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Incorrect ECDSA key length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Incorrect ECDSA key length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Incorrect ECDSA key length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, keylen); } } while(0); } while(0);
        ret = -1;
        goto cleanup;
    }


    do { if( ( ret = (mbedtls_mpi_read_binary(&ecdsa_context.Q.X, signature_verification_key_start, plen)) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_binary(&ecdsa_context.Q.Y, signature_verification_key_start + plen, plen)) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset(&ecdsa_context.Q.Z, 1)) ) != 0 ) goto cleanup; } while( 0 );

    ret = mbedtls_ecdsa_verify(&ecdsa_context.grp, image_digest, 32, &ecdsa_context.Q, &r, &s);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Verification result %d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Verification result %d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Verification result %d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Verification result %d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Verification result %d" "\033[0m" "\n", esp_log_timestamp(), TAG, ret); } } while(0); } while(0);

cleanup:
    mbedtls_mpi_free(&r);
    mbedtls_mpi_free(&s);
    mbedtls_ecdsa_free(&ecdsa_context);
    return ret == 0 ? 0 : (0x2000 + 2);

}
