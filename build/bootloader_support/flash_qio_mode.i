# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
# 1 "/home/dieter/Development/ProjektEi/build/bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 15 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
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
# 16 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/flash_qio_mode.h" 1
# 14 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/flash_qio_mode.h"
       
# 25 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/flash_qio_mode.h"

# 25 "/home/dieter/Development/esp-idf/components/bootloader_support/include_bootloader/flash_qio_mode.h"
void bootloader_enable_qio_mode(void);







uint32_t bootloader_read_flash_id(void);
# 17 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 1
# 19 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 3 4

# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2
# 1 "/home/dieter/Development/ProjektEi/build/include/sdkconfig.h" 1




       
# 21 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdbool.h" 1 3 4
# 20 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 1 3 4
# 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/ieeefp.h" 1 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4
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
# 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4




# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 17 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4

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




typedef char * __va_list;
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
# 19 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 1 3 4
# 45 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 2 3 4
# 20 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h" 2 3 4
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



# 21 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 2
# 63 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"

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
# 18 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 1
# 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
       


# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 1 3 4
# 36 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4
# 61 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 1 3 4
# 28 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/types.h" 3 4

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
# 19 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h" 1
# 21 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/esp_attr.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h" 2
# 132 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
typedef enum {
    ESP_ROM_SPIFLASH_QIO_MODE = 0,
    ESP_ROM_SPIFLASH_QOUT_MODE,
    ESP_ROM_SPIFLASH_DIO_MODE,
    ESP_ROM_SPIFLASH_DOUT_MODE,
    ESP_ROM_SPIFLASH_FASTRD_MODE,
    ESP_ROM_SPIFLASH_SLOWRD_MODE
} esp_rom_spiflash_read_mode_t;

typedef enum {
    ESP_ROM_SPIFLASH_RESULT_OK,
    ESP_ROM_SPIFLASH_RESULT_ERR,
    ESP_ROM_SPIFLASH_RESULT_TIMEOUT
} esp_rom_spiflash_result_t;

typedef struct {
    uint32_t device_id;
    uint32_t chip_size;
    uint32_t block_size;
    uint32_t sector_size;
    uint32_t page_size;
    uint32_t status_mask;
} esp_rom_spiflash_chip_t;

typedef struct {
    uint8_t data_length;
    uint8_t read_cmd0;
    uint8_t read_cmd1;
    uint8_t write_cmd;
    uint16_t data_mask;
    uint16_t data;
} esp_rom_spiflash_common_cmd_t;
# 175 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_fix_dummylen(uint8_t spi, uint8_t freqdiv);
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_select_qiomode(uint8_t wp_gpio_num, uint32_t ishspi);
# 206 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_set_drvs(uint8_t wp_gpio_num, uint32_t ishspi, uint8_t *drvs);
# 217 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_select_padsfunc(uint32_t ishspi);
# 230 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_attach(uint32_t ishspi, 
# 230 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h" 3 4
                                             _Bool 
# 230 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
                                                  legacy);
# 244 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_status(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 258 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_statushigh(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_status(esp_rom_spiflash_chip_t *spi, uint32_t status_value);
# 286 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_user_cmd(uint32_t *status, uint8_t cmd);
# 300 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_readmode(esp_rom_spiflash_read_mode_t mode);
# 314 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_clk(uint8_t freqdiv, uint8_t spi);
# 326 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
uint16_t esp_rom_spiflash_common_cmd(esp_rom_spiflash_common_cmd_t *cmd);
# 338 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_unlock(void);
# 350 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_lock(void);
# 372 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_param(uint32_t deviceId, uint32_t chip_size, uint32_t block_size,
                                                        uint32_t sector_size, uint32_t page_size, uint32_t status_mask);
# 385 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_chip(void);
# 398 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_block(uint32_t block_num);
# 411 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_sector(uint32_t sector_num);
# 425 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_area(uint32_t start_addr, uint32_t area_len);
# 441 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write(uint32_t dest_addr, const uint32_t *src, int32_t len);
# 457 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read(uint32_t src_addr, uint32_t *dest, int32_t len);
# 467 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_enable(void);
# 481 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_prepare_encrypted_data(uint32_t flash_addr, uint32_t *data);
# 491 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_disable(void);
# 511 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_encrypted(uint32_t flash_addr, uint32_t *data, uint32_t len);
# 524 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_wait_idle(esp_rom_spiflash_chip_t *spi);
# 543 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/spi_flash.h"
void esp_rom_spiflash_select_qio_pins(uint8_t wp_gpio_num, uint32_t spiconfig);




extern esp_rom_spiflash_chip_t g_rom_flashchip;
# 21 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h" 1
# 41 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h"
void ets_efuse_read_op(void);
# 50 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h"
void ets_efuse_program_op(void);
# 60 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h"
uint32_t ets_efuse_get_8M_clock(void);
# 72 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h"
uint32_t ets_efuse_get_spiconfig(void);
# 107 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/efuse.h"
unsigned char esp_crc8(unsigned char const *p, unsigned int len);
# 22 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2




# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_struct.h"
typedef volatile struct spi_dev_s {
    union {
        struct {
            uint32_t reserved0: 16;
            uint32_t flash_per: 1;
            uint32_t flash_pes: 1;
            uint32_t usr: 1;
            uint32_t flash_hpm: 1;
            uint32_t flash_res: 1;
            uint32_t flash_dp: 1;
            uint32_t flash_ce: 1;
            uint32_t flash_be: 1;
            uint32_t flash_se: 1;
            uint32_t flash_pp: 1;
            uint32_t flash_wrsr: 1;
            uint32_t flash_rdsr: 1;
            uint32_t flash_rdid: 1;
            uint32_t flash_wrdi: 1;
            uint32_t flash_wren: 1;
            uint32_t flash_read: 1;
        };
        uint32_t val;
    } cmd;
    uint32_t addr;
    union {
        struct {
            uint32_t reserved0: 10;
            uint32_t fcs_crc_en: 1;
            uint32_t tx_crc_en: 1;
            uint32_t wait_flash_idle_en: 1;
            uint32_t fastrd_mode: 1;
            uint32_t fread_dual: 1;
            uint32_t resandres: 1;
            uint32_t reserved16: 4;
            uint32_t fread_quad: 1;
            uint32_t wp: 1;
            uint32_t wrsr_2b: 1;
            uint32_t fread_dio: 1;
            uint32_t fread_qio: 1;
            uint32_t rd_bit_order: 1;
            uint32_t wr_bit_order: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } ctrl;
    union {
        struct {
            uint32_t reserved0: 16;
            uint32_t cs_hold_delay_res:12;
            uint32_t cs_hold_delay: 4;
        };
        uint32_t val;
    } ctrl1;
    union {
        struct {
            uint32_t status: 16;
            uint32_t wb_mode: 8;
            uint32_t status_ext: 8;
        };
        uint32_t val;
    } rd_status;
    union {
        struct {
            uint32_t setup_time: 4;
            uint32_t hold_time: 4;
            uint32_t ck_out_low_mode: 4;
            uint32_t ck_out_high_mode: 4;
            uint32_t miso_delay_mode: 2;
            uint32_t miso_delay_num: 3;
            uint32_t mosi_delay_mode: 2;
            uint32_t mosi_delay_num: 3;
            uint32_t cs_delay_mode: 2;
            uint32_t cs_delay_num: 4;
        };
        uint32_t val;
    } ctrl2;
    union {
        struct {
            uint32_t clkcnt_l: 6;
            uint32_t clkcnt_h: 6;
            uint32_t clkcnt_n: 6;
            uint32_t clkdiv_pre: 13;
            uint32_t clk_equ_sysclk: 1;
        };
        uint32_t val;
    } clock;
    union {
        struct {
            uint32_t doutdin: 1;
            uint32_t reserved1: 3;
            uint32_t cs_hold: 1;
            uint32_t cs_setup: 1;
            uint32_t ck_i_edge: 1;
            uint32_t ck_out_edge: 1;
            uint32_t reserved8: 2;
            uint32_t rd_byte_order: 1;
            uint32_t wr_byte_order: 1;
            uint32_t fwrite_dual: 1;
            uint32_t fwrite_quad: 1;
            uint32_t fwrite_dio: 1;
            uint32_t fwrite_qio: 1;
            uint32_t sio: 1;
            uint32_t usr_hold_pol: 1;
            uint32_t usr_dout_hold: 1;
            uint32_t usr_din_hold: 1;
            uint32_t usr_dummy_hold: 1;
            uint32_t usr_addr_hold: 1;
            uint32_t usr_cmd_hold: 1;
            uint32_t usr_prep_hold: 1;
            uint32_t usr_miso_highpart: 1;
            uint32_t usr_mosi_highpart: 1;
            uint32_t usr_dummy_idle: 1;
            uint32_t usr_mosi: 1;
            uint32_t usr_miso: 1;
            uint32_t usr_dummy: 1;
            uint32_t usr_addr: 1;
            uint32_t usr_command: 1;
        };
        uint32_t val;
    } user;
    union {
        struct {
            uint32_t usr_dummy_cyclelen: 8;
            uint32_t reserved8: 18;
            uint32_t usr_addr_bitlen: 6;
        };
        uint32_t val;
    } user1;
    union {
        struct {
            uint32_t usr_command_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_command_bitlen: 4;
        };
        uint32_t val;
    } user2;
    union {
        struct {
            uint32_t usr_mosi_dbitlen:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } mosi_dlen;
    union {
        struct {
            uint32_t usr_miso_dbitlen:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } miso_dlen;
    uint32_t slv_wr_status;
    union {
        struct {
            uint32_t cs0_dis: 1;
            uint32_t cs1_dis: 1;
            uint32_t cs2_dis: 1;
            uint32_t reserved3: 2;
            uint32_t ck_dis: 1;
            uint32_t master_cs_pol: 3;
            uint32_t reserved9: 2;
            uint32_t master_ck_sel: 3;
            uint32_t reserved14: 15;
            uint32_t ck_idle_edge: 1;
            uint32_t cs_keep_active: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } pin;
    union {
        struct {
            uint32_t rd_buf_done: 1;
            uint32_t wr_buf_done: 1;
            uint32_t rd_sta_done: 1;
            uint32_t wr_sta_done: 1;
            uint32_t trans_done: 1;
            uint32_t rd_buf_inten: 1;
            uint32_t wr_buf_inten: 1;
            uint32_t rd_sta_inten: 1;
            uint32_t wr_sta_inten: 1;
            uint32_t trans_inten: 1;
            uint32_t cs_i_mode: 2;
            uint32_t reserved12: 5;
            uint32_t last_command: 3;
            uint32_t last_state: 3;
            uint32_t trans_cnt: 4;
            uint32_t cmd_define: 1;
            uint32_t wr_rd_sta_en: 1;
            uint32_t wr_rd_buf_en: 1;
            uint32_t slave_mode: 1;
            uint32_t sync_reset: 1;
        };
        uint32_t val;
    } slave;
    union {
        struct {
            uint32_t rdbuf_dummy_en: 1;
            uint32_t wrbuf_dummy_en: 1;
            uint32_t rdsta_dummy_en: 1;
            uint32_t wrsta_dummy_en: 1;
            uint32_t wr_addr_bitlen: 6;
            uint32_t rd_addr_bitlen: 6;
            uint32_t reserved16: 9;
            uint32_t status_readback: 1;
            uint32_t status_fast_en: 1;
            uint32_t status_bitlen: 5;
        };
        uint32_t val;
    } slave1;
    union {
        struct {
            uint32_t rdsta_dummy_cyclelen: 8;
            uint32_t wrsta_dummy_cyclelen: 8;
            uint32_t rdbuf_dummy_cyclelen: 8;
            uint32_t wrbuf_dummy_cyclelen: 8;
        };
        uint32_t val;
    } slave2;
    union {
        struct {
            uint32_t rdbuf_cmd_value: 8;
            uint32_t wrbuf_cmd_value: 8;
            uint32_t rdsta_cmd_value: 8;
            uint32_t wrsta_cmd_value: 8;
        };
        uint32_t val;
    } slave3;
    union {
        struct {
            uint32_t bit_len: 24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_wrbuf_dlen;
    union {
        struct {
            uint32_t bit_len: 24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_rdbuf_dlen;
    union {
        struct {
            uint32_t req_en: 1;
            uint32_t usr_cmd_4byte: 1;
            uint32_t flash_usr_cmd: 1;
            uint32_t flash_pes_en: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } cache_fctrl;
    union {
        struct {
            uint32_t reserved0: 1;
            uint32_t usr_sram_dio: 1;
            uint32_t usr_sram_qio: 1;
            uint32_t usr_wr_sram_dummy: 1;
            uint32_t usr_rd_sram_dummy: 1;
            uint32_t cache_sram_usr_rcmd: 1;
            uint32_t sram_bytes_len: 8;
            uint32_t sram_dummy_cyclelen: 8;
            uint32_t sram_addr_bitlen: 6;
            uint32_t cache_sram_usr_wcmd: 1;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } cache_sctrl;
    union {
        struct {
            uint32_t dio: 1;
            uint32_t qio: 1;
            uint32_t reserved2: 2;
            uint32_t rst_io: 1;
            uint32_t reserved5:27;
        };
        uint32_t val;
    } sram_cmd;
    union {
        struct {
            uint32_t usr_rd_cmd_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_rd_cmd_bitlen: 4;
        };
        uint32_t val;
    } sram_drd_cmd;
    union {
        struct {
            uint32_t usr_wr_cmd_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_wr_cmd_bitlen: 4;
        };
        uint32_t val;
    } sram_dwr_cmd;
    union {
        struct {
            uint32_t slv_rdata_bit:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_rd_bit;
    uint32_t reserved_68;
    uint32_t reserved_6c;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t reserved_78;
    uint32_t reserved_7c;
    uint32_t data_buf[16];
    uint32_t tx_crc;
    uint32_t reserved_c4;
    uint32_t reserved_c8;
    uint32_t reserved_cc;
    uint32_t reserved_d0;
    uint32_t reserved_d4;
    uint32_t reserved_d8;
    uint32_t reserved_dc;
    uint32_t reserved_e0;
    uint32_t reserved_e4;
    uint32_t reserved_e8;
    uint32_t reserved_ec;
    union {
        struct {
            uint32_t t_pp_time: 12;
            uint32_t reserved12: 4;
            uint32_t t_pp_shift: 4;
            uint32_t reserved20:11;
            uint32_t t_pp_ena: 1;
        };
        uint32_t val;
    } ext0;
    union {
        struct {
            uint32_t t_erase_time: 12;
            uint32_t reserved12: 4;
            uint32_t t_erase_shift: 4;
            uint32_t reserved20: 11;
            uint32_t t_erase_ena: 1;
        };
        uint32_t val;
    } ext1;
    union {
        struct {
            uint32_t st: 3;
            uint32_t reserved3: 29;
        };
        uint32_t val;
    } ext2;
    union {
        struct {
            uint32_t int_hold_ena: 2;
            uint32_t reserved2: 30;
        };
        uint32_t val;
    } ext3;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t in_rst: 1;
            uint32_t out_rst: 1;
            uint32_t ahbm_fifo_rst: 1;
            uint32_t ahbm_rst: 1;
            uint32_t in_loop_test: 1;
            uint32_t out_loop_test: 1;
            uint32_t out_auto_wrback: 1;
            uint32_t out_eof_mode: 1;
            uint32_t outdscr_burst_en: 1;
            uint32_t indscr_burst_en: 1;
            uint32_t out_data_burst_en: 1;
            uint32_t reserved13: 1;
            uint32_t dma_rx_stop: 1;
            uint32_t dma_tx_stop: 1;
            uint32_t dma_continue: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } dma_conf;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } dma_out_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t auto_ret: 1;
            uint32_t reserved21: 7;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } dma_in_link;
    union {
        struct {
            uint32_t rx_en: 1;
            uint32_t tx_en: 1;
            uint32_t reserved2: 30;
        };
        uint32_t val;
    } dma_status;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_ena;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_raw;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_st;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_clr;
    uint32_t dma_in_err_eof_des_addr;
    uint32_t dma_in_suc_eof_des_addr;
    uint32_t dma_inlink_dscr;
    uint32_t dma_inlink_dscr_bf0;
    uint32_t dma_inlink_dscr_bf1;
    uint32_t dma_out_eof_bfr_des_addr;
    uint32_t dma_out_eof_des_addr;
    uint32_t dma_outlink_dscr;
    uint32_t dma_outlink_dscr_bf0;
    uint32_t dma_outlink_dscr_bf1;
    uint32_t dma_rx_status;
    uint32_t dma_tx_status;
    uint32_t reserved_150;
    uint32_t reserved_154;
    uint32_t reserved_158;
    uint32_t reserved_15c;
    uint32_t reserved_160;
    uint32_t reserved_164;
    uint32_t reserved_168;
    uint32_t reserved_16c;
    uint32_t reserved_170;
    uint32_t reserved_174;
    uint32_t reserved_178;
    uint32_t reserved_17c;
    uint32_t reserved_180;
    uint32_t reserved_184;
    uint32_t reserved_188;
    uint32_t reserved_18c;
    uint32_t reserved_190;
    uint32_t reserved_194;
    uint32_t reserved_198;
    uint32_t reserved_19c;
    uint32_t reserved_1a0;
    uint32_t reserved_1a4;
    uint32_t reserved_1a8;
    uint32_t reserved_1ac;
    uint32_t reserved_1b0;
    uint32_t reserved_1b4;
    uint32_t reserved_1b8;
    uint32_t reserved_1bc;
    uint32_t reserved_1c0;
    uint32_t reserved_1c4;
    uint32_t reserved_1c8;
    uint32_t reserved_1cc;
    uint32_t reserved_1d0;
    uint32_t reserved_1d4;
    uint32_t reserved_1d8;
    uint32_t reserved_1dc;
    uint32_t reserved_1e0;
    uint32_t reserved_1e4;
    uint32_t reserved_1e8;
    uint32_t reserved_1ec;
    uint32_t reserved_1f0;
    uint32_t reserved_1f4;
    uint32_t reserved_1f8;
    uint32_t reserved_1fc;
    uint32_t reserved_200;
    uint32_t reserved_204;
    uint32_t reserved_208;
    uint32_t reserved_20c;
    uint32_t reserved_210;
    uint32_t reserved_214;
    uint32_t reserved_218;
    uint32_t reserved_21c;
    uint32_t reserved_220;
    uint32_t reserved_224;
    uint32_t reserved_228;
    uint32_t reserved_22c;
    uint32_t reserved_230;
    uint32_t reserved_234;
    uint32_t reserved_238;
    uint32_t reserved_23c;
    uint32_t reserved_240;
    uint32_t reserved_244;
    uint32_t reserved_248;
    uint32_t reserved_24c;
    uint32_t reserved_250;
    uint32_t reserved_254;
    uint32_t reserved_258;
    uint32_t reserved_25c;
    uint32_t reserved_260;
    uint32_t reserved_264;
    uint32_t reserved_268;
    uint32_t reserved_26c;
    uint32_t reserved_270;
    uint32_t reserved_274;
    uint32_t reserved_278;
    uint32_t reserved_27c;
    uint32_t reserved_280;
    uint32_t reserved_284;
    uint32_t reserved_288;
    uint32_t reserved_28c;
    uint32_t reserved_290;
    uint32_t reserved_294;
    uint32_t reserved_298;
    uint32_t reserved_29c;
    uint32_t reserved_2a0;
    uint32_t reserved_2a4;
    uint32_t reserved_2a8;
    uint32_t reserved_2ac;
    uint32_t reserved_2b0;
    uint32_t reserved_2b4;
    uint32_t reserved_2b8;
    uint32_t reserved_2bc;
    uint32_t reserved_2c0;
    uint32_t reserved_2c4;
    uint32_t reserved_2c8;
    uint32_t reserved_2cc;
    uint32_t reserved_2d0;
    uint32_t reserved_2d4;
    uint32_t reserved_2d8;
    uint32_t reserved_2dc;
    uint32_t reserved_2e0;
    uint32_t reserved_2e4;
    uint32_t reserved_2e8;
    uint32_t reserved_2ec;
    uint32_t reserved_2f0;
    uint32_t reserved_2f4;
    uint32_t reserved_2f8;
    uint32_t reserved_2fc;
    uint32_t reserved_300;
    uint32_t reserved_304;
    uint32_t reserved_308;
    uint32_t reserved_30c;
    uint32_t reserved_310;
    uint32_t reserved_314;
    uint32_t reserved_318;
    uint32_t reserved_31c;
    uint32_t reserved_320;
    uint32_t reserved_324;
    uint32_t reserved_328;
    uint32_t reserved_32c;
    uint32_t reserved_330;
    uint32_t reserved_334;
    uint32_t reserved_338;
    uint32_t reserved_33c;
    uint32_t reserved_340;
    uint32_t reserved_344;
    uint32_t reserved_348;
    uint32_t reserved_34c;
    uint32_t reserved_350;
    uint32_t reserved_354;
    uint32_t reserved_358;
    uint32_t reserved_35c;
    uint32_t reserved_360;
    uint32_t reserved_364;
    uint32_t reserved_368;
    uint32_t reserved_36c;
    uint32_t reserved_370;
    uint32_t reserved_374;
    uint32_t reserved_378;
    uint32_t reserved_37c;
    uint32_t reserved_380;
    uint32_t reserved_384;
    uint32_t reserved_388;
    uint32_t reserved_38c;
    uint32_t reserved_390;
    uint32_t reserved_394;
    uint32_t reserved_398;
    uint32_t reserved_39c;
    uint32_t reserved_3a0;
    uint32_t reserved_3a4;
    uint32_t reserved_3a8;
    uint32_t reserved_3ac;
    uint32_t reserved_3b0;
    uint32_t reserved_3b4;
    uint32_t reserved_3b8;
    uint32_t reserved_3bc;
    uint32_t reserved_3c0;
    uint32_t reserved_3c4;
    uint32_t reserved_3c8;
    uint32_t reserved_3cc;
    uint32_t reserved_3d0;
    uint32_t reserved_3d4;
    uint32_t reserved_3d8;
    uint32_t reserved_3dc;
    uint32_t reserved_3e0;
    uint32_t reserved_3e4;
    uint32_t reserved_3e8;
    uint32_t reserved_3ec;
    uint32_t reserved_3f0;
    uint32_t reserved_3f4;
    uint32_t reserved_3f8;
    union {
        struct {
            uint32_t date: 28;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } date;
} spi_dev_t;
extern spi_dev_t SPI0;
extern spi_dev_t SPI1;
extern spi_dev_t SPI2;
extern spi_dev_t SPI3;
# 27 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_reg.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_reg.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2


# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h"
       
# 24 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 19 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_reg.h" 2
# 28 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2



# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h"
       
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/efuse_reg.h" 1
# 16 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 2
# 32 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 33 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 2
# 54 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
static const char *TAG = "qio_mode";

typedef unsigned (*read_status_fn_t)(void);
typedef void (*write_status_fn_t)(unsigned);

typedef struct __attribute__((packed))
{
    const char *manufacturer;
    uint8_t mfg_id;
    uint16_t flash_id;
    uint16_t id_mask;
    read_status_fn_t read_status_fn;
    write_status_fn_t write_status_fn;
    uint8_t status_qio_bit;
} qio_info_t;


static unsigned read_status_8b_rdsr(void);

static unsigned read_status_8b_rdsr2(void);

static unsigned read_status_16b_rdsr_rdsr2(void);


static void write_status_8b_wrsr(unsigned new_status);

static void write_status_8b_wrsr2(unsigned new_status);

static void write_status_16b_wrsr(unsigned new_status);


static unsigned read_status_8b_xmc25qu64a(void);

static void write_status_8b_xmc25qu64a(unsigned new_status);
# 107 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
const static qio_info_t chip_data[] = {

    { "MXIC", 0xC2, 0x2000, 0xFF00, read_status_8b_rdsr, write_status_8b_wrsr, 6 },
    { "ISSI", 0x9D, 0x4000, 0xCF00, read_status_8b_rdsr, write_status_8b_wrsr, 6 },
    { "WinBond", 0xEF, 0x4000, 0xFF00, read_status_16b_rdsr_rdsr2, write_status_16b_wrsr, 9 },
    { "GD", 0xC8, 0x6000, 0xFF00, read_status_16b_rdsr_rdsr2, write_status_16b_wrsr, 9 },
    { "XM25QU64A", 0x20, 0x3817, 0xFFFF, read_status_8b_xmc25qu64a, write_status_8b_xmc25qu64a, 6 },







    { 
# 121 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
     ((void *)0)
# 121 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
         , 0xFF, 0xFFFF, 0xFFFF, read_status_8b_rdsr2, write_status_8b_wrsr2, 1 },
};



static esp_err_t enable_qio_mode(read_status_fn_t read_status_fn,
                                 write_status_fn_t write_status_fn,
                                 uint8_t status_qio_bit);






static uint32_t execute_flash_command(uint8_t command, uint32_t mosi_data, uint8_t mosi_len, uint8_t miso_len);


extern uint8_t g_rom_spiflash_dummy_len_plus[];
uint32_t bootloader_read_flash_id(void)
{
    uint32_t id = execute_flash_command(0x9F, 0, 0, 24);
    id = ((id & 0xff) << 16) | ((id >> 16) & 0xff) | (id & 0xff00);
    return id;
}
# 186 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
void bootloader_enable_qio_mode(void)
{
    uint32_t raw_flash_id;
    uint8_t mfg_id;
    uint16_t flash_id;
    int i;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Probing for QIO mode enable..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Probing for QIO mode enable..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Probing for QIO mode enable..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Probing for QIO mode enable..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Probing for QIO mode enable..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);

    raw_flash_id = g_rom_flashchip.device_id;
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Raw SPI flash chip id 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, raw_flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Raw SPI flash chip id 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, raw_flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Raw SPI flash chip id 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, raw_flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Raw SPI flash chip id 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, raw_flash_id); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Raw SPI flash chip id 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, raw_flash_id); } } while(0); } while(0);

    mfg_id = (raw_flash_id >> 16) & 0xFF;
    flash_id = raw_flash_id & 0xFFFF;
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Manufacturer ID 0x%02x chip ID 0x%04x" "\033[0m" "\n", esp_log_timestamp(), TAG, mfg_id, flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Manufacturer ID 0x%02x chip ID 0x%04x" "\033[0m" "\n", esp_log_timestamp(), TAG, mfg_id, flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Manufacturer ID 0x%02x chip ID 0x%04x" "\033[0m" "\n", esp_log_timestamp(), TAG, mfg_id, flash_id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Manufacturer ID 0x%02x chip ID 0x%04x" "\033[0m" "\n", esp_log_timestamp(), TAG, mfg_id, flash_id); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Manufacturer ID 0x%02x chip ID 0x%04x" "\033[0m" "\n", esp_log_timestamp(), TAG, mfg_id, flash_id); } } while(0); } while(0);

    for (i = 0; i < (sizeof(chip_data) / sizeof(qio_info_t)) - 1; i++) {
        const qio_info_t *chip = &chip_data[i];
        if (mfg_id == chip->mfg_id && (flash_id & chip->id_mask) == (chip->flash_id & chip->id_mask)) {
            do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Enabling QIO for flash chip %s" "\033[0m" "\n", esp_log_timestamp(), TAG, chip_data[i].manufacturer); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Enabling QIO for flash chip %s" "\033[0m" "\n", esp_log_timestamp(), TAG, chip_data[i].manufacturer); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Enabling QIO for flash chip %s" "\033[0m" "\n", esp_log_timestamp(), TAG, chip_data[i].manufacturer); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Enabling QIO for flash chip %s" "\033[0m" "\n", esp_log_timestamp(), TAG, chip_data[i].manufacturer); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Enabling QIO for flash chip %s" "\033[0m" "\n", esp_log_timestamp(), TAG, chip_data[i].manufacturer); } } while(0); } while(0);
            break;
        }
    }

    if (i == (sizeof(chip_data) / sizeof(qio_info_t)) - 1) {
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Enabling default flash chip QIO" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Enabling default flash chip QIO" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Enabling default flash chip QIO" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Enabling default flash chip QIO" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Enabling default flash chip QIO" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }
    enable_qio_mode(chip_data[i].read_status_fn,
                    chip_data[i].write_status_fn,
                    chip_data[i].status_qio_bit);



}

static esp_err_t enable_qio_mode(read_status_fn_t read_status_fn,
                                 write_status_fn_t write_status_fn,
                                 uint8_t status_qio_bit)
{
    uint32_t status;
    const uint32_t spiconfig = ets_efuse_get_spiconfig();


    if (spiconfig != 0 && spiconfig != 1) {






        uint32_t pkg_ver = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); 
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ((
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c", 237, __func__, 
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))"
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ))
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          ; } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ((
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c", 237, __func__, 
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))"
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c" 3 4
                          ))
# 237 "/home/dieter/Development/esp-idf/components/bootloader_support/src/flash_qio_mode.c"
                          ; } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x00c))); }) >> (9)) & (0x7)); });
        if (7 != 7 &&
                (pkg_ver == 2 ||
                 pkg_ver == 4 ||
                 pkg_ver == 5)) {
            do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Chip is ESP32-D2WD/ESP32-PICOD4 but flash WP pin is different value to internal flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        }
    }


    esp_rom_spiflash_wait_idle(&g_rom_flashchip);

    status = read_status_fn();
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Initial flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Initial flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Initial flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Initial flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Initial flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } } while(0); } while(0);

    if ((status & (1 << status_qio_bit)) == 0) {
        execute_flash_command(0x06, 0, 0, 0);
        write_status_fn(status | (1 << status_qio_bit));

        esp_rom_spiflash_wait_idle(&g_rom_flashchip);

        status = read_status_fn();
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Updated flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Updated flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Updated flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Updated flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Updated flash chip status 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, status); } } while(0); } while(0);
        if ((status & (1 << status_qio_bit)) == 0) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to set QIE bit, not enabling QIO mode" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to set QIE bit, not enabling QIO mode" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to set QIE bit, not enabling QIO mode" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to set QIE bit, not enabling QIO mode" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to set QIE bit, not enabling QIO mode" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            return -1;
        }

    } else {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "QIO mode already enabled in flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "QIO mode already enabled in flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "QIO mode already enabled in flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "QIO mode already enabled in flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "QIO mode already enabled in flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Enabling QIO mode..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Enabling QIO mode..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Enabling QIO mode..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Enabling QIO mode..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Enabling QIO mode..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);

    esp_rom_spiflash_read_mode_t mode;



    mode = ESP_ROM_SPIFLASH_QIO_MODE;


    esp_rom_spiflash_config_readmode(mode);


    esp_rom_spiflash_select_qio_pins(7, spiconfig);







    return 0;
}

static unsigned read_status_8b_rdsr(void)
{
    return execute_flash_command(0x05, 0, 0, 8);
}

static unsigned read_status_8b_rdsr2(void)
{
    return execute_flash_command(0x35, 0, 0, 8);
}

static unsigned read_status_16b_rdsr_rdsr2(void)
{
    return execute_flash_command(0x05, 0, 0, 8) | (execute_flash_command(0x35, 0, 0, 8) << 8);
}

static void write_status_8b_wrsr(unsigned new_status)
{
    execute_flash_command(0x01, new_status, 8, 0);
}

static void write_status_8b_wrsr2(unsigned new_status)
{
    execute_flash_command(0x31, new_status, 8, 0);
}

static void write_status_16b_wrsr(unsigned new_status)
{
    execute_flash_command(0x01, new_status, 16, 0);
}

static unsigned read_status_8b_xmc25qu64a(void)
{
    execute_flash_command(0x3A, 0, 0, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    uint32_t read_status = execute_flash_command(0x05, 0, 0, 8);
    execute_flash_command(0x04, 0, 0, 0);
    return read_status;
}

static void write_status_8b_xmc25qu64a(unsigned new_status)
{
    execute_flash_command(0x3A, 0, 0, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    execute_flash_command(0x01, new_status, 8, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    execute_flash_command(0x04, 0, 0, 0);
}

static uint32_t execute_flash_command(uint8_t command, uint32_t mosi_data, uint8_t mosi_len, uint8_t miso_len)
{
    uint32_t old_ctrl_reg = SPI1.ctrl.val;

    SPI1.ctrl.val = ((1UL << (21)));



    SPI1.user.usr_dummy = 0;
    SPI1.user.usr_addr = 0;
    SPI1.user.usr_command = 1;
    SPI1.user2.usr_command_bitlen = 7;

    SPI1.user2.usr_command_value = command;
    SPI1.user.usr_miso = miso_len > 0;

    SPI1.miso_dlen.usr_miso_dbitlen = miso_len ? (miso_len - 1) : 0;



    SPI1.user.usr_mosi = mosi_len > 0;

    SPI1.mosi_dlen.usr_mosi_dbitlen = mosi_len ? (mosi_len - 1) : 0;



    SPI1.data_buf[0] = mosi_data;

    if (g_rom_spiflash_dummy_len_plus[1]) {

        if (miso_len > 0) {
            SPI1.user.usr_dummy = 1;
            SPI1.user1.usr_dummy_cyclelen = g_rom_spiflash_dummy_len_plus[1] - 1;
        } else {
            SPI1.user.usr_dummy = 0;
            SPI1.user1.usr_dummy_cyclelen = 0;
        }
    }

    SPI1.cmd.usr = 1;
    while (SPI1.cmd.usr != 0) {
    }

    SPI1.ctrl.val = old_ctrl_reg;
    return SPI1.data_buf[0];
}
