# 1 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 1 "/home/dieter/Development/ProjektEi/build/esp32//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 15 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 16 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 1 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 3 4
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;

# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 1 3 4
# 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/newlib.h" 1 3 4
# 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/newlib.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_newlib_version.h" 1 3 4
# 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/newlib.h" 2 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 1 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/ieeefp.h" 1 3 4
# 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/features.h" 1 3 4
# 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 2 3 4
# 193 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 3 4
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core-isa.h" 1 3 4
# 194 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/config.h" 2 3 4
# 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 2 3 4
# 16 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h" 2 3 4
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
# 17 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/param.h" 1 3 4
# 9 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/param.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/syslimits.h" 1 3 4
# 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/param.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 1 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 1 3 4
# 43 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h" 1 3 4
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
# 44 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 2 3 4

# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/cdefs.h" 2 3 4
# 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 1 3 4
# 24 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_types.h" 1 3 4
# 25 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h" 2 3 4



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
# 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_endian.h" 1 3 4
# 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/endian.h" 2 3 4
# 11 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/param.h" 2 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/param.h" 1 3 4
# 12 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/param.h" 2 3 4
# 18 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/esp_attr.h" 1
# 17 "/home/dieter/Development/esp-idf/components/xtensa/include/esp_attr.h"
# 1 "/home/dieter/Development/ProjektEi/build/include/sdkconfig.h" 1




       
# 18 "/home/dieter/Development/esp-idf/components/xtensa/include/esp_attr.h" 2
# 19 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
       

# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdint.h" 1 3 4
# 9 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdint.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 1 3 4
# 13 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdint.h" 3 4
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
# 18 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 1
# 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
       


# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 1 3 4
# 29 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/_ansi.h" 1 3 4
# 30 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4






# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4



# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 2 3 4





typedef __gnuc_va_list va_list;
# 60 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdio.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 1 3 4
# 14 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h" 2 3 4







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
# 19 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h" 2
# 1 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 1
# 18 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stdbool.h" 1 3 4
# 23 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 2
# 19 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h"
       
# 20 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h" 1
# 56 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
typedef enum {
    GPIO_PIN_INTR_DISABLE = 0,
    GPIO_PIN_INTR_POSEDGE = 1,
    GPIO_PIN_INTR_NEGEDGE = 2,
    GPIO_PIN_INTR_ANYEDGE = 3,
    GPIO_PIN_INTR_LOLEVEL = 4,
    GPIO_PIN_INTR_HILEVEL = 5
} GPIO_INT_TYPE;
# 72 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
typedef void (* gpio_intr_handler_fn_t)(uint32_t intr_mask, 
# 72 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h" 3 4
                                                           _Bool 
# 72 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
                                                                high, void *arg);
# 83 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_init(void);
# 100 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_output_set(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 117 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_output_set_high(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 126 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
uint32_t gpio_input_get(void);
# 135 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
uint32_t gpio_input_get_high(void);
# 148 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_intr_handler_register(gpio_intr_handler_fn_t fn, void *arg);
# 158 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
uint32_t gpio_intr_pending(void);
# 168 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
uint32_t gpio_intr_pending_high(void);
# 178 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_intr_ack(uint32_t ack_mask);
# 188 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_intr_ack_high(uint32_t ack_mask);
# 200 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pin_wakeup_enable(uint32_t i, GPIO_INT_TYPE intr_state);
# 210 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pin_wakeup_disable(void);
# 226 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_matrix_in(uint32_t gpio, uint32_t signal_idx, 
# 226 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h" 3 4
                                                       _Bool 
# 226 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
                                                            inv);
# 242 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_matrix_out(uint32_t gpio, uint32_t signal_idx, 
# 242 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h" 3 4
                                                        _Bool 
# 242 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
                                                             out_inv, 
# 242 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h" 3 4
                                                                      _Bool 
# 242 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
                                                                           oen_inv);
# 251 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_select_gpio(uint8_t gpio_num);
# 262 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_set_drv(uint8_t gpio_num, uint8_t drv);
# 271 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_pullup(uint8_t gpio_num);
# 280 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_pulldown(uint8_t gpio_num);
# 289 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_unhold(uint8_t gpio_num);
# 298 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/gpio.h"
void gpio_pad_hold(uint8_t gpio_num);
# 21 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 2

# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h" 1
# 21 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 31 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h" 1
# 148 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern const unsigned int Xthal_rev_no;







extern void xthal_save_extra(void *base);
extern void xthal_restore_extra(void *base);

extern void xthal_save_cpregs(void *base, int);
extern void xthal_restore_cpregs(void *base, int);

extern void xthal_save_cp0(void *base);
extern void xthal_save_cp1(void *base);
extern void xthal_save_cp2(void *base);
extern void xthal_save_cp3(void *base);
extern void xthal_save_cp4(void *base);
extern void xthal_save_cp5(void *base);
extern void xthal_save_cp6(void *base);
extern void xthal_save_cp7(void *base);
extern void xthal_restore_cp0(void *base);
extern void xthal_restore_cp1(void *base);
extern void xthal_restore_cp2(void *base);
extern void xthal_restore_cp3(void *base);
extern void xthal_restore_cp4(void *base);
extern void xthal_restore_cp5(void *base);
extern void xthal_restore_cp6(void *base);
extern void xthal_restore_cp7(void *base);

extern void* Xthal_cpregs_save_fn[8];
extern void* Xthal_cpregs_restore_fn[8];

extern void* Xthal_cpregs_save_nw_fn[8];
extern void* Xthal_cpregs_restore_nw_fn[8];





extern const unsigned int Xthal_extra_size;
extern const unsigned int Xthal_extra_align;
extern const unsigned int Xthal_cpregs_size[8];
extern const unsigned int Xthal_cpregs_align[8];
extern const unsigned int Xthal_all_extra_size;
extern const unsigned int Xthal_all_extra_align;

extern const char * const Xthal_cp_names[8];







extern void xthal_init_mem_extra(void *);

extern void xthal_init_mem_cp(void *, int);


extern const unsigned int Xthal_num_coprocessors;


extern const unsigned char Xthal_cp_num;

extern const unsigned char Xthal_cp_max;



extern const unsigned int Xthal_cp_mask;
# 237 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern const unsigned int Xthal_num_aregs;
extern const unsigned char Xthal_num_aregs_log2;







extern const unsigned char Xthal_icache_linewidth;
extern const unsigned char Xthal_dcache_linewidth;

extern const unsigned short Xthal_icache_linesize;
extern const unsigned short Xthal_dcache_linesize;


extern const unsigned int Xthal_icache_size;
extern const unsigned int Xthal_dcache_size;

extern const unsigned char Xthal_dcache_is_writeback;



extern void xthal_icache_region_invalidate( void *addr, unsigned size );
extern void xthal_dcache_region_invalidate( void *addr, unsigned size );

extern void xthal_icache_line_invalidate(void *addr);
extern void xthal_dcache_line_invalidate(void *addr);


extern void xthal_dcache_region_writeback( void *addr, unsigned size );

extern void xthal_dcache_line_writeback(void *addr);


extern void xthal_dcache_region_writeback_inv( void *addr, unsigned size );

extern void xthal_dcache_line_writeback_inv(void *addr);

extern void xthal_icache_sync( void );

extern void xthal_dcache_sync( void );



extern unsigned int xthal_icache_get_ways(void);

extern void xthal_icache_set_ways(unsigned int ways);

extern unsigned int xthal_dcache_get_ways(void);

extern void xthal_dcache_set_ways(unsigned int ways);


extern void xthal_cache_coherence_on( void );
extern void xthal_cache_coherence_off( void );

extern void xthal_cache_coherence_optin( void );
extern void xthal_cache_coherence_optout( void );
# 339 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern int xthal_get_cache_prefetch( void );
extern int xthal_set_cache_prefetch( int );
extern int xthal_set_cache_prefetch_long( unsigned long long );
# 352 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern const int Xthal_debug_configured;


extern unsigned int xthal_set_soft_break(void *addr);
extern void xthal_remove_soft_break(void *addr, unsigned int);
# 374 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern int xthal_disassemble( unsigned char *instr_buf, void *tgt_addr,
         char *buffer, unsigned buflen, unsigned options );



extern int xthal_disassemble_size( unsigned char *instr_buf );






extern void* xthal_memcpy(void *dst, const void *src, unsigned len);
extern void* xthal_bcopy(const void *src, void *dst, unsigned len);






extern int xthal_compare_and_set( int *addr, int test_val, int compare_val );
# 403 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern const unsigned int Xthal_release_major;
extern const unsigned int Xthal_release_minor;
extern const char * const Xthal_release_name;
extern const char * const Xthal_release_internal;

extern const unsigned char Xthal_memory_order;
extern const unsigned char Xthal_have_windowed;
extern const unsigned char Xthal_have_density;
extern const unsigned char Xthal_have_booleans;
extern const unsigned char Xthal_have_loops;
extern const unsigned char Xthal_have_nsa;
extern const unsigned char Xthal_have_minmax;
extern const unsigned char Xthal_have_sext;
extern const unsigned char Xthal_have_clamps;
extern const unsigned char Xthal_have_mac16;
extern const unsigned char Xthal_have_mul16;
extern const unsigned char Xthal_have_fp;
extern const unsigned char Xthal_have_speculation;
extern const unsigned char Xthal_have_threadptr;

extern const unsigned char Xthal_have_pif;
extern const unsigned short Xthal_num_writebuffer_entries;

extern const unsigned int Xthal_build_unique_id;

extern const unsigned int Xthal_hw_configid0;
extern const unsigned int Xthal_hw_configid1;
extern const unsigned int Xthal_hw_release_major;
extern const unsigned int Xthal_hw_release_minor;
extern const char * const Xthal_hw_release_name;
extern const char * const Xthal_hw_release_internal;


extern void xthal_clear_regcached_code( void );
# 653 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern void xthal_window_spill( void );







extern void xthal_validate_cp(int);
extern void xthal_invalidate_cp(int);


extern void xthal_set_cpenable(unsigned);
extern unsigned xthal_get_cpenable(void);







extern const unsigned char Xthal_num_intlevels;

extern const unsigned char Xthal_num_interrupts;

extern const unsigned char Xthal_excm_level;


extern const unsigned int Xthal_intlevel_mask[16];

extern const unsigned int Xthal_intlevel_andbelow_mask[16];


extern const unsigned char Xthal_intlevel[32];


extern const unsigned char Xthal_inttype[32];


extern const unsigned int Xthal_inttype_mask[8];


extern const int Xthal_timer_interrupt[4];


extern unsigned xthal_get_intenable( void );
extern void xthal_set_intenable( unsigned );
extern unsigned xthal_get_interrupt( void );

extern void xthal_set_intset( unsigned );
extern void xthal_set_intclear( unsigned );







extern const int Xthal_num_ibreak;
extern const int Xthal_num_dbreak;







extern const unsigned char Xthal_have_ccount;
extern const unsigned char Xthal_num_ccompare;


extern unsigned xthal_get_ccount(void);


extern void xthal_set_ccompare(int, unsigned);
extern unsigned xthal_get_ccompare(int);






extern const unsigned char Xthal_have_prid;
extern const unsigned char Xthal_have_exceptions;
extern const unsigned char Xthal_xea_version;
extern const unsigned char Xthal_have_interrupts;
extern const unsigned char Xthal_have_highlevel_interrupts;
extern const unsigned char Xthal_have_nmi;

extern unsigned xthal_get_prid( void );







extern unsigned xthal_vpri_to_intlevel(unsigned vpri);
extern unsigned xthal_intlevel_to_vpri(unsigned intlevel);


extern unsigned xthal_int_enable(unsigned);
extern unsigned xthal_int_disable(unsigned);


extern int xthal_set_int_vpri(int intnum, int vpri);
extern int xthal_get_int_vpri(int intnum);


extern void xthal_set_vpri_locklevel(unsigned intlevel);
extern unsigned xthal_get_vpri_locklevel(void);


extern unsigned xthal_set_vpri(unsigned vpri);
extern unsigned xthal_get_vpri(void);
extern unsigned xthal_set_vpri_intlevel(unsigned intlevel);
extern unsigned xthal_set_vpri_lock(void);






typedef void (XtHalVoidFunc)(void);


extern unsigned Xthal_tram_pending;
# 789 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern unsigned Xthal_tram_enabled;


extern unsigned Xthal_tram_sync;


extern unsigned xthal_tram_pending_to_service( void );
extern void xthal_tram_done( unsigned serviced_mask );
extern int xthal_tram_set_sync( int intnum, int sync );
extern XtHalVoidFunc* xthal_set_tram_trigger_func( XtHalVoidFunc *trigger_fn );






extern const unsigned char Xthal_num_instrom;
extern const unsigned char Xthal_num_instram;
extern const unsigned char Xthal_num_datarom;
extern const unsigned char Xthal_num_dataram;
extern const unsigned char Xthal_num_xlmi;



extern const unsigned int Xthal_instrom_vaddr[];
extern const unsigned int Xthal_instrom_paddr[];
extern const unsigned int Xthal_instrom_size [];
extern const unsigned int Xthal_instram_vaddr[];
extern const unsigned int Xthal_instram_paddr[];
extern const unsigned int Xthal_instram_size [];
extern const unsigned int Xthal_datarom_vaddr[];
extern const unsigned int Xthal_datarom_paddr[];
extern const unsigned int Xthal_datarom_size [];
extern const unsigned int Xthal_dataram_vaddr[];
extern const unsigned int Xthal_dataram_paddr[];
extern const unsigned int Xthal_dataram_size [];
extern const unsigned int Xthal_xlmi_vaddr[];
extern const unsigned int Xthal_xlmi_paddr[];
extern const unsigned int Xthal_xlmi_size [];







extern const unsigned char Xthal_icache_setwidth;
extern const unsigned char Xthal_dcache_setwidth;

extern const unsigned int Xthal_icache_ways;
extern const unsigned int Xthal_dcache_ways;

extern const unsigned char Xthal_icache_line_lockable;
extern const unsigned char Xthal_dcache_line_lockable;


extern unsigned xthal_get_cacheattr( void );
extern unsigned xthal_get_icacheattr( void );
extern unsigned xthal_get_dcacheattr( void );
extern void xthal_set_cacheattr( unsigned );
extern void xthal_set_icacheattr( unsigned );
extern void xthal_set_dcacheattr( unsigned );

extern int xthal_set_region_attribute( void *addr, unsigned size,
         unsigned cattr, unsigned flags );
# 862 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern void xthal_icache_enable( void );
extern void xthal_dcache_enable( void );

extern void xthal_icache_disable( void );
extern void xthal_dcache_disable( void );


extern void xthal_icache_all_invalidate( void );
extern void xthal_dcache_all_invalidate( void );

extern void xthal_dcache_all_writeback( void );

extern void xthal_dcache_all_writeback_inv( void );

extern void xthal_icache_region_lock( void *addr, unsigned size );
extern void xthal_dcache_region_lock( void *addr, unsigned size );

extern void xthal_icache_line_lock(void *addr);
extern void xthal_dcache_line_lock(void *addr);


extern void xthal_icache_all_unlock( void );
extern void xthal_dcache_all_unlock( void );
extern void xthal_icache_region_unlock( void *addr, unsigned size );
extern void xthal_dcache_region_unlock( void *addr, unsigned size );

extern void xthal_icache_line_unlock(void *addr);
extern void xthal_dcache_line_unlock(void *addr);
# 899 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern void xthal_memep_inject_error(void *addr, int size, int flags);







extern const unsigned char Xthal_have_spanning_way;
extern const unsigned char Xthal_have_identity_map;
extern const unsigned char Xthal_have_mimic_cacheattr;
extern const unsigned char Xthal_have_xlt_cacheattr;
extern const unsigned char Xthal_have_cacheattr;
extern const unsigned char Xthal_have_tlbs;

extern const unsigned char Xthal_mmu_asid_bits;
extern const unsigned char Xthal_mmu_asid_kernel;
extern const unsigned char Xthal_mmu_rings;
extern const unsigned char Xthal_mmu_ring_bits;
extern const unsigned char Xthal_mmu_sr_bits;
extern const unsigned char Xthal_mmu_ca_bits;
extern const unsigned int Xthal_mmu_max_pte_page_size;
extern const unsigned int Xthal_mmu_min_pte_page_size;

extern const unsigned char Xthal_itlb_way_bits;
extern const unsigned char Xthal_itlb_ways;
extern const unsigned char Xthal_itlb_arf_ways;
extern const unsigned char Xthal_dtlb_way_bits;
extern const unsigned char Xthal_dtlb_ways;
extern const unsigned char Xthal_dtlb_arf_ways;



extern int xthal_static_v2p( unsigned vaddr, unsigned *paddrp );
extern int xthal_static_p2v( unsigned paddr, unsigned *vaddrp, unsigned cached );
# 948 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
extern int xthal_set_region_translation(void* vaddr, void* paddr, unsigned size, unsigned cache_atr, unsigned flags);
extern int xthal_v2p(void*, void**, unsigned*, unsigned*);
extern int xthal_invalidate_region(void* addr);
extern int xthal_set_region_translation_raw(void *vaddr, void *paddr, unsigned cattr);
# 32 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2

# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 44 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/tie.h" 1
# 45 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/corebits.h" 1
# 46 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/system.h" 1
# 47 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h" 1
# 30 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 1
# 42 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtensa-versions.h" 1
# 43 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 2
# 51 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 2
# 1279 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
extern const unsigned char Xthal_cp_id_FPU;
extern const unsigned int Xthal_cp_mask_FPU;


extern const unsigned char Xthal_cp_id_XCHAL_CP1_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP1_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP2_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP2_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP3_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP3_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP4_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP4_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP5_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP5_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP6_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP6_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP7_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP7_IDENT;
# 31 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h" 2
# 56 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long areg[4];
long sar;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];

} KernelFrame;
# 80 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long sar;
long vpri;



long a2;
long a3;
long a4;
long a5;
# 104 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
long exccause;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];
# 123 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
long pad[((3 + 
# 123 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h" 3 4
1
# 123 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
*1 + 
# 123 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h" 3 4
1
# 123 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h"
*2 + 0*1) & 3)];


} UserFrame;
# 48 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 103 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
long exit;
long pc;
long ps;
long a0;
long a1;
long a2;
long a3;
long a4;
long a5;
long a6;
long a7;
long a8;
long a9;
long a10;
long a11;
long a12;
long a13;
long a14;
long a15;
long sar;
long exccause;
long excvaddr;

long lbeg;
long lend;
long lcount;



long tmp0;
long tmp1;
long tmp2;
# 145 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
} XtExcFrame;
# 202 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
# 213 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
long exit;
long pc;
long ps;
long next;
long a0;
long a1;
long a2;
long a3;

} XtSolFrame;
# 34 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h" 2



typedef void (*xt_handler)(void *);


typedef void (*xt_exc_handler)(XtExcFrame *);
# 60 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_exc_handler xt_set_exception_handler(int n, xt_exc_handler f);
# 73 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_handler xt_set_interrupt_handler(int n, xt_handler f, void * arg);
# 84 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_on(unsigned int mask);
# 95 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_off(unsigned int mask);







static inline void xt_set_intset(unsigned int arg)
{
    xthal_set_intset(arg);
}
# 115 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
static inline void xt_set_intclear(unsigned int arg)
{
    xthal_set_intclear(arg);
}
# 127 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void * xt_get_interrupt_handler_arg(int n);
# 22 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h" 2
# 87 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
typedef void (*intr_handler_t)(void *arg);


typedef struct intr_handle_data_t intr_handle_data_t;
typedef intr_handle_data_t* intr_handle_t ;
# 108 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_mark_shared(int intno, int cpu, 
# 108 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                  _Bool 
# 108 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                       is_in_iram);
# 122 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_reserve(int intno, int cpu);
# 157 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc(int source, int flags, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 195 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc_intrstatus(int source, int flags, uint32_t intrstatusreg, uint32_t intrstatusmask, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 216 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_free(intr_handle_t handle);
# 226 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_cpu(intr_handle_t handle);
# 235 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_intno(intr_handle_t handle);
# 253 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_disable(intr_handle_t handle);
# 266 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_enable(intr_handle_t handle);
# 280 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_set_in_iram(intr_handle_t handle, 
# 280 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                    _Bool 
# 280 "/home/dieter/Development/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                         is_in_iram);




void esp_intr_noniram_disable(void);





void esp_intr_noniram_enable(void);
# 23 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h"
       

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_pins.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 17 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 2
# 19 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
typedef volatile struct gpio_dev_s {
    uint32_t bt_select;
    uint32_t out;
    uint32_t out_w1ts;
    uint32_t out_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1tc;
    union {
        struct {
            uint32_t sel: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } sdio_select;
    uint32_t enable;
    uint32_t enable_w1ts;
    uint32_t enable_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1tc;
    union {
        struct {
            uint32_t strapping: 16;
            uint32_t reserved16:16;
        };
        uint32_t val;
    } strap;
    uint32_t in;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } in1;
    uint32_t status;
    uint32_t status_w1ts;
    uint32_t status_w1tc;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1ts;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1tc;
    uint32_t reserved_5c;
    uint32_t acpu_int;
    uint32_t acpu_nmi_int;
    uint32_t pcpu_int;
    uint32_t pcpu_nmi_int;
    uint32_t cpusdio_int;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } cpusdio_int1;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t pad_driver: 1;
            uint32_t reserved3: 4;
            uint32_t int_type: 3;
            uint32_t wakeup_enable: 1;
            uint32_t config: 2;
            uint32_t int_ena: 5;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } pin[40];
    union {
        struct {
            uint32_t rtc_max: 10;
            uint32_t reserved10: 21;
            uint32_t start: 1;
        };
        uint32_t val;
    } cali_conf;
    union {
        struct {
            uint32_t value_sync2: 20;
            uint32_t reserved20: 10;
            uint32_t rdy_real: 1;
            uint32_t rdy_sync2: 1;
        };
        uint32_t val;
    } cali_data;
    union {
        struct {
            uint32_t func_sel: 6;
            uint32_t sig_in_inv: 1;
            uint32_t sig_in_sel: 1;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } func_in_sel_cfg[256];
    union {
        struct {
            uint32_t func_sel: 9;
            uint32_t inv_sel: 1;
            uint32_t oen_sel: 1;
            uint32_t oen_inv_sel: 1;
            uint32_t reserved12: 20;
        };
        uint32_t val;
    } func_out_sel_cfg[40];
} gpio_dev_t;
extern gpio_dev_t GPIO;
# 20 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 22 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2






extern const uint32_t GPIO_PIN_MUX_REG[40];
# 24 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 2
# 241 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
typedef enum {
    GPIO_NUM_NC = -1,
    GPIO_NUM_0 = 0,
    GPIO_NUM_1 = 1,
    GPIO_NUM_2 = 2,





    GPIO_NUM_3 = 3,
    GPIO_NUM_4 = 4,
    GPIO_NUM_5 = 5,
    GPIO_NUM_6 = 6,
    GPIO_NUM_7 = 7,
    GPIO_NUM_8 = 8,
    GPIO_NUM_9 = 9,
    GPIO_NUM_10 = 10,
    GPIO_NUM_11 = 11,
    GPIO_NUM_12 = 12,
    GPIO_NUM_13 = 13,
    GPIO_NUM_14 = 14,
    GPIO_NUM_15 = 15,
    GPIO_NUM_16 = 16,
    GPIO_NUM_17 = 17,
    GPIO_NUM_18 = 18,
    GPIO_NUM_19 = 19,

    GPIO_NUM_21 = 21,
    GPIO_NUM_22 = 22,
    GPIO_NUM_23 = 23,

    GPIO_NUM_25 = 25,
    GPIO_NUM_26 = 26,
    GPIO_NUM_27 = 27,

    GPIO_NUM_32 = 32,
    GPIO_NUM_33 = 33,
    GPIO_NUM_34 = 34,
    GPIO_NUM_35 = 35,
    GPIO_NUM_36 = 36,
    GPIO_NUM_37 = 37,
    GPIO_NUM_38 = 38,
    GPIO_NUM_39 = 39,
    GPIO_NUM_MAX = 40,

} gpio_num_t;
# 342 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
typedef enum {
    GPIO_INTR_DISABLE = 0,
    GPIO_INTR_POSEDGE = 1,
    GPIO_INTR_NEGEDGE = 2,
    GPIO_INTR_ANYEDGE = 3,
    GPIO_INTR_LOW_LEVEL = 4,
    GPIO_INTR_HIGH_LEVEL = 5,
    GPIO_INTR_MAX,
} gpio_int_type_t;

typedef enum {
    GPIO_MODE_DISABLE = (0),
    GPIO_MODE_INPUT = (0x00000001),
    GPIO_MODE_OUTPUT = (0x00000002),
    GPIO_MODE_OUTPUT_OD = (((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT_OD = (((0x00000001))|((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT = (((0x00000001))|((0x00000002))),
} gpio_mode_t;

typedef enum {
    GPIO_PULLUP_DISABLE = 0x0,
    GPIO_PULLUP_ENABLE = 0x1,
} gpio_pullup_t;

typedef enum {
    GPIO_PULLDOWN_DISABLE = 0x0,
    GPIO_PULLDOWN_ENABLE = 0x1,
} gpio_pulldown_t;




typedef struct {
    uint64_t pin_bit_mask;
    gpio_mode_t mode;
    gpio_pullup_t pull_up_en;
    gpio_pulldown_t pull_down_en;
    gpio_int_type_t intr_type;
} gpio_config_t;

typedef enum {
    GPIO_PULLUP_ONLY,
    GPIO_PULLDOWN_ONLY,
    GPIO_PULLUP_PULLDOWN,
    GPIO_FLOATING,
} gpio_pull_mode_t;

typedef enum {
    GPIO_DRIVE_CAP_0 = 0,
    GPIO_DRIVE_CAP_1 = 1,
    GPIO_DRIVE_CAP_2 = 2,
    GPIO_DRIVE_CAP_DEFAULT = 2,
    GPIO_DRIVE_CAP_3 = 3,
    GPIO_DRIVE_CAP_MAX,
} gpio_drive_cap_t;

typedef void (*gpio_isr_t)(void*);
typedef intr_handle_t gpio_isr_handle_t;
# 413 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_config(const gpio_config_t *pGPIOConfig);
# 426 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_reset_pin(gpio_num_t gpio_num);
# 439 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_intr_type(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 455 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_enable(gpio_num_t gpio_num);
# 467 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_disable(gpio_num_t gpio_num);
# 480 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 494 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
int gpio_get_level(gpio_num_t gpio_num);
# 509 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_direction(gpio_num_t gpio_num, gpio_mode_t mode);
# 524 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull);
# 537 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 548 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_disable(gpio_num_t gpio_num);
# 574 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_register(void (*fn)(void*), void * arg, int intr_alloc_flags, gpio_isr_handle_t *handle);
# 585 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_en(gpio_num_t gpio_num);
# 596 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_dis(gpio_num_t gpio_num);
# 607 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_en(gpio_num_t gpio_num);
# 618 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_dis(gpio_num_t gpio_num);
# 635 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_install_isr_service(int intr_alloc_flags);




void gpio_uninstall_isr_service(void);
# 666 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_add(gpio_num_t gpio_num, gpio_isr_t isr_handler, void* args);
# 678 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_remove(gpio_num_t gpio_num);
# 690 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 702 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 724 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_hold_en(gpio_num_t gpio_num);
# 743 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_hold_dis(gpio_num_t gpio_num);
# 754 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
void gpio_deep_sleep_hold_en(void);





void gpio_deep_sleep_hold_dis(void);






void gpio_iomux_in(uint32_t gpio_num, uint32_t signal_idx);
# 776 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
void gpio_iomux_out(uint8_t gpio_num, int func, 
# 776 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h" 3 4
                                               _Bool 
# 776 "/home/dieter/Development/esp-idf/components/driver/include/driver/gpio.h"
                                                    oen_inv);
# 20 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h" 2
# 1 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h" 1
# 23 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/touch_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/touch_periph.h"
       
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/touch_channel.h" 1
# 16 "/home/dieter/Development/esp-idf/components/soc/include/soc/touch_periph.h" 2
# 24 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h" 2


typedef enum {
    TOUCH_PAD_NUM0 = 0,
    TOUCH_PAD_NUM1,
    TOUCH_PAD_NUM2,
    TOUCH_PAD_NUM3,
    TOUCH_PAD_NUM4,
    TOUCH_PAD_NUM5,
    TOUCH_PAD_NUM6,
    TOUCH_PAD_NUM7,
    TOUCH_PAD_NUM8,
    TOUCH_PAD_NUM9,
    TOUCH_PAD_MAX,
} touch_pad_t;
# 66 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
typedef enum {
    TOUCH_HVOLT_KEEP = -1,
    TOUCH_HVOLT_2V4 = 0,
    TOUCH_HVOLT_2V5,
    TOUCH_HVOLT_2V6,
    TOUCH_HVOLT_2V7,
    TOUCH_HVOLT_MAX,
} touch_high_volt_t;

typedef enum {
    TOUCH_LVOLT_KEEP = -1,
    TOUCH_LVOLT_0V5 = 0,
    TOUCH_LVOLT_0V6,
    TOUCH_LVOLT_0V7,
    TOUCH_LVOLT_0V8,
    TOUCH_LVOLT_MAX,
} touch_low_volt_t;

typedef enum {
    TOUCH_HVOLT_ATTEN_KEEP = -1,
    TOUCH_HVOLT_ATTEN_1V5 = 0,
    TOUCH_HVOLT_ATTEN_1V,
    TOUCH_HVOLT_ATTEN_0V5,
    TOUCH_HVOLT_ATTEN_0V,
    TOUCH_HVOLT_ATTEN_MAX,
} touch_volt_atten_t;

typedef enum {
    TOUCH_PAD_SLOPE_0 = 0,
    TOUCH_PAD_SLOPE_1 = 1,
    TOUCH_PAD_SLOPE_2 = 2,
    TOUCH_PAD_SLOPE_3 = 3,
    TOUCH_PAD_SLOPE_4 = 4,
    TOUCH_PAD_SLOPE_5 = 5,
    TOUCH_PAD_SLOPE_6 = 6,
    TOUCH_PAD_SLOPE_7 = 7,
    TOUCH_PAD_SLOPE_MAX,
} touch_cnt_slope_t;


typedef enum {
    TOUCH_TRIGGER_BELOW = 0,
    TOUCH_TRIGGER_ABOVE = 1,
    TOUCH_TRIGGER_MAX,
} touch_trigger_mode_t;

typedef enum {
    TOUCH_TRIGGER_SOURCE_BOTH = 0,
    TOUCH_TRIGGER_SOURCE_SET1 = 1,
    TOUCH_TRIGGER_SOURCE_MAX,
} touch_trigger_src_t;


typedef enum {
    TOUCH_PAD_TIE_OPT_LOW = 0,
    TOUCH_PAD_TIE_OPT_HIGH = 1,
    TOUCH_PAD_TIE_OPT_MAX,
} touch_tie_opt_t;

typedef enum {
    TOUCH_FSM_MODE_TIMER = 0,
    TOUCH_FSM_MODE_SW,
    TOUCH_FSM_MODE_MAX,
} touch_fsm_mode_t;
# 251 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
typedef intr_handle_t touch_isr_handle_t;
# 282 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_init(void);
# 291 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_deinit(void);
# 302 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_deregister(void(*fn)(void *), void *arg);
# 311 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_wakeup_status(touch_pad_t *pad_num);






uint32_t touch_pad_get_status(void);
# 328 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_fsm_mode(touch_fsm_mode_t mode);







esp_err_t touch_pad_get_fsm_mode(touch_fsm_mode_t *mode);
# 353 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_config(touch_pad_t touch_num, uint16_t threshold);
# 373 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read(touch_pad_t touch_num, uint16_t * touch_value);
# 390 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_filtered(touch_pad_t touch_num, uint16_t *touch_value);
# 408 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_raw_data(touch_pad_t touch_num, uint16_t *touch_value);
# 420 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
typedef void (* filter_cb_t)(uint16_t *raw_value, uint16_t *filtered_value);
# 431 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_read_cb(filter_cb_t read_cb);
# 443 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_register(intr_handler_t fn, void* arg);
# 456 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_meas_time(uint16_t sleep_cycle, uint16_t meas_cycle);
# 465 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_meas_time(uint16_t *sleep_cycle, uint16_t *meas_cycle);
# 480 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_voltage(touch_high_volt_t refh, touch_low_volt_t refl, touch_volt_atten_t atten);
# 490 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_voltage(touch_high_volt_t *refh, touch_low_volt_t *refl, touch_volt_atten_t *atten);
# 505 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t slope, touch_tie_opt_t opt);
# 516 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t *slope, touch_tie_opt_t *opt);
# 525 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_io_init(touch_pad_t touch_num);






esp_err_t touch_pad_sw_start(void);
# 542 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_thresh(touch_pad_t touch_num, uint16_t threshold);
# 552 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_thresh(touch_pad_t touch_num, uint16_t *threshold);
# 563 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_mode(touch_trigger_mode_t mode);







esp_err_t touch_pad_get_trigger_mode(touch_trigger_mode_t *mode);
# 583 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_source(touch_trigger_src_t src);







esp_err_t touch_pad_get_trigger_source(touch_trigger_src_t *src);
# 605 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);
# 615 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_group_mask(uint16_t *set1_mask, uint16_t *set2_mask, uint16_t *en_mask);
# 629 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_clear_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);






esp_err_t touch_pad_clear_status(void);






esp_err_t touch_pad_intr_enable(void);






esp_err_t touch_pad_intr_disable(void);
# 661 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_period(uint32_t new_period_ms);
# 672 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_filter_period(uint32_t* p_period_ms);
# 691 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_start(uint32_t filter_period_ms);
# 700 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_stop(void);
# 709 "/home/dieter/Development/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_delete(void);
# 21 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h" 2
# 29 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
typedef enum {
    ESP_EXT1_WAKEUP_ALL_LOW = 0,
    ESP_EXT1_WAKEUP_ANY_HIGH = 1
} esp_sleep_ext1_wakeup_mode_t;




typedef enum {
    ESP_PD_DOMAIN_RTC_PERIPH,
    ESP_PD_DOMAIN_RTC_SLOW_MEM,
    ESP_PD_DOMAIN_RTC_FAST_MEM,
    ESP_PD_DOMAIN_XTAL,
    ESP_PD_DOMAIN_MAX
} esp_sleep_pd_domain_t;




typedef enum {
    ESP_PD_OPTION_OFF,
    ESP_PD_OPTION_ON,
    ESP_PD_OPTION_AUTO
} esp_sleep_pd_option_t;




typedef enum {
    ESP_SLEEP_WAKEUP_UNDEFINED,
    ESP_SLEEP_WAKEUP_ALL,
    ESP_SLEEP_WAKEUP_EXT0,
    ESP_SLEEP_WAKEUP_EXT1,
    ESP_SLEEP_WAKEUP_TIMER,
    ESP_SLEEP_WAKEUP_TOUCHPAD,
    ESP_SLEEP_WAKEUP_ULP,
    ESP_SLEEP_WAKEUP_GPIO,
    ESP_SLEEP_WAKEUP_UART,
} esp_sleep_source_t;


typedef esp_sleep_source_t esp_sleep_wakeup_cause_t;
# 88 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_disable_wakeup_source(esp_sleep_source_t source);
# 101 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ulp_wakeup(void);
# 110 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_timer_wakeup(uint64_t time_in_us);
# 128 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_touchpad_wakeup(void);
# 137 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
touch_pad_t esp_sleep_get_touchpad_wakeup_status(void);
# 163 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level);
# 195 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode);
# 216 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_gpio_wakeup(void);
# 233 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_uart_wakeup(int uart_num);
# 242 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
uint64_t esp_sleep_get_ext1_wakeup_status(void);
# 255 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option);






void esp_deep_sleep_start(void) __attribute__((noreturn));
# 272 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_light_sleep_start(void);
# 296 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
void esp_deep_sleep(uint64_t time_in_us) __attribute__((noreturn));







esp_sleep_wakeup_cause_t esp_sleep_get_wakeup_cause(void);
# 319 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
void esp_wake_deep_sleep(void);





typedef void (*esp_deep_sleep_wake_stub_fn_t)(void);
# 338 "/home/dieter/Development/esp-idf/components/esp32/include/esp_sleep.h"
void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub);






esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void);






void esp_default_wake_deep_sleep(void);






void esp_deep_sleep_disable_rom_logging(void);
# 20 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
       
# 36 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
esp_err_t esp_timer_impl_init(intr_handler_t alarm_handler);




void esp_timer_impl_deinit(void);
# 52 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
void esp_timer_impl_set_alarm(uint64_t timestamp);
# 61 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
void esp_timer_impl_update_apb_freq(uint32_t apb_ticks_per_us);
# 70 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
void esp_timer_impl_advance(int64_t time_us);





uint64_t esp_timer_impl_get_time(void);
# 86 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
uint64_t esp_timer_impl_get_min_period_us(void);
# 95 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/esp_timer_impl.h"
void esp_timer_impl_lock(void);





void esp_timer_impl_unlock(void);
# 21 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
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
# 22 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
       
# 32 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
uint32_t esp_clk_slowclk_cal_get(void);
# 43 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
void esp_clk_slowclk_cal_set(uint32_t value);
# 53 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
int esp_clk_cpu_freq(void);
# 64 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
int esp_clk_apb_freq(void);
# 75 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
int esp_clk_xtal_freq(void);
# 87 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/clk.h"
uint64_t esp_clk_rtc_time(void);
# 23 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/esp_newlib.h" 1
# 26 "/home/dieter/Development/esp-idf/components/newlib/platform_include/esp_newlib.h"
void esp_reent_init(struct _reent* r);




void esp_reent_cleanup(void);







void esp_setup_syscall_table(void);




void esp_set_time_from_rtc(void);




void esp_sync_counters_rtc_and_frc(void);
# 24 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
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
# 25 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h" 1
# 18 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/dport_access.h" 1
# 24 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/dport_access.h"
void esp_dport_access_stall_other_cpu_start(void);
void esp_dport_access_stall_other_cpu_end(void);
void esp_dport_access_int_init(void);
void esp_dport_access_int_pause(void);
void esp_dport_access_int_resume(void);
void esp_dport_access_read_buffer(uint32_t *buff_out, uint32_t address, uint32_t num_words);
uint32_t esp_dport_access_reg_read(uint32_t reg);
uint32_t esp_dport_access_sequence_reg_read(uint32_t reg);


void esp_dport_access_int_abort(void);
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h" 1
# 30 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/specreg.h" 1
# 31 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 1
# 44 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
typedef struct {
long signature;
long restore_label;
long aftersave_label;
long areg[
# 48 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
64
# 48 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];

long caller_regs[16];
long caller_regs_saved;





long windowbase;
long windowstart;

long sar;

long epc1;
long ps;
long excsave1;

long depc;



long epc[
# 70 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
6 
# 70 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
+ 
# 70 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
1 
# 70 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
- 1];
long eps[
# 71 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
6 
# 71 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
+ 
# 71 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
1 
# 71 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
- 1];
long excsave[
# 72 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
6 
# 72 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
+ 
# 72 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
1 
# 72 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
- 1];


long lcount;
long lbeg;
long lend;





long vecbase;


long atomctl;





long memctl;


long ccount;
long ccompare[
# 96 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
3
# 96 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];


long intenable;
long interrupt;


long icount;
long icountlevel;
long debugcause;


long dbreakc[
# 108 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
2
# 108 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];
long dbreaka[
# 109 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
2
# 109 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];


long ibreaka[
# 112 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
2
# 112 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];
long ibreakenable;



long misc[
# 117 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h" 3 4
4
# 117 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
];
# 131 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
long cpenable;




long tlbs[8*2];
# 163 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
char ncp[48] __attribute__((aligned(4)));

char cp0[72] __attribute__((aligned(4)));
char cp1[0] __attribute__((aligned(1)));
char cp2[0] __attribute__((aligned(1)));
char cp3[0] __attribute__((aligned(1)));
char cp4[0] __attribute__((aligned(1)));
char cp5[0] __attribute__((aligned(1)));
char cp6[0] __attribute__((aligned(1)));
char cp7[0] __attribute__((aligned(1)));
# 183 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-core-state.h"
} XtosCoreState;
# 32 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h" 2
# 61 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h"
typedef void (_xtos_handler_func)(void);

typedef _xtos_handler_func *_xtos_handler;
# 151 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h"
extern unsigned int _xtos_ints_off( unsigned int mask );
extern unsigned int _xtos_ints_on( unsigned int mask );
extern unsigned _xtos_set_intlevel( int intlevel );
extern unsigned _xtos_set_min_intlevel( int intlevel );
extern unsigned _xtos_restore_intlevel( unsigned restoreval );
extern unsigned _xtos_restore_just_intlevel( unsigned restoreval );
extern _xtos_handler _xtos_set_interrupt_handler( int n, _xtos_handler f );
extern _xtos_handler _xtos_set_interrupt_handler_arg( int n, _xtos_handler f, void *arg );
extern _xtos_handler _xtos_set_exception_handler( int n, _xtos_handler f );

extern void _xtos_memep_initrams( void );
extern void _xtos_memep_enable( int flags );



extern void _xtos_dispatch_level1_interrupts( void );


extern void _xtos_dispatch_level2_interrupts( void );


extern void _xtos_dispatch_level3_interrupts( void );


extern void _xtos_dispatch_level4_interrupts( void );


extern void _xtos_dispatch_level5_interrupts( void );


extern void _xtos_dispatch_level6_interrupts( void );



extern unsigned int _xtos_read_ints( void );
extern void _xtos_clear_ints( unsigned int mask );



extern int _xtos_core_shutoff(unsigned flags);
extern int _xtos_core_save(unsigned flags, XtosCoreState *savearea, void *code);
extern void _xtos_core_restore(unsigned retvalue, XtosCoreState *savearea);
# 202 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime.h"
extern void _xtos_timer_0_delta( int cycles );


extern void _xtos_timer_1_delta( int cycles );


extern void _xtos_timer_2_delta( int cycles );
# 24 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 74 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "0"))) DPORT_REG_READ(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 107 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "1"))) DPORT_SEQUENCE_REG_READ(uint32_t reg)
{



    return esp_dport_access_sequence_reg_read(reg);

}
# 167 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "2"))) DPORT_READ_PERI_REG(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h" 2
# 40 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
void mmu_init(int cpu_no);
# 69 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1" "." "3"))) cache_flash_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_flash_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_flash_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 112 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
unsigned int __attribute__((section(".iram1" "." "4"))) cache_sram_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);
# 122 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "5"))) Cache_Read_Init(int cpu_no)
{
    extern void Cache_Read_Init_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Init_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 138 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "6"))) Cache_Flush(int cpu_no)
{
    extern void Cache_Flush_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Flush_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 154 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "7"))) Cache_Read_Disable(int cpu_no)
{
    extern void Cache_Read_Disable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Disable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 170 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "8"))) Cache_Read_Enable(int cpu_no)
{
    extern void Cache_Read_Enable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Enable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 26 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h" 1
# 18 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h" 2




# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 24 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 25 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h" 2
# 77 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
typedef enum {
    AWAKE = 0,
    LIGHT_SLEEP = 0x00000001,
    DEEP_SLEEP = 0x00000002
} SLEEP_MODE;

typedef enum {
    NO_MEAN = 0,
    POWERON_RESET = 1,
    SW_RESET = 3,
    OWDT_RESET = 4,
    DEEPSLEEP_RESET = 5,
    SDIO_RESET = 6,
    TG0WDT_SYS_RESET = 7,
    TG1WDT_SYS_RESET = 8,
    RTCWDT_SYS_RESET = 9,
    INTRUSION_RESET = 10,
    TGWDT_CPU_RESET = 11,
    SW_CPU_RESET = 12,
    RTCWDT_CPU_RESET = 13,
    EXT_CPU_RESET = 14,
    RTCWDT_BROWN_OUT_RESET = 15,
    RTCWDT_RTC_RESET = 16
} RESET_REASON;

typedef enum {
    NO_SLEEP = 0,
    EXT_EVENT0_TRIG = 0x00000001,
    EXT_EVENT1_TRIG = 0x00000002,
    GPIO_TRIG = 0x00000004,
    TIMER_EXPIRE = 0x00000008,
    SDIO_TRIG = 0x00000010,
    MAC_TRIG = 0x00000020,
    UART0_TRIG = 0x00000040,
    UART1_TRIG = 0x00000080,
    TOUCH_TRIG = 0x00000100,
    SAR_TRIG = 0x00000200,
    BT_TRIG = 0x00000400
} WAKEUP_REASON;

typedef enum {
    DISEN_WAKEUP = NO_SLEEP,
    EXT_EVENT0_TRIG_EN = EXT_EVENT0_TRIG,
    EXT_EVENT1_TRIG_EN = EXT_EVENT1_TRIG,
    GPIO_TRIG_EN = GPIO_TRIG,
    TIMER_EXPIRE_EN = TIMER_EXPIRE,
    SDIO_TRIG_EN = SDIO_TRIG,
    MAC_TRIG_EN = MAC_TRIG,
    UART0_TRIG_EN = UART0_TRIG,
    UART1_TRIG_EN = UART1_TRIG,
    TOUCH_TRIG_EN = TOUCH_TRIG,
    SAR_TRIG_EN = SAR_TRIG,
    BT_TRIG_EN = BT_TRIG
} WAKEUP_ENABLE;

typedef enum {
    NO_INT = 0,
    WAKEUP_INT = 0x00000001,
    REJECT_INT = 0x00000002,
    SDIO_IDLE_INT = 0x00000004,
    RTC_WDT_INT = 0x00000008,
    RTC_TIME_VALID_INT = 0x00000010
} RTC_INT_REASON;

typedef enum {
    DISEN_INT = 0,
    WAKEUP_INT_EN = WAKEUP_INT,
    REJECT_INT_EN = REJECT_INT,
    SDIO_IDLE_INT_EN = SDIO_IDLE_INT,
    RTC_WDT_INT_EN = RTC_WDT_INT,
    RTC_TIME_VALID_INT_EN = RTC_TIME_VALID_INT
} RTC_INT_EN;
# 157 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
RESET_REASON rtc_get_reset_reason(int cpu_no);
# 166 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
WAKEUP_REASON rtc_get_wakeup_cause(void);
# 177 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
uint32_t calc_rtc_memory_crc(uint32_t start_addr, uint32_t crc_len);
# 186 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
void set_rtc_memory_crc(void);
# 198 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
void __attribute__((noreturn)) software_reset(void);
# 210 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/rtc.h"
void software_reset_cpu(int cpu_no);
# 27 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h"
       

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_caps.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_caps.h"
       
# 18 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_reg.h" 1
# 19 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_struct.h"
typedef volatile struct uart_dev_s {
    union {
        struct {
            uint8_t rw_byte;
            uint8_t reserved[3];
        };
        uint32_t val;
    } fifo;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_st;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t rxfifo_full: 1;
            uint32_t txfifo_empty: 1;
            uint32_t parity_err: 1;
            uint32_t frm_err: 1;
            uint32_t rxfifo_ovf: 1;
            uint32_t dsr_chg: 1;
            uint32_t cts_chg: 1;
            uint32_t brk_det: 1;
            uint32_t rxfifo_tout: 1;
            uint32_t sw_xon: 1;
            uint32_t sw_xoff: 1;
            uint32_t glitch_det: 1;
            uint32_t tx_brk_done: 1;
            uint32_t tx_brk_idle_done: 1;
            uint32_t tx_done: 1;
            uint32_t rs485_parity_err: 1;
            uint32_t rs485_frm_err: 1;
            uint32_t rs485_clash: 1;
            uint32_t at_cmd_char_det: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } int_clr;
    union {
        struct {
            uint32_t div_int: 20;
            uint32_t div_frag: 4;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } clk_div;
    union {
        struct {
            uint32_t en: 1;
            uint32_t reserved1: 7;
            uint32_t glitch_filt: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } auto_baud;
    union {
        struct {
            uint32_t rxfifo_cnt: 8;
            uint32_t st_urx_out: 4;
            uint32_t reserved12: 1;
            uint32_t dsrn: 1;
            uint32_t ctsn: 1;
            uint32_t rxd: 1;
            uint32_t txfifo_cnt: 8;
            uint32_t st_utx_out: 4;
            uint32_t reserved28: 1;
            uint32_t dtrn: 1;
            uint32_t rtsn: 1;
            uint32_t txd: 1;
        };
        uint32_t val;
    } status;
    union {
        struct {
            uint32_t parity: 1;
            uint32_t parity_en: 1;
            uint32_t bit_num: 2;
            uint32_t stop_bit_num: 2;
            uint32_t sw_rts: 1;
            uint32_t sw_dtr: 1;
            uint32_t txd_brk: 1;
            uint32_t irda_dplx: 1;
            uint32_t irda_tx_en: 1;
            uint32_t irda_wctl: 1;
            uint32_t irda_tx_inv: 1;
            uint32_t irda_rx_inv: 1;
            uint32_t loopback: 1;
            uint32_t tx_flow_en: 1;
            uint32_t irda_en: 1;
            uint32_t rxfifo_rst: 1;
            uint32_t txfifo_rst: 1;
            uint32_t rxd_inv: 1;
            uint32_t cts_inv: 1;
            uint32_t dsr_inv: 1;
            uint32_t txd_inv: 1;
            uint32_t rts_inv: 1;
            uint32_t dtr_inv: 1;
            uint32_t clk_en: 1;
            uint32_t err_wr_mask: 1;
            uint32_t tick_ref_always_on: 1;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } conf0;
    union {
        struct {
            uint32_t rxfifo_full_thrhd: 7;
            uint32_t reserved7: 1;
            uint32_t txfifo_empty_thrhd: 7;
            uint32_t reserved15: 1;
            uint32_t rx_flow_thrhd: 7;
            uint32_t rx_flow_en: 1;
            uint32_t rx_tout_thrhd: 7;
            uint32_t rx_tout_en: 1;
        };
        uint32_t val;
    } conf1;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } lowpulse;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } highpulse;
    union {
        struct {
            uint32_t edge_cnt: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } rxd_cnt;
    union {
        struct {
            uint32_t sw_flow_con_en: 1;
            uint32_t xonoff_del: 1;
            uint32_t force_xon: 1;
            uint32_t force_xoff: 1;
            uint32_t send_xon: 1;
            uint32_t send_xoff: 1;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } flow_conf;
    union {
        struct {
            uint32_t active_threshold:10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } sleep_conf;
    union {
        struct {
            uint32_t xon_threshold: 8;
            uint32_t xoff_threshold: 8;
            uint32_t xon_char: 8;
            uint32_t xoff_char: 8;
        };
        uint32_t val;
    } swfc_conf;
    union {
        struct {
            uint32_t rx_idle_thrhd:10;
            uint32_t tx_idle_num: 10;
            uint32_t tx_brk_num: 8;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } idle_conf;
    union {
        struct {
            uint32_t en: 1;
            uint32_t dl0_en: 1;
            uint32_t dl1_en: 1;
            uint32_t tx_rx_en: 1;
            uint32_t rx_busy_tx_en: 1;
            uint32_t rx_dly_num: 1;
            uint32_t tx_dly_num: 4;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } rs485_conf;
    union {
        struct {
            uint32_t pre_idle_num:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_precnt;
    union {
        struct {
            uint32_t post_idle_num:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_postcnt;
    union {
        struct {
            uint32_t rx_gap_tout:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } at_cmd_gaptout;
    union {
        struct {
            uint32_t data: 8;
            uint32_t char_num: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } at_cmd_char;
    union {
        struct {
            uint32_t mem_pd: 1;
            uint32_t reserved1: 1;
            uint32_t reserved2: 1;
            uint32_t rx_size: 4;
            uint32_t tx_size: 4;
            uint32_t reserved11: 4;
            uint32_t rx_flow_thrhd_h3: 3;
            uint32_t rx_tout_thrhd_h3: 3;
            uint32_t xon_threshold_h2: 2;
            uint32_t xoff_threshold_h2: 2;
            uint32_t rx_mem_full_thrhd: 3;
            uint32_t tx_mem_empty_thrhd: 3;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } mem_conf;
    union {
        struct {
            uint32_t status:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } mem_tx_status;
    union {
        struct {
            uint32_t status: 24;
            uint32_t reserved24: 8;
        };
        struct {
            uint32_t reserved0: 2;
            uint32_t rd_addr: 11;
            uint32_t wr_addr: 11;
            uint32_t reserved: 8;
        };
        uint32_t val;
    } mem_rx_status;
    union {
        struct {
            uint32_t rx_cnt: 3;
            uint32_t tx_cnt: 3;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } mem_cnt_status;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pospulse;
    union {
        struct {
            uint32_t min_cnt: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } negpulse;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t date;
    uint32_t id;
} uart_dev_t;
extern uart_dev_t UART0;
extern uart_dev_t UART1;
extern uart_dev_t UART2;
# 20 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_channel.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/include/soc/uart_periph.h" 2
# 23 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 2
# 68 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
typedef enum {
    UART_LINE_STATUS_INT_FLAG = 0x06,
    UART_RCV_FIFO_INT_FLAG = 0x04,
    UART_RCV_TMOUT_INT_FLAG = 0x0C,
    UART_TXBUFF_EMPTY_INT_FLAG = 0x02
} UartIntType;

typedef enum {
    RCV_ONE_BYTE = 0x0,
    RCV_FOUR_BYTE = 0x1,
    RCV_EIGHT_BYTE = 0x2,
    RCV_FOURTEEN_BYTE = 0x3
} UartRcvFifoTrgLvl;

typedef enum {
    FIVE_BITS = 0x0,
    SIX_BITS = 0x1,
    SEVEN_BITS = 0x2,
    EIGHT_BITS = 0x3
} UartBitsNum4Char;

typedef enum {
    ONE_STOP_BIT = 1,
    ONE_HALF_STOP_BIT = 2,
    TWO_STOP_BIT = 3
} UartStopBitsNum;

typedef enum {
    NONE_BITS = 0,
    ODD_BITS = 2,
    EVEN_BITS = 3

} UartParityMode;

typedef enum {
    STICK_PARITY_DIS = 0,
    STICK_PARITY_EN = 2
} UartExistParity;

typedef enum {
    BIT_RATE_9600 = 9600,
    BIT_RATE_19200 = 19200,
    BIT_RATE_38400 = 38400,
    BIT_RATE_57600 = 57600,
    BIT_RATE_115200 = 115200,
    BIT_RATE_230400 = 230400,
    BIT_RATE_460800 = 460800,
    BIT_RATE_921600 = 921600
} UartBautRate;

typedef enum {
    NONE_CTRL,
    HARDWARE_CTRL,
    XON_XOFF_CTRL
} UartFlowCtrl;

typedef enum {
    EMPTY,
    UNDER_WRITE,
    WRITE_OVER
} RcvMsgBuffState;

typedef struct {
    uint8_t *pRcvMsgBuff;
    uint8_t *pWritePos;
    uint8_t *pReadPos;
    uint8_t TrigLvl;
    RcvMsgBuffState BuffState;
} RcvMsgBuff;

typedef struct {
    uint32_t TrxBuffSize;
    uint8_t *pTrxBuff;
} TrxMsgBuff;

typedef enum {
    BAUD_RATE_DET,
    WAIT_SYNC_FRM,
    SRCH_MSG_HEAD,
    RCV_MSG_BODY,
    RCV_ESC_CHAR,
} RcvMsgState;

typedef struct {
    UartBautRate baut_rate;
    UartBitsNum4Char data_bits;
    UartExistParity exist_parity;
    UartParityMode parity;
    UartStopBitsNum stop_bits;
    UartFlowCtrl flow_ctrl;
    uint8_t buff_uart_no;
    uint8_t tx_uart_no;
    RcvMsgBuff rcv_buff;

    RcvMsgState rcv_state;
    int received;
} UartDevice;
# 174 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uartAttach(void);
# 186 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void Uart_Init(uint8_t uart_no, uint32_t clock);
# 198 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uart_div_modify(uint8_t uart_no, uint32_t DivLatchValue);
# 211 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
int uart_baudrate_detect(uint8_t uart_no, uint8_t is_sync);
# 221 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uart_tx_switch(uint8_t uart_no);
# 231 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uart_buff_switch(uint8_t uart_no);
# 240 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS uart_tx_one_char(uint8_t TxChar);
# 250 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS uart_tx_one_char2(uint8_t TxChar);
# 259 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uart_tx_flush(uint8_t uart_no);
# 269 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
static inline void __attribute__((section(".iram1" "." "9"))) uart_tx_wait_idle(uint8_t uart_no) {
    uint32_t status;
    do {
        status = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 3 4
                ((
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
                "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 3 4
                ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h", 272, __func__, 
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
                "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 3 4
                ))
# 272 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
                ; } while(0);; (*((volatile uint32_t *)(((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C)))); });

    } while ((status & (((0xF)<<(24)) | ((0xFF)<<(16)))) != 0);
}
# 286 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS uart_rx_one_char(uint8_t *pRxChar);
# 296 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
char uart_rx_one_char_block(void);
# 308 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS UartRxString(uint8_t *pString, uint8_t MaxStrlen);
# 318 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void uart_rx_intr_handler(void *para);
# 331 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS uart_rx_readbuff( RcvMsgBuff *pRxBuff, uint8_t *pRxByte);
# 342 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS UartGetCmdLn(uint8_t *pCmdLn);
# 352 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
UartDevice *GetUartDevice(void);
# 364 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
void send_packet(uint8_t *p, int len);
# 379 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
int recv_packet(uint8_t *p, int len, uint8_t is_sync);
# 392 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS SendMsg(uint8_t *pData, uint16_t DataLen);
# 408 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
STATUS RcvMsg(uint8_t *pData, uint16_t MaxDataLen, uint8_t is_sync);

extern UartDevice UartDev;
# 28 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 33 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void *get_sp(void)
{
    void *sp;
    asm volatile ("mov %0, sp;" : "=r" (sp));
    return sp;
}





static inline void cpu_write_dtlb(uint32_t vpn, unsigned attr)
{
    asm volatile ("wdtlb  %1, %0; dsync\n" :: "r" (vpn), "r" (attr));
}


static inline void cpu_write_itlb(unsigned vpn, unsigned attr)
{
    asm volatile ("witlb  %1, %0; isync\n" :: "r" (vpn), "r" (attr));
}

static inline void cpu_init_memctl(void)
{

    uint32_t memctl = 0x00000000;
    asm volatile ("wsr %0, " "MEMCTL" : : "r" (memctl));;

}
# 74 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void cpu_configure_region_protection(void)
{
    const uint32_t pages_to_protect[] = {0x00000000, 0x80000000, 0xa0000000, 0xc0000000, 0xe0000000};
    for (int i = 0; i < sizeof(pages_to_protect)/sizeof(pages_to_protect[0]); ++i) {
        cpu_write_dtlb(pages_to_protect[i], 0xf);
        cpu_write_itlb(pages_to_protect[i], 0xf);
    }
    cpu_write_dtlb(0x20000000, 0);
    cpu_write_itlb(0x20000000, 0);
}





void esp_cpu_stall(int cpu_id);





void esp_cpu_unstall(int cpu_id);





void esp_cpu_reset(int cpu_id);
# 111 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"

# 111 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h" 3 4
_Bool 
# 111 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
    esp_cpu_in_ocd_debug_mode(void);
# 124 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline uint32_t esp_cpu_process_stack_pc(uint32_t pc)
{
    if (pc & 0x80000000) {

        pc = (pc & 0x3fffffff) | 0x40000000;
    }

    return pc - 3;
}
# 29 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 1
# 14 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
       


# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 2


# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h"
       

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_io_reg.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_io_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_io_struct.h"
typedef volatile struct rtc_io_dev_s {
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t data:18;
        };
        uint32_t val;
    } out;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1ts:18;
        };
        uint32_t val;
    } out_w1ts;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1tc:18;
        };
        uint32_t val;
    } out_w1tc;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t enable:18;
        };
        uint32_t val;
    } enable;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1ts:18;
        };
        uint32_t val;
    } enable_w1ts;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1tc:18;
        };
        uint32_t val;
    } enable_w1tc;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t status:18;
        };
        uint32_t val;
    } status;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1ts:18;
        };
        uint32_t val;
    } status_w1ts;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t w1tc:18;
        };
        uint32_t val;
    } status_w1tc;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t in:18;
        };
        uint32_t val;
    } in_val;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t pad_driver: 1;
            uint32_t reserved3: 4;
            uint32_t int_type: 3;
            uint32_t wakeup_enable: 1;
            uint32_t reserved11: 21;
        };
        uint32_t val;
    } pin[18];
    union {
        struct {
            uint32_t sel0: 5;
            uint32_t sel1: 5;
            uint32_t sel2: 5;
            uint32_t sel3: 5;
            uint32_t sel4: 5;
            uint32_t no_gating_12m: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } debug_sel;
    uint32_t dig_pad_hold;
    union {
        struct {
            uint32_t reserved0: 30;
            uint32_t hall_phase: 1;
            uint32_t xpd_hall: 1;
        };
        uint32_t val;
    } hall_sens;
    union {
        struct {
            uint32_t reserved0: 4;
            uint32_t sense4_fun_ie: 1;
            uint32_t sense4_slp_ie: 1;
            uint32_t sense4_slp_sel: 1;
            uint32_t sense4_fun_sel: 2;
            uint32_t sense3_fun_ie: 1;
            uint32_t sense3_slp_ie: 1;
            uint32_t sense3_slp_sel: 1;
            uint32_t sense3_fun_sel: 2;
            uint32_t sense2_fun_ie: 1;
            uint32_t sense2_slp_ie: 1;
            uint32_t sense2_slp_sel: 1;
            uint32_t sense2_fun_sel: 2;
            uint32_t sense1_fun_ie: 1;
            uint32_t sense1_slp_ie: 1;
            uint32_t sense1_slp_sel: 1;
            uint32_t sense1_fun_sel: 2;
            uint32_t sense4_mux_sel: 1;
            uint32_t sense3_mux_sel: 1;
            uint32_t sense2_mux_sel: 1;
            uint32_t sense1_mux_sel: 1;
            uint32_t sense4_hold: 1;
            uint32_t sense3_hold: 1;
            uint32_t sense2_hold: 1;
            uint32_t sense1_hold: 1;
        };
        uint32_t val;
    } sensor_pads;
    union {
        struct {
            uint32_t reserved0: 18;
            uint32_t adc2_fun_ie: 1;
            uint32_t adc2_slp_ie: 1;
            uint32_t adc2_slp_sel: 1;
            uint32_t adc2_fun_sel: 2;
            uint32_t adc1_fun_ie: 1;
            uint32_t adc1_slp_ie: 1;
            uint32_t adc1_slp_sel: 1;
            uint32_t adc1_fun_sel: 2;
            uint32_t adc2_mux_sel: 1;
            uint32_t adc1_mux_sel: 1;
            uint32_t adc2_hold: 1;
            uint32_t adc1_hold: 1;
        };
        uint32_t val;
    } adc_pad;
    union {
        struct {
            uint32_t reserved0: 10;
            uint32_t dac_xpd_force: 1;
            uint32_t fun_ie: 1;
            uint32_t slp_oe: 1;
            uint32_t slp_ie: 1;
            uint32_t slp_sel: 1;
            uint32_t fun_sel: 2;
            uint32_t mux_sel: 1;
            uint32_t xpd_dac: 1;
            uint32_t dac: 8;
            uint32_t rue: 1;
            uint32_t rde: 1;
            uint32_t hold: 1;
            uint32_t drv: 2;
        };
        uint32_t val;
    } pad_dac[2];
    union {
        struct {
            uint32_t reserved0: 1;
            uint32_t dbias_xtal_32k: 2;
            uint32_t dres_xtal_32k: 2;
            uint32_t x32p_fun_ie: 1;
            uint32_t x32p_slp_oe: 1;
            uint32_t x32p_slp_ie: 1;
            uint32_t x32p_slp_sel: 1;
            uint32_t x32p_fun_sel: 2;
            uint32_t x32n_fun_ie: 1;
            uint32_t x32n_slp_oe: 1;
            uint32_t x32n_slp_ie: 1;
            uint32_t x32n_slp_sel: 1;
            uint32_t x32n_fun_sel: 2;
            uint32_t x32p_mux_sel: 1;
            uint32_t x32n_mux_sel: 1;
            uint32_t xpd_xtal_32k: 1;
            uint32_t dac_xtal_32k: 2;
            uint32_t x32p_rue: 1;
            uint32_t x32p_rde: 1;
            uint32_t x32p_hold: 1;
            uint32_t x32p_drv: 2;
            uint32_t x32n_rue: 1;
            uint32_t x32n_rde: 1;
            uint32_t x32n_hold: 1;
            uint32_t x32n_drv: 2;
        };
        uint32_t val;
    } xtal_32k_pad;
    union {
        struct {
            uint32_t reserved0: 23;
            uint32_t dcur: 2;
            uint32_t drange: 2;
            uint32_t drefl: 2;
            uint32_t drefh: 2;
            uint32_t xpd_bias: 1;
        };
        uint32_t val;
    } touch_cfg;
    union {
        struct {
            uint32_t reserved0: 12;
            uint32_t to_gpio: 1;
            uint32_t fun_ie: 1;
            uint32_t slp_oe: 1;
            uint32_t slp_ie: 1;
            uint32_t slp_sel: 1;
            uint32_t fun_sel: 2;
            uint32_t mux_sel: 1;
            uint32_t xpd: 1;
            uint32_t tie_opt: 1;
            uint32_t start: 1;
            uint32_t dac: 3;
            uint32_t reserved26: 1;
            uint32_t rue: 1;
            uint32_t rde: 1;
            uint32_t drv: 2;
            uint32_t hold: 1;
        };
        uint32_t val;
    } touch_pad[10];
    union {
        struct {
            uint32_t reserved0: 27;
            uint32_t sel: 5;
        };
        uint32_t val;
    } ext_wakeup0;
    union {
        struct {
            uint32_t reserved0: 27;
            uint32_t sel: 5;
        };
        uint32_t val;
    } xtl_ext_ctr;
    union {
        struct {
            uint32_t reserved0: 23;
            uint32_t debug_bit_sel: 5;
            uint32_t scl_sel: 2;
            uint32_t sda_sel: 2;
        };
        uint32_t val;
    } sar_i2c_io;
    union {
        struct {
            uint32_t date: 28;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } date;
} rtc_io_dev_t;
extern rtc_io_dev_t RTCIO;
# 19 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 2

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_cntl_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_cntl_struct.h"
typedef volatile struct rtc_cntl_dev_s {
    union {
        struct {
            uint32_t sw_stall_appcpu_c0: 2;
            uint32_t sw_stall_procpu_c0: 2;
            uint32_t sw_appcpu_rst: 1;
            uint32_t sw_procpu_rst: 1;
            uint32_t bb_i2c_force_pd: 1;
            uint32_t bb_i2c_force_pu: 1;
            uint32_t bbpll_i2c_force_pd: 1;
            uint32_t bbpll_i2c_force_pu: 1;
            uint32_t bbpll_force_pd: 1;
            uint32_t bbpll_force_pu: 1;
            uint32_t xtl_force_pd: 1;
            uint32_t xtl_force_pu: 1;
            uint32_t bias_sleep_folw_8m: 1;
            uint32_t bias_force_sleep: 1;
            uint32_t bias_force_nosleep: 1;
            uint32_t bias_i2c_folw_8m: 1;
            uint32_t bias_i2c_force_pd: 1;
            uint32_t bias_i2c_force_pu: 1;
            uint32_t bias_core_folw_8m: 1;
            uint32_t bias_core_force_pd: 1;
            uint32_t bias_core_force_pu: 1;
            uint32_t xtl_force_iso: 1;
            uint32_t pll_force_iso: 1;
            uint32_t analog_force_iso: 1;
            uint32_t xtl_force_noiso: 1;
            uint32_t pll_force_noiso: 1;
            uint32_t analog_force_noiso: 1;
            uint32_t dg_wrap_force_rst: 1;
            uint32_t dg_wrap_force_norst: 1;
            uint32_t sw_sys_rst: 1;
        };
        uint32_t val;
    } options0;
    uint32_t slp_timer0;
    union {
        struct {
            uint32_t slp_val_hi: 16;
            uint32_t main_timer_alarm_en: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slp_timer1;
    union {
        struct {
            uint32_t reserved0: 30;
            uint32_t valid: 1;
            uint32_t update: 1;
        };
        uint32_t val;
    } time_update;
    uint32_t time0;
    union {
        struct {
            uint32_t time_hi:16;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } time1;
    union {
        struct {
            uint32_t reserved0: 20;
            uint32_t touch_wakeup_force_en: 1;
            uint32_t ulp_cp_wakeup_force_en: 1;
            uint32_t apb2rtc_bridge_sel: 1;
            uint32_t touch_slp_timer_en: 1;
            uint32_t ulp_cp_slp_timer_en: 1;
            uint32_t reserved25: 3;
            uint32_t sdio_active_ind: 1;
            uint32_t slp_wakeup: 1;
            uint32_t slp_reject: 1;
            uint32_t sleep_en: 1;
        };
        uint32_t val;
    } state0;
    union {
        struct {
            uint32_t cpu_stall_en: 1;
            uint32_t cpu_stall_wait: 5;
            uint32_t ck8m_wait: 8;
            uint32_t xtl_buf_wait: 10;
            uint32_t pll_buf_wait: 8;
        };
        uint32_t val;
    } timer1;
    union {
        struct {
            uint32_t reserved0: 15;
            uint32_t ulpcp_touch_start_wait: 9;
            uint32_t min_time_ck8m_off: 8;
        };
        uint32_t val;
    } timer2;
    union {
        struct {
            uint32_t wifi_wait_timer: 9;
            uint32_t wifi_powerup_timer: 7;
            uint32_t rom_ram_wait_timer: 9;
            uint32_t rom_ram_powerup_timer: 7;
        };
        uint32_t val;
    } timer3;
    union {
        struct {
            uint32_t rtc_wait_timer: 9;
            uint32_t rtc_powerup_timer: 7;
            uint32_t dg_wrap_wait_timer: 9;
            uint32_t dg_wrap_powerup_timer: 7;
        };
        uint32_t val;
    } timer4;
    union {
        struct {
            uint32_t ulp_cp_subtimer_prediv: 8;
            uint32_t min_slp_val: 8;
            uint32_t rtcmem_wait_timer: 9;
            uint32_t rtcmem_powerup_timer: 7;
        };
        uint32_t val;
    } timer5;
    union {
        struct {
            uint32_t reserved0: 23;
            uint32_t plla_force_pd: 1;
            uint32_t plla_force_pu: 1;
            uint32_t bbpll_cal_slp_start: 1;
            uint32_t pvtmon_pu: 1;
            uint32_t txrf_i2c_pu: 1;
            uint32_t rfrx_pbus_pu: 1;
            uint32_t reserved29: 1;
            uint32_t ckgen_i2c_pu: 1;
            uint32_t pll_i2c_pu: 1;
        };
        uint32_t val;
    } ana_conf;
    union {
        struct {
            uint32_t reset_cause_procpu: 6;
            uint32_t reset_cause_appcpu: 6;
            uint32_t appcpu_stat_vector_sel: 1;
            uint32_t procpu_stat_vector_sel: 1;
            uint32_t reserved14: 18;
        };
        uint32_t val;
    } reset_state;
    union {
        struct {
            uint32_t wakeup_cause: 11;
            uint32_t rtc_wakeup_ena: 11;
            uint32_t gpio_wakeup_filter: 1;
            uint32_t reserved23: 9;
        };
        uint32_t val;
    } wakeup_state;
    union {
        struct {
            uint32_t slp_wakeup: 1;
            uint32_t slp_reject: 1;
            uint32_t sdio_idle: 1;
            uint32_t rtc_wdt: 1;
            uint32_t rtc_time_valid: 1;
            uint32_t rtc_ulp_cp: 1;
            uint32_t rtc_touch: 1;
            uint32_t rtc_brown_out: 1;
            uint32_t rtc_main_timer: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t slp_wakeup: 1;
            uint32_t slp_reject: 1;
            uint32_t sdio_idle: 1;
            uint32_t rtc_wdt: 1;
            uint32_t rtc_time_valid: 1;
            uint32_t rtc_ulp_cp: 1;
            uint32_t rtc_touch: 1;
            uint32_t rtc_brown_out: 1;
            uint32_t rtc_main_timer: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t slp_wakeup: 1;
            uint32_t slp_reject: 1;
            uint32_t sdio_idle: 1;
            uint32_t rtc_wdt: 1;
            uint32_t rtc_time_valid: 1;
            uint32_t rtc_sar: 1;
            uint32_t rtc_touch: 1;
            uint32_t rtc_brown_out: 1;
            uint32_t rtc_main_timer: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } int_st;
    union {
        struct {
            uint32_t slp_wakeup: 1;
            uint32_t slp_reject: 1;
            uint32_t sdio_idle: 1;
            uint32_t rtc_wdt: 1;
            uint32_t rtc_time_valid: 1;
            uint32_t rtc_sar: 1;
            uint32_t rtc_touch: 1;
            uint32_t rtc_brown_out: 1;
            uint32_t rtc_main_timer: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } int_clr;
    uint32_t rtc_store0;
    uint32_t rtc_store1;
    uint32_t rtc_store2;
    uint32_t rtc_store3;
    union {
        struct {
            uint32_t reserved0: 30;
            uint32_t ctr_lv: 1;
            uint32_t ctr_en: 1;
        };
        uint32_t val;
    } ext_xtl_conf;
    union {
        struct {
            uint32_t reserved0: 30;
            uint32_t wakeup0_lv: 1;
            uint32_t wakeup1_lv: 1;
        };
        uint32_t val;
    } ext_wakeup_conf;
    union {
        struct {
            uint32_t reserved0: 24;
            uint32_t gpio_reject_en: 1;
            uint32_t sdio_reject_en: 1;
            uint32_t light_slp_reject_en: 1;
            uint32_t deep_slp_reject_en: 1;
            uint32_t reject_cause: 4;
        };
        uint32_t val;
    } slp_reject_conf;
    union {
        struct {
            uint32_t reserved0: 29;
            uint32_t cpusel_conf: 1;
            uint32_t cpuperiod_sel: 2;
        };
        uint32_t val;
    } cpu_period_conf;
    union {
        struct {
            uint32_t reserved0: 22;
            uint32_t sdio_act_dnum:10;
        };
        uint32_t val;
    } sdio_act_conf;
    union {
        struct {
            uint32_t reserved0: 4;
            uint32_t ck8m_div: 2;
            uint32_t enb_ck8m: 1;
            uint32_t enb_ck8m_div: 1;
            uint32_t dig_xtal32k_en: 1;
            uint32_t dig_clk8m_d256_en: 1;
            uint32_t dig_clk8m_en: 1;
            uint32_t ck8m_dfreq_force: 1;
            uint32_t ck8m_div_sel: 3;
            uint32_t xtal_force_nogating: 1;
            uint32_t ck8m_force_nogating: 1;
            uint32_t ck8m_dfreq: 8;
            uint32_t ck8m_force_pd: 1;
            uint32_t ck8m_force_pu: 1;
            uint32_t soc_clk_sel: 2;
            uint32_t fast_clk_rtc_sel: 1;
            uint32_t ana_clk_rtc_sel: 2;
        };
        uint32_t val;
    } clk_conf;
    union {
        struct {
            uint32_t reserved0: 21;
            uint32_t sdio_pd_en: 1;
            uint32_t sdio_force: 1;
            uint32_t sdio_tieh: 1;
            uint32_t reg1p8_ready: 1;
            uint32_t drefl_sdio: 2;
            uint32_t drefm_sdio: 2;
            uint32_t drefh_sdio: 2;
            uint32_t xpd_sdio: 1;
        };
        uint32_t val;
    } sdio_conf;
    union {
        struct {
            uint32_t reserved0: 24;
            uint32_t dbg_atten: 2;
            uint32_t enb_sck_xtal: 1;
            uint32_t inc_heartbeat_refresh: 1;
            uint32_t dec_heartbeat_period: 1;
            uint32_t inc_heartbeat_period: 1;
            uint32_t dec_heartbeat_width: 1;
            uint32_t rst_bias_i2c: 1;
        };
        uint32_t val;
    } bias_conf;
    union {
        struct {
            uint32_t reserved0: 7;
            uint32_t sck_dcap_force: 1;
            uint32_t dig_dbias_slp: 3;
            uint32_t dig_dbias_wak: 3;
            uint32_t sck_dcap: 8;
            uint32_t rtc_dbias_slp: 3;
            uint32_t rtc_dbias_wak: 3;
            uint32_t rtc_dboost_force_pd: 1;
            uint32_t rtc_dboost_force_pu: 1;
            uint32_t rtc_force_pd: 1;
            uint32_t rtc_force_pu: 1;
        };
        uint32_t val;
    } rtc;
    union {
        struct {
            uint32_t fastmem_force_noiso: 1;
            uint32_t fastmem_force_iso: 1;
            uint32_t slowmem_force_noiso: 1;
            uint32_t slowmem_force_iso: 1;
            uint32_t rtc_force_iso: 1;
            uint32_t force_noiso: 1;
            uint32_t fastmem_folw_cpu: 1;
            uint32_t fastmem_force_lpd: 1;
            uint32_t fastmem_force_lpu: 1;
            uint32_t slowmem_folw_cpu: 1;
            uint32_t slowmem_force_lpd: 1;
            uint32_t slowmem_force_lpu: 1;
            uint32_t fastmem_force_pd: 1;
            uint32_t fastmem_force_pu: 1;
            uint32_t fastmem_pd_en: 1;
            uint32_t slowmem_force_pd: 1;
            uint32_t slowmem_force_pu: 1;
            uint32_t slowmem_pd_en: 1;
            uint32_t pwc_force_pd: 1;
            uint32_t pwc_force_pu: 1;
            uint32_t pd_en: 1;
            uint32_t reserved21: 11;
        };
        uint32_t val;
    } rtc_pwc;
    union {
        struct {
            uint32_t reserved0: 3;
            uint32_t lslp_mem_force_pd: 1;
            uint32_t lslp_mem_force_pu: 1;
            uint32_t rom0_force_pd: 1;
            uint32_t rom0_force_pu: 1;
            uint32_t inter_ram0_force_pd: 1;
            uint32_t inter_ram0_force_pu: 1;
            uint32_t inter_ram1_force_pd: 1;
            uint32_t inter_ram1_force_pu: 1;
            uint32_t inter_ram2_force_pd: 1;
            uint32_t inter_ram2_force_pu: 1;
            uint32_t inter_ram3_force_pd: 1;
            uint32_t inter_ram3_force_pu: 1;
            uint32_t inter_ram4_force_pd: 1;
            uint32_t inter_ram4_force_pu: 1;
            uint32_t wifi_force_pd: 1;
            uint32_t wifi_force_pu: 1;
            uint32_t dg_wrap_force_pd: 1;
            uint32_t dg_wrap_force_pu: 1;
            uint32_t reserved21: 3;
            uint32_t rom0_pd_en: 1;
            uint32_t inter_ram0_pd_en: 1;
            uint32_t inter_ram1_pd_en: 1;
            uint32_t inter_ram2_pd_en: 1;
            uint32_t inter_ram3_pd_en: 1;
            uint32_t inter_ram4_pd_en: 1;
            uint32_t wifi_pd_en: 1;
            uint32_t dg_wrap_pd_en: 1;
        };
        uint32_t val;
    } dig_pwc;
    union {
        struct {
            uint32_t reserved0: 7;
            uint32_t dig_iso_force_off: 1;
            uint32_t dig_iso_force_on: 1;
            uint32_t dg_pad_autohold: 1;
            uint32_t clr_dg_pad_autohold: 1;
            uint32_t dg_pad_autohold_en: 1;
            uint32_t dg_pad_force_noiso: 1;
            uint32_t dg_pad_force_iso: 1;
            uint32_t dg_pad_force_unhold: 1;
            uint32_t dg_pad_force_hold: 1;
            uint32_t rom0_force_iso: 1;
            uint32_t rom0_force_noiso: 1;
            uint32_t inter_ram0_force_iso: 1;
            uint32_t inter_ram0_force_noiso: 1;
            uint32_t inter_ram1_force_iso: 1;
            uint32_t inter_ram1_force_noiso: 1;
            uint32_t inter_ram2_force_iso: 1;
            uint32_t inter_ram2_force_noiso: 1;
            uint32_t inter_ram3_force_iso: 1;
            uint32_t inter_ram3_force_noiso: 1;
            uint32_t inter_ram4_force_iso: 1;
            uint32_t inter_ram4_force_noiso: 1;
            uint32_t wifi_force_iso: 1;
            uint32_t wifi_force_noiso: 1;
            uint32_t dg_wrap_force_iso: 1;
            uint32_t dg_wrap_force_noiso: 1;
        };
        uint32_t val;
    } dig_iso;
    union {
        struct {
            uint32_t reserved0: 7;
            uint32_t pause_in_slp: 1;
            uint32_t appcpu_reset_en: 1;
            uint32_t procpu_reset_en: 1;
            uint32_t flashboot_mod_en: 1;
            uint32_t sys_reset_length: 3;
            uint32_t cpu_reset_length: 3;
            uint32_t level_int_en: 1;
            uint32_t edge_int_en: 1;
            uint32_t stg3: 3;
            uint32_t stg2: 3;
            uint32_t stg1: 3;
            uint32_t stg0: 3;
            uint32_t en: 1;
        };
        uint32_t val;
    } wdt_config0;
    uint32_t wdt_config1;
    uint32_t wdt_config2;
    uint32_t wdt_config3;
    uint32_t wdt_config4;
    union {
        struct {
            uint32_t reserved0: 31;
            uint32_t feed: 1;
        };
        uint32_t val;
    } wdt_feed;
    uint32_t wdt_wprotect;
    union {
        struct {
            uint32_t reserved0: 29;
            uint32_t ent_rtc: 1;
            uint32_t dtest_rtc: 2;
        };
        uint32_t val;
    } test_mux;
    union {
        struct {
            uint32_t reserved0: 20;
            uint32_t appcpu_c1: 6;
            uint32_t procpu_c1: 6;
        };
        uint32_t val;
    } sw_cpu_stall;
    uint32_t store4;
    uint32_t store5;
    uint32_t store6;
    uint32_t store7;
    uint32_t diag0;
    uint32_t diag1;
    union {
        struct {
            uint32_t adc1_hold_force: 1;
            uint32_t adc2_hold_force: 1;
            uint32_t pdac1_hold_force: 1;
            uint32_t pdac2_hold_force: 1;
            uint32_t sense1_hold_force: 1;
            uint32_t sense2_hold_force: 1;
            uint32_t sense3_hold_force: 1;
            uint32_t sense4_hold_force: 1;
            uint32_t touch_pad0_hold_force: 1;
            uint32_t touch_pad1_hold_force: 1;
            uint32_t touch_pad2_hold_force: 1;
            uint32_t touch_pad3_hold_force: 1;
            uint32_t touch_pad4_hold_force: 1;
            uint32_t touch_pad5_hold_force: 1;
            uint32_t touch_pad6_hold_force: 1;
            uint32_t touch_pad7_hold_force: 1;
            uint32_t x32p_hold_force: 1;
            uint32_t x32n_hold_force: 1;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } hold_force;
    union {
        struct {
            uint32_t ext_wakeup1_sel: 18;
            uint32_t ext_wakeup1_status_clr: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } ext_wakeup1;
    union {
        struct {
            uint32_t ext_wakeup1_status:18;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } ext_wakeup1_status;
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t close_flash_ena: 1;
            uint32_t pd_rf_ena: 1;
            uint32_t rst_wait: 10;
            uint32_t rst_ena: 1;
            uint32_t thres: 3;
            uint32_t ena: 1;
            uint32_t det: 1;
        };
        uint32_t val;
    } brown_out;
    uint32_t reserved_39;
    uint32_t reserved_3d;
    uint32_t reserved_41;
    uint32_t reserved_45;
    uint32_t reserved_49;
    uint32_t reserved_4d;
    union {
        struct {
            uint32_t date: 28;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } date;
} rtc_cntl_dev_t;
extern rtc_cntl_dev_t RTCCNTL;
# 21 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_gpio_channel.h" 1
# 22 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 2
# 35 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h"
typedef struct {
    uint32_t reg;
    uint32_t mux;
    uint32_t func;
    uint32_t ie;
    uint32_t pullup;
    uint32_t pulldown;
    uint32_t slpsel;
    uint32_t slpie;
    uint32_t hold;
    uint32_t hold_force;
    uint32_t drv_v;
    uint32_t drv_s;
    int rtc_num;
} rtc_gpio_desc_t;
# 58 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h"
extern const rtc_gpio_desc_t rtc_gpio_desc[40];

typedef volatile struct {
    uint32_t reserved0: 13;
    uint32_t fun_ie: 1;
    uint32_t slp_oe: 1;
    uint32_t slp_ie: 1;
    uint32_t slp_sel: 1;
    uint32_t fun_sel: 2;
    uint32_t mux_sel: 1;
    uint32_t reserved20: 7;
    uint32_t rue: 1;
    uint32_t rde: 1;
    uint32_t drv: 2;
    uint32_t reserved31: 1;
} rtc_gpio_info_t;

extern rtc_gpio_info_t* rtc_gpio_reg[18];
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 2
# 61 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
typedef enum {
    RTC_XTAL_FREQ_AUTO = 0,
    RTC_XTAL_FREQ_40M = 40,
    RTC_XTAL_FREQ_26M = 26,
    RTC_XTAL_FREQ_24M = 24,
} rtc_xtal_freq_t;




typedef enum {
    RTC_CPU_FREQ_XTAL = 0,
    RTC_CPU_FREQ_80M = 1,
    RTC_CPU_FREQ_160M = 2,
    RTC_CPU_FREQ_240M = 3,
    RTC_CPU_FREQ_2M = 4,
} rtc_cpu_freq_t;




typedef enum {
    RTC_CPU_FREQ_SRC_XTAL,
    RTC_CPU_FREQ_SRC_PLL,
    RTC_CPU_FREQ_SRC_8M,
    RTC_CPU_FREQ_SRC_APLL
} rtc_cpu_freq_src_t;




typedef struct rtc_cpu_freq_config_s {
    rtc_cpu_freq_src_t source;
    uint32_t source_freq_mhz;
    uint32_t div;
    uint32_t freq_mhz;
} rtc_cpu_freq_config_t;




typedef enum {
    RTC_SLOW_FREQ_RTC = 0,
    RTC_SLOW_FREQ_32K_XTAL = 1,
    RTC_SLOW_FREQ_8MD256 = 2,
} rtc_slow_freq_t;




typedef enum {
    RTC_FAST_FREQ_XTALD4 = 0,
    RTC_FAST_FREQ_8M = 1,
} rtc_fast_freq_t;







typedef enum {
    RTC_CAL_RTC_MUX = 0,
    RTC_CAL_8MD256 = 1,
    RTC_CAL_32K_XTAL = 2
} rtc_cal_sel_t;




typedef struct rtc_clk_config_s {
    rtc_xtal_freq_t xtal_freq : 8;
    rtc_cpu_freq_t cpu_freq_mhz : 10;
    rtc_fast_freq_t fast_freq : 1;
    rtc_slow_freq_t slow_freq : 2;
    uint32_t clk_8m_div : 3;
    uint32_t slow_clk_dcap : 8;
    uint32_t clk_8m_dfreq : 8;
} rtc_clk_config_t;
# 168 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_init(rtc_clk_config_t cfg);
# 179 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_xtal_freq_t rtc_clk_xtal_freq_get(void);
# 189 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_xtal_freq_update(rtc_xtal_freq_t xtal_freq);





void rtc_clk_32k_enable(
# 195 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                       _Bool 
# 195 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
                            en);




void rtc_clk_32k_enable_external(void);






# 206 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 206 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_32k_enabled(void);
# 218 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_32k_bootstrap(uint32_t cycle);
# 236 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_8m_enable(
# 236 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                      _Bool 
# 236 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
                           clk_8m_en, 
# 236 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                                      _Bool 
# 236 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
                                           d256_en);






# 242 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 242 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8m_enabled(void);






# 248 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 248 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8md256_enabled(void);
# 266 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apll_enable(
# 266 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
                        _Bool 
# 266 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
                             enable, uint32_t sdm0, uint32_t sdm1,
        uint32_t sdm2, uint32_t o_div);





void rtc_clk_slow_freq_set(rtc_slow_freq_t slow_freq);





rtc_slow_freq_t rtc_clk_slow_freq_get(void);
# 293 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_slow_freq_get_hz(void);





void rtc_clk_fast_freq_set(rtc_fast_freq_t fast_freq);





rtc_fast_freq_t rtc_clk_fast_freq_get(void);






 void rtc_clk_cpu_freq_to_config(rtc_cpu_freq_t cpu_freq, rtc_cpu_freq_config_t* out_config);







 
# 320 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 320 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_mhz_to_config(uint32_t freq_mhz, rtc_cpu_freq_config_t* out_config);
# 334 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config(const rtc_cpu_freq_config_t* config);
# 356 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config_fast(const rtc_cpu_freq_config_t* config);





 void rtc_clk_cpu_freq_get_config(rtc_cpu_freq_config_t* out_config);
# 371 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_xtal(void);
# 386 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apb_freq_update(uint32_t apb_freq);





uint32_t rtc_clk_apb_freq_get(void);
# 409 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 418 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 427 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period);
# 436 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period);
# 449 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_get(void);
# 458 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_wait_for_slow_cycle(void);




typedef struct rtc_sleep_config_s {
    uint32_t lslp_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_follow_cpu : 1;
    uint32_t rtc_fastmem_pd_en : 1;
    uint32_t rtc_slowmem_pd_en : 1;
    uint32_t rtc_peri_pd_en : 1;
    uint32_t wifi_pd_en : 1;
    uint32_t rom_mem_pd_en : 1;
    uint32_t deep_slp : 1;
    uint32_t wdt_flashboot_mod_en : 1;
    uint32_t dig_dbias_wak : 3;
    uint32_t dig_dbias_slp : 3;
    uint32_t rtc_dbias_wak : 3;
    uint32_t rtc_dbias_slp : 3;
    uint32_t lslp_meminf_pd : 1;
    uint32_t vddsdio_pd_en : 1;
    uint32_t xtal_fpu : 1;
} rtc_sleep_config_t;
# 532 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_sleep_init(rtc_sleep_config_t cfg);







void rtc_sleep_set_wakeup_time(uint64_t t);
# 580 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt);




typedef struct rtc_config_s {
    uint32_t ck8m_wait : 8;
    uint32_t xtal_wait : 8;
    uint32_t pll_wait : 8;
    uint32_t clkctl_init : 1;
    uint32_t pwrctl_init : 1;
    uint32_t rtc_dboost_fpd : 1;
} rtc_config_t;
# 613 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_init(rtc_config_t cfg);







typedef struct rtc_vddsdio_config_s {
    uint32_t force : 1;
    uint32_t enable : 1;
    uint32_t tieh : 1;
    uint32_t drefh : 2;
    uint32_t drefm : 2;
    uint32_t drefl : 2;
} rtc_vddsdio_config_t;
# 637 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_vddsdio_config_t rtc_vddsdio_get_config(void);
# 646 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_vddsdio_set_config(rtc_vddsdio_config_t config);
# 30 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h"
       


# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/periph_defs.h" 1
# 22 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
typedef enum {
    PERIPH_LEDC_MODULE = 0,
    PERIPH_UART0_MODULE,
    PERIPH_UART1_MODULE,
    PERIPH_UART2_MODULE,
    PERIPH_I2C0_MODULE,
    PERIPH_I2C1_MODULE,
    PERIPH_I2S0_MODULE,
    PERIPH_I2S1_MODULE,
    PERIPH_TIMG0_MODULE,
    PERIPH_TIMG1_MODULE,
    PERIPH_PWM0_MODULE,
    PERIPH_PWM1_MODULE,
    PERIPH_PWM2_MODULE,
    PERIPH_PWM3_MODULE,
    PERIPH_UHCI0_MODULE,
    PERIPH_UHCI1_MODULE,
    PERIPH_RMT_MODULE,
    PERIPH_PCNT_MODULE,
    PERIPH_SPI_MODULE,
    PERIPH_HSPI_MODULE,
    PERIPH_VSPI_MODULE,
    PERIPH_SPI_DMA_MODULE,
    PERIPH_SDMMC_MODULE,
    PERIPH_SDIO_SLAVE_MODULE,
    PERIPH_CAN_MODULE,
    PERIPH_EMAC_MODULE,
    PERIPH_RNG_MODULE,
    PERIPH_WIFI_MODULE,
    PERIPH_BT_MODULE,
    PERIPH_WIFI_BT_COMMON_MODULE,
    PERIPH_BT_BASEBAND_MODULE,
    PERIPH_BT_LC_MODULE,
    PERIPH_AES_MODULE,
    PERIPH_SHA_MODULE,
    PERIPH_RSA_MODULE,
} periph_module_t;
# 19 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h" 2


# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_caps.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_caps.h"
       
# 22 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/spi_reg.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h" 2
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
# 24 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h" 2
# 47 "/home/dieter/Development/esp-idf/components/soc/include/soc/spi_periph.h"
typedef struct {
    const uint8_t spiclk_out;
    const uint8_t spiclk_in;
    const uint8_t spid_out;
    const uint8_t spiq_out;
    const uint8_t spiwp_out;
    const uint8_t spihd_out;
    const uint8_t spid_in;
    const uint8_t spiq_in;
    const uint8_t spiwp_in;
    const uint8_t spihd_in;
    const uint8_t spics_out[3];
    const uint8_t spics_in;
    const uint8_t spidqs_out;
    const uint8_t spidqs_in;
    const uint8_t spicd_out;
    const uint8_t spicd_in;
    const uint8_t spiclk_iomux_pin;
    const uint8_t spid_iomux_pin;
    const uint8_t spiq_iomux_pin;
    const uint8_t spiwp_iomux_pin;
    const uint8_t spihd_iomux_pin;
    const uint8_t spics0_iomux_pin;
    const uint8_t irq;
    const uint8_t irq_dma;
    const periph_module_t module;
    const int func;
    spi_dev_t *hw;
} spi_signal_conn_t;

extern const spi_signal_conn_t spi_periph_signal[3];
# 31 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 2
# 32 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h" 1
# 50 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
       
# 62 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
typedef enum {
    RTC_WDT_STAGE0 = 0,
    RTC_WDT_STAGE1 = 1,
    RTC_WDT_STAGE2 = 2,
    RTC_WDT_STAGE3 = 3
} rtc_wdt_stage_t;


typedef enum {
    RTC_WDT_STAGE_ACTION_OFF = 0,
    RTC_WDT_STAGE_ACTION_INTERRUPT = 1,
    RTC_WDT_STAGE_ACTION_RESET_CPU = 2,
    RTC_WDT_STAGE_ACTION_RESET_SYSTEM = 3,
    RTC_WDT_STAGE_ACTION_RESET_RTC = 4
} rtc_wdt_stage_action_t;


typedef enum {
    RTC_WDT_SYS_RESET_SIG = 0,
    RTC_WDT_CPU_RESET_SIG = 1
} rtc_wdt_reset_sig_t;


typedef enum {
    RTC_WDT_LENGTH_100ns = 0,
    RTC_WDT_LENGTH_200ns = 1,
    RTC_WDT_LENGTH_300ns = 2,
    RTC_WDT_LENGTH_400ns = 3,
    RTC_WDT_LENGTH_500ns = 4,
    RTC_WDT_LENGTH_800ns = 5,
    RTC_WDT_LENGTH_1_6us = 6,
    RTC_WDT_LENGTH_3_2us = 7
} rtc_wdt_length_sig_t;








# 102 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h" 3 4
_Bool 
# 102 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
    rtc_wdt_get_protect_status(void);




void rtc_wdt_protect_on(void);




void rtc_wdt_protect_off(void);




void rtc_wdt_enable(void);
# 126 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
void rtc_wdt_flashboot_mode_enable(void);




void rtc_wdt_disable(void);






void rtc_wdt_feed(void);
# 150 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_time(rtc_wdt_stage_t stage, unsigned int timeout_ms);
# 162 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_get_timeout(rtc_wdt_stage_t stage, unsigned int* timeout_ms);
# 174 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_stage(rtc_wdt_stage_t stage, rtc_wdt_stage_action_t stage_sel);
# 186 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
esp_err_t rtc_wdt_set_length_of_reset_signal(rtc_wdt_reset_sig_t reset_src, rtc_wdt_length_sig_t reset_signal_length);








# 194 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h" 3 4
_Bool 
# 194 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_wdt.h"
    rtc_wdt_is_on(void);
# 33 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
       






# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/esp_attr.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 2
# 61 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
typedef struct {
    const char *name;
    uint32_t caps[3];
    
# 64 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 64 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        aliased_iram;
    
# 65 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 65 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        startup_stack;
} soc_memory_type_desc_t;


extern const soc_memory_type_desc_t soc_memory_types[];
extern const size_t soc_memory_type_count;



typedef struct
{
    intptr_t start;
    size_t size;
    size_t type;
    intptr_t iram_address;
} soc_memory_region_t;

extern const soc_memory_region_t soc_memory_regions[];
extern const size_t soc_memory_region_count;




typedef struct
{
    intptr_t start;
    intptr_t end;
} soc_reserved_region_t;
# 136 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
size_t soc_get_available_memory_regions(soc_memory_region_t *regions);





size_t soc_get_available_memory_region_max_count(void);

inline static 
# 144 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 144 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "10"))) esp_ptr_dma_capable(const void *p)
{
    return (intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000;
}

inline static 
# 149 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 149 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "11"))) esp_ptr_word_aligned(const void *p)
{
    return ((intptr_t)p) % 4 == 0;
}

inline static 
# 154 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 154 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "12"))) esp_ptr_executable(const void *p)
{
    intptr_t ip = (intptr_t) p;
    return (ip >= 0x400D0000 && ip < 0x40400000)
        || (ip >= 0x40080000 && ip < 0x400A0000)
        || (ip >= 0x400C0000 && ip < 0x400C2000);
}

inline static 
# 162 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 162 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "13"))) esp_ptr_byte_accessible(const void *p)
{
    intptr_t ip = (intptr_t) p;
    
# 165 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 165 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = (ip >= 0x3FF90000 && ip < 0x40000000);







    return r;
}

inline static 
# 177 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 177 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "14"))) esp_ptr_internal(const void *p) {
    
# 178 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 178 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x400C2000);
    r |= ((intptr_t)p >= 0x50000000 && (intptr_t)p < 0x50002000);
    return r;
}


inline static 
# 185 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 185 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "15"))) esp_ptr_external_ram(const void *p) {
    return ((intptr_t)p >= 0x3F800000 && (intptr_t)p < 0x3FC00000);
}

inline static 
# 189 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 189 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "16"))) esp_ptr_in_iram(const void *p) {

    return ((intptr_t)p >= 0x40080000 && (intptr_t)p < 0x400A0000);



}

inline static 
# 197 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 197 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "17"))) esp_ptr_in_drom(const void *p) {
    return ((intptr_t)p >= 0x3F400000 && (intptr_t)p < 0x3F800000);
}

inline static 
# 201 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 201 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "18"))) esp_ptr_in_dram(const void *p) {
    return ((intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000);
}

inline static 
# 205 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 205 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "19"))) esp_ptr_in_diram_dram(const void *p) {
    return ((intptr_t)p >= 0x3FFE0000 && (intptr_t)p < 0x40000000);
}

inline static 
# 209 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 209 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "20"))) esp_ptr_in_diram_iram(const void *p) {
    return ((intptr_t)p >= 0x400A0000 && (intptr_t)p < 0x400C0000);
}


inline static 
# 214 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 214 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "21"))) esp_stack_ptr_is_sane(uint32_t sp)
{

    return !(sp < 0x3FFAE000 + 0x10 || sp > 0x40000000 - 0x10 || ((sp & 0xF) != 0));
}
# 34 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h" 1
# 26 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
typedef enum {
    RTC_GPIO_MODE_INPUT_ONLY ,
    RTC_GPIO_MODE_OUTPUT_ONLY,
    RTC_GPIO_MODE_INPUT_OUTPUT,
    RTC_GPIO_MODE_DISABLED,
} rtc_gpio_mode_t;
# 46 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
inline static 
# 46 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h" 3 4
             _Bool 
# 46 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
                  rtc_gpio_is_valid_gpio(gpio_num_t gpio_num)
{

    return gpio_num < 40
        && rtc_gpio_desc[gpio_num].reg != 0;



}
# 69 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_init(gpio_num_t gpio_num);
# 80 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_deinit(gpio_num_t gpio_num);
# 92 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
uint32_t rtc_gpio_get_level(gpio_num_t gpio_num);
# 104 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 119 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_direction(gpio_num_t gpio_num, rtc_gpio_mode_t mode);
# 133 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_en(gpio_num_t gpio_num);
# 147 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_en(gpio_num_t gpio_num);
# 161 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_dis(gpio_num_t gpio_num);
# 175 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_dis(gpio_num_t gpio_num);
# 190 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_en(gpio_num_t gpio_num);
# 204 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_dis(gpio_num_t gpio_num);
# 222 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_isolate(gpio_num_t gpio_num);
# 233 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
void rtc_gpio_force_hold_dis_all(void);
# 245 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 257 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 269 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 278 "/home/dieter/Development/esp-idf/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_wakeup_disable(gpio_num_t gpio_num);
# 35 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 1 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 1
# 15 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
       
# 25 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
# 1 "/home/dieter/Development/esp-idf/components/driver/include/driver/periph_ctrl.h" 1
# 34 "/home/dieter/Development/esp-idf/components/driver/include/driver/periph_ctrl.h"
void periph_module_enable(periph_module_t periph);
# 46 "/home/dieter/Development/esp-idf/components/driver/include/driver/periph_ctrl.h"
void periph_module_disable(periph_module_t periph);
# 60 "/home/dieter/Development/esp-idf/components/driver/include/driver/periph_ctrl.h"
void periph_module_reset(periph_module_t periph);
# 26 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h" 1 3 4
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 106 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
int xt_clock_freq(void) __attribute__((deprecated));







# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 115 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/projdefs.h" 1
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 1
# 87 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 96 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 83 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/crosscore_int.h" 1
# 27 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/crosscore_int.h"
void esp_crosscore_int_init(void);
# 40 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/crosscore_int.h"
void esp_crosscore_int_send_yield(int core_id);
# 52 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/crosscore_int.h"
void esp_crosscore_int_send_freq_switch(int core_id);
# 84 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
       
# 53 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
typedef struct esp_timer* esp_timer_handle_t;





typedef void (*esp_timer_cb_t)(void* arg);





typedef enum {
    ESP_TIMER_TASK,







} esp_timer_dispatch_t;




typedef struct {
    esp_timer_cb_t callback;
    void* arg;
    esp_timer_dispatch_t dispatch_method;
    const char* name;
} esp_timer_create_args_t;
# 98 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_init(void);
# 109 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_deinit(void);
# 127 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_create(const esp_timer_create_args_t* create_args,
                           esp_timer_handle_t* out_handle);
# 142 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_start_once(esp_timer_handle_t timer, uint64_t timeout_us);
# 157 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_start_periodic(esp_timer_handle_t timer, uint64_t period);
# 170 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_stop(esp_timer_handle_t timer);
# 183 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_delete(esp_timer_handle_t timer);






int64_t esp_timer_get_time(void);






int64_t esp_timer_get_next_alarm(void);
# 227 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
esp_err_t esp_timer_dump(FILE* stream);
# 85 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2


# 1 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 1
# 14 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
       



# 1 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h" 1
# 14 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
       
# 30 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
typedef struct multi_heap_info *multi_heap_handle_t;
# 41 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_malloc(multi_heap_handle_t heap, size_t size);
# 50 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_free(multi_heap_handle_t heap, void *p);
# 62 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_realloc(multi_heap_handle_t heap, void *p, size_t size);
# 73 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_get_allocated_size(multi_heap_handle_t heap, void *p);
# 87 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
multi_heap_handle_t multi_heap_register(void *start, size_t size);
# 101 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_set_lock(multi_heap_handle_t heap, void* lock);







void multi_heap_dump(multi_heap_handle_t heap);
# 121 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"

# 121 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h" 3 4
_Bool 
# 121 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
    multi_heap_check(multi_heap_handle_t heap, 
# 121 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h" 3 4
                                               _Bool 
# 121 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
                                                    print_errors);
# 135 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_free_size(multi_heap_handle_t heap);
# 147 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_minimum_free_size(multi_heap_handle_t heap);


typedef struct {
    size_t total_free_bytes;
    size_t total_allocated_bytes;
    size_t largest_free_block;
    size_t minimum_free_bytes;
    size_t allocated_blocks;
    size_t free_blocks;
    size_t total_blocks;
} multi_heap_info_t;
# 167 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_get_info(multi_heap_handle_t heap, multi_heap_info_t *info);
# 19 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 2
# 55 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc(size_t size, uint32_t caps);
# 67 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_free( void *ptr);
# 86 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc( void *ptr, size_t size, int caps);
# 102 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc(size_t n, size_t size, uint32_t caps);
# 116 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_total_size(uint32_t caps);
# 132 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_free_size( uint32_t caps );
# 150 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_minimum_free_size( uint32_t caps );
# 162 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_largest_free_block( uint32_t caps );
# 178 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_get_info( multi_heap_info_t *info, uint32_t caps );
# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_print_heap_info( uint32_t caps );
# 205 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 205 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 205 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_all(
# 205 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                  _Bool 
# 205 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                       print_errors);
# 223 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 223 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 223 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity(uint32_t caps, 
# 223 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                             _Bool 
# 223 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                                  print_errors);
# 246 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 246 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 246 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_addr(intptr_t addr, 
# 246 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                                  _Bool 
# 246 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                                       print_errors);
# 259 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_malloc_extmem_enable(size_t limit);
# 274 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc_prefer( size_t size, size_t num, ... );
# 285 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc_prefer( void *ptr, size_t size, size_t num, ... );
# 296 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc_prefer( size_t n, size_t size, size_t num, ... );
# 315 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump(uint32_t caps);
# 325 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump_all(void);
# 338 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_allocated_size( void *ptr );
# 88 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 117 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 132 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2






typedef struct {
# 150 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
 uint32_t owner;




 uint32_t count;




} portMUX_TYPE;
# 185 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR(void);
# 215 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 255 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 267 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"

# 267 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 267 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 328 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED(void) {
 unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;});
 ;
 return state;
}
# 356 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {

    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
# 381 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
}
# 406 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID(void);
# 432 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 449 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 460 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
extern void esp_vApplicationIdleHook( void );
extern void esp_vApplicationTickHook( void );






void _xt_coproc_release(volatile void * coproc_sa_base);
void vApplicationSleep( TickType_t xExpectedIdleTime );
# 97 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 127 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 128 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 1
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h"
       
# 54 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h"
const char* esp_get_idf_version(void);
# 25 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2







typedef enum {
    ESP_MAC_WIFI_STA,
    ESP_MAC_WIFI_SOFTAP,
    ESP_MAC_BT,
    ESP_MAC_ETH,
} esp_mac_type_t;
# 52 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
typedef enum {
    ESP_RST_UNKNOWN,
    ESP_RST_POWERON,
    ESP_RST_EXT,
    ESP_RST_SW,
    ESP_RST_PANIC,
    ESP_RST_INT_WDT,
    ESP_RST_TASK_WDT,
    ESP_RST_WDT,
    ESP_RST_DEEPSLEEP,
    ESP_RST_BROWNOUT,
    ESP_RST_SDIO,
} esp_reset_reason_t;




typedef void (*shutdown_handler_t)(void);
# 82 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_register_shutdown_handler(shutdown_handler_t handle);
# 92 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_unregister_shutdown_handler(shutdown_handler_t handle);
# 103 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
void esp_restart(void) __attribute__ ((noreturn));





esp_reset_reason_t esp_reset_reason(void);
# 119 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t esp_get_free_heap_size(void);






uint32_t esp_get_minimum_free_heap_size( void );
# 144 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t esp_random(void);
# 154 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
void esp_fill_random(void *buf, size_t len);
# 175 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_base_mac_addr_set(const uint8_t *mac);
# 185 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_base_mac_addr_get(uint8_t *mac);
# 201 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_efuse_mac_get_custom(uint8_t *mac);
# 210 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_efuse_mac_get_default(uint8_t *mac);
# 224 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type);
# 240 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac);




typedef enum {
    CHIP_ESP32 = 1,
    CHIP_ESP32S2BETA = 2,
} esp_chip_model_t;
# 259 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
typedef struct {
    esp_chip_model_t model;
    uint32_t features;
    uint8_t cores;
    uint8_t revision;
} esp_chip_info_t;





void esp_chip_info(esp_chip_info_t* out_info);
# 129 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 137 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;
# 158 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext(void);





BaseType_t xPortInterruptedFromISRContext(void);
# 202 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t __attribute__((section(".iram1" "." "22"))) xPortGetCoreID(void) {
    uint32_t id;
    __asm__ __volatile__ (
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);


static inline 
# 221 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 3 4
             _Bool 
# 221 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
                  __attribute__((section(".iram1" "." "23"))) xPortCanYield(void)
{
    uint32_t ps_reg = 0;


    asm volatile ("rsr %0, " "PS" : "=r" (ps_reg));;
# 235 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
    return ((ps_reg & 0x0000000F) == 0);
}





void uxPortCompareSetExtram(volatile uint32_t *addr, uint32_t compare, uint32_t *set);
# 106 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 863 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 899 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;

  xMPU_SETTINGS xDummy2;

 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
    UBaseType_t uxDummyCoreId;

  void *pxDummy8;


  UBaseType_t uxDummy9;
        uint32_t OldInterruptState;





  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];

  void *pvDummyLocalStorageCallBack[ 1 ];






  struct _reent xDummy17;


  uint32_t ulDummy18;
  uint32_t ucDummy19;



  uint8_t uxDummy20;


} StaticTask_t;
# 963 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];






  void *pvDummy7;







 portMUX_TYPE muxDummy;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1008 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;
# 1021 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
 portMUX_TYPE muxDummy;

} StaticEventGroup_t;
# 1039 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];
# 1054 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
} StaticTimer_t;
# 27 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 1
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h" 1
# 88 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 613 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 725 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 906 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) ;
# 917 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 930 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 940 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1267 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1347 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;






BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1374 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAltGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, BaseType_t xCopyPosition );
BaseType_t xQueueAltGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, BaseType_t xJustPeeking );
# 1390 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1488 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1548 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1572 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1591 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1627 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;



void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 78 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 28 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2

# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h" 1
# 78 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 1 3 4
# 34 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 1 3 4
# 194 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/limits.h" 1 3 4
# 195 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 2 3 4
# 8 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include-fixed/limits.h" 2 3 4
# 79 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h" 2

# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h" 1
# 181 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;


_Static_assert(sizeof(StaticListItem_t) == sizeof(ListItem_t), "StaticListItem_t != ListItem_t");


struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;


_Static_assert(sizeof(StaticMiniListItem_t) == sizeof(MiniListItem_t), "StaticMiniListItem_t != MiniListItem_t");






typedef struct xLIST
{

 UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;


_Static_assert(sizeof(StaticList_t) == sizeof(List_t), "StaticList_t != List_t");
# 399 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialise( List_t * const pxList );
# 410 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 423 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 444 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 459 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 81 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h" 2
# 110 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;





typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint32_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;





typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint32_t usStackHighWaterMark;



} TaskStatus_t;





typedef struct xTASK_SNAPSHOT
{
 void *pxTCB;
 StackType_t *pxTopOfStack;
 StackType_t *pxEndOfStack;

} TaskSnapshot_t;




typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 337 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pvTaskCode,
          const char * const pcName,
          const uint32_t usStackDepth,
          void * const pvParameters,
          UBaseType_t uxPriority,
          TaskHandle_t * const pvCreatedTask,
          const BaseType_t xCoreID);
# 432 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
 static inline __attribute__((section(".iram1" "." "24"))) BaseType_t xTaskCreate(
   TaskFunction_t pvTaskCode,
   const char * const pcName,
   const uint32_t usStackDepth,
   void * const pvParameters,
   UBaseType_t uxPriority,
   TaskHandle_t * const pvCreatedTask)
 {
  return xTaskCreatePinnedToCore( pvTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pvCreatedTask, 0x7fffffff );
 }
# 676 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask ) ;
# 722 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 763 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 811 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 867 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 910 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;
# 921 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 937 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 975 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1024 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1069 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1094 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1124 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStartScheduler( void ) ;
# 1177 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskEndScheduler( void ) ;
# 1227 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspendAll( void ) ;
# 1277 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1290 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1304 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1316 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1328 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1347 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1364 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
uint8_t* pxTaskGetStackStart( TaskHandle_t xTask) ;
# 1408 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
# 1424 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






  typedef void (*TlsDeleteCallbackFunction_t)( int, void * );
# 1456 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
  void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1470 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1481 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1494 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandleForCPU( UBaseType_t cpuid );
# 1595 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1638 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1688 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1762 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );
# 1848 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1921 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 2018 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 2085 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 2106 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2139 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2153 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
# 2179 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2190 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;
# 2211 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetCurrentTaskHandleForCPU( BaseType_t cpuid );





void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





BaseType_t xTaskGetAffinity( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2274 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2290 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 2307 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz );
# 30 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h" 1
# 31 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h" 1
# 33 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
typedef void * RingbufHandle_t;

typedef enum {





    RINGBUF_TYPE_NOSPLIT = 0,






    RINGBUF_TYPE_ALLOWSPLIT,






    RINGBUF_TYPE_BYTEBUF,
    RINGBUF_TYPE_MAX,
} RingbufferType_t;
# 94 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
RingbufHandle_t xRingbufferCreate(size_t xBufferSize, RingbufferType_t xBufferType);
# 107 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
RingbufHandle_t xRingbufferCreateNoSplit(size_t xItemSize, size_t xItemNum);
# 154 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferSend(RingbufHandle_t xRingbuffer,
                           const void *pvItem,
                           size_t xItemSize,
                           TickType_t xTicksToWait);
# 179 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferSendFromISR(RingbufHandle_t xRingbuffer,
                                  const void *pvItem,
                                  size_t xItemSize,
                                  BaseType_t *pxHigherPriorityTaskWoken);
# 210 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferSendAcquire(RingbufHandle_t xRingbuffer, void **ppvItem, size_t xItemSize, TickType_t xTicksToWait);
# 226 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferSendComplete(RingbufHandle_t xRingbuffer, void *pvItem);
# 244 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void *xRingbufferReceive(RingbufHandle_t xRingbuffer, size_t *pxItemSize, TickType_t xTicksToWait);
# 263 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void *xRingbufferReceiveFromISR(RingbufHandle_t xRingbuffer, size_t *pxItemSize);
# 287 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferReceiveSplit(RingbufHandle_t xRingbuffer,
                                   void **ppvHeadItem,
                                   void **ppvTailItem,
                                   size_t *pxHeadItemSize,
                                   size_t *pxTailItemSize,
                                   TickType_t xTicksToWait);
# 315 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferReceiveSplitFromISR(RingbufHandle_t xRingbuffer,
                                          void **ppvHeadItem,
                                          void **ppvTailItem,
                                          size_t *pxHeadItemSize,
                                          size_t *pxTailItemSize);
# 342 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpTo(RingbufHandle_t xRingbuffer,
                             size_t *pxItemSize,
                             TickType_t xTicksToWait,
                             size_t xMaxSize);
# 368 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpToFromISR(RingbufHandle_t xRingbuffer, size_t *pxItemSize, size_t xMaxSize);
# 378 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void vRingbufferReturnItem(RingbufHandle_t xRingbuffer, void *pvItem);
# 390 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void vRingbufferReturnItemFromISR(RingbufHandle_t xRingbuffer, void *pvItem, BaseType_t *pxHigherPriorityTaskWoken);
# 401 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void vRingbufferDelete(RingbufHandle_t xRingbuffer);
# 419 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
size_t xRingbufferGetMaxItemSize(RingbufHandle_t xRingbuffer);
# 440 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
size_t xRingbufferGetCurFreeSize(RingbufHandle_t xRingbuffer);
# 455 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferAddToQueueSetRead(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet);
# 472 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferCanRead(RingbufHandle_t xRingbuffer, QueueSetMemberHandle_t xMember);
# 487 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
BaseType_t xRingbufferRemoveFromQueueSetRead(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet);
# 503 "/home/dieter/Development/esp-idf/components/esp_ringbuf/include/freertos/ringbuf.h"
void vRingbufferGetInfo(RingbufHandle_t xRingbuffer,
                        UBaseType_t *uxFree,
                        UBaseType_t *uxRead,
                        UBaseType_t *uxWrite,
                        UBaseType_t *uxAcquire,
                        UBaseType_t *uxItemsWaiting);






void xRingbufferPrintInfo(RingbufHandle_t xRingbuffer);
# 32 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 2
# 49 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
typedef enum {
    UART_MODE_UART = 0x00,
    UART_MODE_RS485_HALF_DUPLEX = 0x01,
    UART_MODE_IRDA = 0x02,
    UART_MODE_RS485_COLLISION_DETECT = 0x03,
    UART_MODE_RS485_APP_CTRL = 0x04,
} uart_mode_t;




typedef enum {
    UART_DATA_5_BITS = 0x0,
    UART_DATA_6_BITS = 0x1,
    UART_DATA_7_BITS = 0x2,
    UART_DATA_8_BITS = 0x3,
    UART_DATA_BITS_MAX = 0x4,
} uart_word_length_t;




typedef enum {
    UART_STOP_BITS_1 = 0x1,
    UART_STOP_BITS_1_5 = 0x2,
    UART_STOP_BITS_2 = 0x3,
    UART_STOP_BITS_MAX = 0x4,
} uart_stop_bits_t;




typedef enum {
    UART_NUM_0 = 0x0,
    UART_NUM_1 = 0x1,

    UART_NUM_2 = 0x2,

    UART_NUM_MAX,
} uart_port_t;




typedef enum {
    UART_PARITY_DISABLE = 0x0,
    UART_PARITY_EVEN = 0x2,
    UART_PARITY_ODD = 0x3
} uart_parity_t;




typedef enum {
    UART_HW_FLOWCTRL_DISABLE = 0x0,
    UART_HW_FLOWCTRL_RTS = 0x1,
    UART_HW_FLOWCTRL_CTS = 0x2,
    UART_HW_FLOWCTRL_CTS_RTS = 0x3,
    UART_HW_FLOWCTRL_MAX = 0x4,
} uart_hw_flowcontrol_t;




typedef struct {
    int baud_rate;
    uart_word_length_t data_bits;
    uart_parity_t parity;
    uart_stop_bits_t stop_bits;
    uart_hw_flowcontrol_t flow_ctrl;
    uint8_t rx_flow_ctrl_thresh;
    
# 120 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 3 4
   _Bool 
# 120 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
        use_ref_tick;
} uart_config_t;




typedef struct {
    uint32_t intr_enable_mask;
    uint8_t rx_timeout_thresh;
    uint8_t txfifo_empty_intr_thresh;
    uint8_t rxfifo_full_thresh;
} uart_intr_config_t;




typedef enum {
    UART_DATA,
    UART_BREAK,
    UART_BUFFER_FULL,
    UART_FIFO_OVF,
    UART_FRAME_ERR,
    UART_PARITY_ERR,
    UART_DATA_BREAK,
    UART_PATTERN_DET,
    UART_EVENT_MAX,
} uart_event_type_t;




typedef struct {
    uart_event_type_t type;
    size_t size;
} uart_event_t;

typedef intr_handle_t uart_isr_handle_t;
# 168 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_word_length(uart_port_t uart_num, uart_word_length_t data_bit);
# 180 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_word_length(uart_port_t uart_num, uart_word_length_t* data_bit);
# 192 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_stop_bits(uart_port_t uart_num, uart_stop_bits_t stop_bits);
# 204 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_stop_bits(uart_port_t uart_num, uart_stop_bits_t* stop_bits);
# 216 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_parity(uart_port_t uart_num, uart_parity_t parity_mode);
# 229 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_parity(uart_port_t uart_num, uart_parity_t* parity_mode);
# 241 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_baudrate(uart_port_t uart_num, uint32_t baudrate);
# 254 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_baudrate(uart_port_t uart_num, uint32_t* baudrate);
# 269 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_line_inverse(uart_port_t uart_num, uint32_t inverse_mask);
# 283 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t flow_ctrl, uint8_t rx_thresh);
# 297 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
 esp_err_t uart_set_sw_flow_ctrl(uart_port_t uart_num, 
# 297 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 3 4
                                                      _Bool 
# 297 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
                                                           enable, uint8_t rx_thresh_xon, uint8_t rx_thresh_xoff);
# 309 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t* flow_ctrl);
# 322 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_clear_intr_status(uart_port_t uart_num, uint32_t clr_mask);
# 335 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_intr_mask(uart_port_t uart_num, uint32_t enable_mask);
# 348 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_intr_mask(uart_port_t uart_num, uint32_t disable_mask);
# 359 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_rx_intr(uart_port_t uart_num);
# 370 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_rx_intr(uart_port_t uart_num);
# 381 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_tx_intr(uart_port_t uart_num);
# 394 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_tx_intr(uart_port_t uart_num, int enable, int thresh);
# 413 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_isr_register(uart_port_t uart_num, void (*fn)(void*), void * arg, int intr_alloc_flags, uart_isr_handle_t *handle);
# 425 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_isr_free(uart_port_t uart_num);
# 446 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_pin(uart_port_t uart_num, int tx_io_num, int rx_io_num, int rts_io_num, int cts_io_num);
# 459 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_rts(uart_port_t uart_num, int level);
# 471 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_dtr(uart_port_t uart_num, int level);
# 484 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_tx_idle_num(uart_port_t uart_num, uint16_t idle_num);
# 496 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_param_config(uart_port_t uart_num, const uart_config_t *uart_config);
# 508 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_intr_config(uart_port_t uart_num, const uart_intr_config_t *intr_conf);
# 532 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_driver_install(uart_port_t uart_num, int rx_buffer_size, int tx_buffer_size, int queue_size, QueueHandle_t* uart_queue, int intr_alloc_flags);
# 543 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_driver_delete(uart_port_t uart_num);
# 556 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_wait_tx_done(uart_port_t uart_num, TickType_t ticks_to_wait);
# 572 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_tx_chars(uart_port_t uart_num, const char* buffer, uint32_t len);
# 591 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_write_bytes(uart_port_t uart_num, const char* src, size_t size);
# 613 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_write_bytes_with_break(uart_port_t uart_num, const char* src, size_t size, int brk_len);
# 627 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_read_bytes(uart_port_t uart_num, uint8_t* buf, uint32_t length, TickType_t ticks_to_wait);
# 640 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_flush(uart_port_t uart_num);
# 651 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_flush_input(uart_port_t uart_num);
# 663 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_buffered_data_len(uart_port_t uart_num, size_t* size);
# 676 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_disable_pattern_det_intr(uart_port_t uart_num);
# 700 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_pattern_det_intr(uart_port_t uart_num, char pattern_chr, uint8_t chr_num, int chr_tout, int post_idle, int pre_idle) __attribute__((deprecated));
# 722 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_enable_pattern_det_baud_intr(uart_port_t uart_num, char pattern_chr, uint8_t chr_num, int chr_tout, int post_idle, int pre_idle);
# 741 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_pattern_pop_pos(uart_port_t uart_num);
# 760 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
int uart_pattern_get_pos(uart_port_t uart_num);
# 774 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_pattern_queue_reset(uart_port_t uart_num, int queue_length);
# 786 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_mode(uart_port_t uart_num, uart_mode_t mode);
# 802 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_rx_timeout(uart_port_t uart_num, const uint8_t tout_thresh);
# 817 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_collision_flag(uart_port_t uart_num, 
# 817 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h" 3 4
                                                       _Bool
# 817 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
                                                           * collision_flag);
# 852 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_set_wakeup_threshold(uart_port_t uart_num, int wakeup_threshold);
# 867 "/home/dieter/Development/esp-idf/components/driver/include/driver/uart.h"
esp_err_t uart_get_wakeup_threshold(uart_port_t uart_num, int* out_wakeup_threshold);







void uart_wait_tx_idle_polling(uart_port_t uart_num);
# 36 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 2
# 65 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
typedef struct {
    esp_sleep_pd_option_t pd_options[ESP_PD_DOMAIN_MAX];
    uint64_t sleep_duration;
    uint32_t wakeup_triggers : 11;
    uint32_t ext1_trigger_mode : 1;
    uint32_t ext1_rtc_gpio_mask : 18;
    uint32_t ext0_trigger_level : 1;
    uint32_t ext0_rtc_gpio_num : 5;
    uint32_t sleep_time_adjustment;
    uint64_t rtc_ticks_at_sleep_start;
} sleep_config_t;

static sleep_config_t s_config = {
    .pd_options = { ESP_PD_OPTION_AUTO, ESP_PD_OPTION_AUTO, ESP_PD_OPTION_AUTO },
    .wakeup_triggers = 0
};



static 
# 84 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
      _Bool 
# 84 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           s_light_sleep_wakeup = 
# 84 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                  0
# 84 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                       ;



static _lock_t lock_rtc_memory_crc;

static const char* TAG = "sleep";

static uint32_t get_power_down_flags(void);
static void ext0_wakeup_prepare(void);
static void ext1_wakeup_prepare(void);
static void timer_wakeup_prepare(void);




esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void)
{
    _lock_acquire(&lock_rtc_memory_crc);
    uint32_t stored_crc = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                         ((
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                         "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                         ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 103, __func__, 
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                         "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))"
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                         ))
# 103 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                         ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))); });
    set_rtc_memory_crc();
    uint32_t calc_crc = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                       ((
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                       "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 105, __func__, 
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                       "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))"
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                       ))
# 105 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                       ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); 
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 106, __func__, 
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff48000 + 0xbc))) >= 0x3ff00000) && (((0x3ff48000 + 0xbc))) <= 0x3ff13FFC))"
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 106 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xbc))) = (stored_crc); });
    _lock_release(&lock_rtc_memory_crc);

    if(stored_crc != calc_crc) {
        return 
# 110 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ((void *)0)
# 110 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                  ;
    }
    esp_deep_sleep_wake_stub_fn_t stub_ptr = (esp_deep_sleep_wake_stub_fn_t) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                                                            ((
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                                                            "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC))
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                                                            ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 112, __func__, 
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                                                            "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC))"
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                                                            ))
# 112 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                                                            ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xb8))); });
    if (!esp_ptr_executable(stub_ptr)) {
        return 
# 114 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ((void *)0)
# 114 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                  ;
    }
    return stub_ptr;
}

void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub)
{
    _lock_acquire(&lock_rtc_memory_crc);
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); 
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC))
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 122, __func__, 
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff48000 + 0xb8))) >= 0x3ff00000) && (((0x3ff48000 + 0xb8))) <= 0x3ff13FFC))"
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 122 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xb8))) = ((uint32_t)new_stub); });
    set_rtc_memory_crc();
    _lock_release(&lock_rtc_memory_crc);
}

void __attribute__((section(".rtc.text" "." "25"))) esp_default_wake_deep_sleep(void) {

    (*(volatile uint32_t *)((0x3ff00000 + 0x044))) = ((*(volatile uint32_t *)((0x3ff00000 + 0x044))) | ((1UL << (13))))
                                                                                    ;
    (*(volatile uint32_t *)((0x3ff00000 + 0x044))) = ((*(volatile uint32_t *)((0x3ff00000 + 0x044))) & (~((1UL << (13)))))
                                                                                       ;



    ets_update_cpu_frequency_rom(ets_get_detected_xtal_freq() / 1000000);


    ets_delay_us(2000);

}

void __attribute__((weak, alias("esp_default_wake_deep_sleep"))) esp_wake_deep_sleep(void);

void esp_deep_sleep(uint64_t time_in_us)
{
    esp_sleep_enable_timer_wakeup(time_in_us);
    esp_deep_sleep_start();
}

static void __attribute__((section(".iram1" "." "26"))) flush_uarts(void)
{
    for (int i = 0; i < 3; ++i) {
        uart_tx_wait_idle(i);
    }
}

static void __attribute__((section(".iram1" "." "27"))) suspend_uarts(void)
{
    for (int i = 0; i < 3; ++i) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 161, __func__, 
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 161 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34)) |= (((1UL << (3))))); });
        while (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); 
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ((
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 162, __func__, 
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ))
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              ; } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ((
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 162, __func__, 
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
              ))
# 162 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
              ; } while(0);; (*(volatile uint32_t *)(((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))); }) >> (24)) & (0xF)); }) != 0) {
            ;
        }
    }
}

static void __attribute__((section(".iram1" "." "28"))) resume_uarts(void)
{
    for (int i = 0; i < 3; ++i) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); 
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 171, __func__, 
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 171 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34)) &= ~(((1UL << (3))))); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 172, __func__, 
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 172 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34)) |= (((1UL << (2))))); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); 
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 173, __func__, 
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 173 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34)) &= ~(((1UL << (2))))); });
    }
}

static uint32_t __attribute__((section(".iram1" "." "29"))) esp_sleep_start(uint32_t pd_flags)
{



    if (pd_flags & (1UL << (0))) {
        flush_uarts();
    } else {
        suspend_uarts();
    }


    rtc_cpu_freq_config_t cpu_freq_config;
    rtc_clk_cpu_freq_get_config(&cpu_freq_config);
    rtc_clk_cpu_freq_set_xtal();


    if (s_config.wakeup_triggers & (1UL << (0))) {
        ext0_wakeup_prepare();
    }
    if (s_config.wakeup_triggers & (1UL << (1))) {
        ext1_wakeup_prepare();
    }

    if (s_config.wakeup_triggers & (1UL << (9))) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 202, __func__, 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC))"
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x18)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x18)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x18)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x18)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x18)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x18)))) <= 0x3ff13FFC))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 202, __func__, 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x18)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x18)))) <= 0x3ff13FFC))"
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x18))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 202, __func__, 
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x18))) >= 0x3ff00000) && (((0x3ff48000 + 0x18))) <= 0x3ff13FFC))"
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 202 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x18)))); })|(((1UL << (21)))))); }); });
    }


    rtc_sleep_config_t config = { .lslp_mem_inf_fpu = 0, .rtc_mem_inf_fpu = 0, .rtc_mem_inf_follow_cpu = ((pd_flags) & (1UL << (4))) ? 1 : 0, .rtc_fastmem_pd_en = ((pd_flags) & (1UL << (3))) ? 1 : 0, .rtc_slowmem_pd_en = ((pd_flags) & (1UL << (2))) ? 1 : 0, .rtc_peri_pd_en = ((pd_flags) & (1UL << (1))) ? 1 : 0, .wifi_pd_en = 0, .rom_mem_pd_en = 0, .deep_slp = ((pd_flags) & (1UL << (0))) ? 1 : 0, .wdt_flashboot_mod_en = 0, .dig_dbias_wak = 4, .dig_dbias_slp = 0, .rtc_dbias_wak = 4, .rtc_dbias_slp = 0, .lslp_meminf_pd = 1, .vddsdio_pd_en = ((pd_flags) & (1UL << (5))) ? 1 : 0, .xtal_fpu = ((pd_flags) & (1UL << (6))) ? 0 : 1 };;
    rtc_sleep_init(config);


    if ((s_config.wakeup_triggers & (1UL << (3))) &&
        s_config.sleep_duration > 0) {
        timer_wakeup_prepare();
    }
    uint32_t result = rtc_sleep_start(s_config.wakeup_triggers, 0);


    rtc_clk_cpu_freq_set_config(&cpu_freq_config);


    resume_uarts();

    return result;
}

void __attribute__((section(".iram1" "." "30"))) esp_deep_sleep_start(void)
{

    s_config.rtc_ticks_at_sleep_start = rtc_time_get();
    esp_sync_counters_rtc_and_frc();

    if (esp_get_deep_sleep_wake_stub() == 
# 231 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                         ((void *)0)
# 231 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                             ) {
        esp_set_deep_sleep_wake_stub(esp_wake_deep_sleep);
    }


    uint32_t pd_flags = get_power_down_flags();


    s_config.sleep_time_adjustment = (250 + 100 * 240 / 160);


    esp_sleep_start((1UL << (0)) | (1UL << (5)) | (1UL << (6)) | pd_flags);



    while (1) {
        ;
    }
}





static esp_err_t esp_light_sleep_inner(uint32_t pd_flags,
        uint32_t flash_enable_time_us,
        rtc_vddsdio_config_t vddsdio_config) __attribute__((section(".iram1" "." "31"))) __attribute__((noinline));

static esp_err_t esp_light_sleep_inner(uint32_t pd_flags,
        uint32_t flash_enable_time_us,
        rtc_vddsdio_config_t vddsdio_config)
{

    esp_err_t err = esp_sleep_start(pd_flags);



    if (vddsdio_config.force) {
        rtc_vddsdio_set_config(vddsdio_config);
    }


    if (pd_flags & (1UL << (5))) {

        ets_delay_us(flash_enable_time_us);
    }
    return err;
}

esp_err_t esp_light_sleep_start(void)
{
    static portMUX_TYPE light_sleep_lock = { .owner = 0xB33FFFFF, .count = 0, };
    vTaskEnterCritical(&light_sleep_lock);




    esp_timer_impl_lock();
    s_config.rtc_ticks_at_sleep_start = rtc_time_get();
    uint64_t frc_time_at_start = esp_timer_get_time();
    esp_dport_access_stall_other_cpu_start();


    uint32_t pd_flags = get_power_down_flags();



    s_config.sleep_time_adjustment = (250 + 30 * 240 / 160);



    const uint32_t flash_enable_time_us = 700
                                          + 2000;


    const uint32_t vddsdio_pd_sleep_duration = 
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                              ((
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                              2000
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                              ) > (
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                              flash_enable_time_us + (250 + 30 * 240 / 160) + 200
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                              ) ? (
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                              2000
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                              ) : (
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                              flash_enable_time_us + (250 + 30 * 240 / 160) + 200
# 306 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                                              ))
                                                                                          
# 307 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                                                                         ;

    if (s_config.sleep_duration > vddsdio_pd_sleep_duration) {
        pd_flags |= (1UL << (5));
        s_config.sleep_time_adjustment += flash_enable_time_us;
    }


    rtc_vddsdio_config_t vddsdio_config = rtc_vddsdio_get_config();


    
# 318 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   _Bool 
# 318 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
        wdt_was_enabled = rtc_wdt_is_on();
    if (!wdt_was_enabled) {
        rtc_wdt_protect_off();
        rtc_wdt_disable();
        rtc_wdt_set_length_of_reset_signal(RTC_WDT_SYS_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        rtc_wdt_set_length_of_reset_signal(RTC_WDT_CPU_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        rtc_wdt_set_stage(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_RESET_RTC);
        rtc_wdt_set_time(RTC_WDT_STAGE0, 1000);
        rtc_wdt_enable();
        rtc_wdt_protect_on();
    }


    esp_err_t err = esp_light_sleep_inner(pd_flags,
            flash_enable_time_us, vddsdio_config);

    s_light_sleep_wakeup = 
# 334 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                          1
# 334 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                              ;


    uint64_t rtc_ticks_at_end = rtc_time_get();
    uint64_t frc_time_at_end = esp_timer_get_time();

    uint64_t rtc_time_diff = rtc_time_slowclk_to_us(rtc_ticks_at_end - s_config.rtc_ticks_at_sleep_start,
                                    esp_clk_slowclk_cal_get());
    uint64_t frc_time_diff = frc_time_at_end - frc_time_at_start;

    int64_t time_diff = rtc_time_diff - frc_time_diff;




    if (time_diff > 0) {
        esp_timer_impl_advance(time_diff);
    }
    esp_set_time_from_rtc();

    esp_timer_impl_unlock();
    esp_dport_access_stall_other_cpu_end();
    if (!wdt_was_enabled) {
        rtc_wdt_disable();
    }
    vTaskExitCritical(&light_sleep_lock);
    return err;
}

esp_err_t esp_sleep_disable_wakeup_source(esp_sleep_source_t source)
{



    if (source == ESP_SLEEP_WAKEUP_ALL) {
        s_config.wakeup_triggers = 0;
    } else if (((s_config.wakeup_triggers & (1UL << (3))) && (source == ESP_SLEEP_WAKEUP_TIMER))) {
        s_config.wakeup_triggers &= ~(1UL << (3));
        s_config.sleep_duration = 0;
    } else if (((s_config.wakeup_triggers & (1UL << (0))) && (source == ESP_SLEEP_WAKEUP_EXT0))) {
        s_config.ext0_rtc_gpio_num = 0;
        s_config.ext0_trigger_level = 0;
        s_config.wakeup_triggers &= ~(1UL << (0));
    } else if (((s_config.wakeup_triggers & (1UL << (1))) && (source == ESP_SLEEP_WAKEUP_EXT1))) {
        s_config.ext1_rtc_gpio_mask = 0;
        s_config.ext1_trigger_mode = 0;
        s_config.wakeup_triggers &= ~(1UL << (1));
    } else if (((s_config.wakeup_triggers & (1UL << (8))) && (source == ESP_SLEEP_WAKEUP_TOUCHPAD))) {
        s_config.wakeup_triggers &= ~(1UL << (8));
    } else if (((s_config.wakeup_triggers & (1UL << (2))) && (source == ESP_SLEEP_WAKEUP_GPIO))) {
        s_config.wakeup_triggers &= ~(1UL << (2));
    } else if (((s_config.wakeup_triggers & ((1UL << (6)) | (1UL << (7)))) && (source == ESP_SLEEP_WAKEUP_UART))) {
        s_config.wakeup_triggers &= ~((1UL << (6)) | (1UL << (7)));
    }





    else {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Incorrect wakeup source (%d) to disable." "\033[0m" "\n", esp_log_timestamp(), TAG, (int) source); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Incorrect wakeup source (%d) to disable." "\033[0m" "\n", esp_log_timestamp(), TAG, (int) source); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Incorrect wakeup source (%d) to disable." "\033[0m" "\n", esp_log_timestamp(), TAG, (int) source); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Incorrect wakeup source (%d) to disable." "\033[0m" "\n", esp_log_timestamp(), TAG, (int) source); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Incorrect wakeup source (%d) to disable." "\033[0m" "\n", esp_log_timestamp(), TAG, (int) source); } } while(0); } while(0);
        return 0x103;
    }
    return 0;
}

esp_err_t esp_sleep_enable_ulp_wakeup(void)
{
# 413 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
    return 0x103;

}

esp_err_t esp_sleep_enable_timer_wakeup(uint64_t time_in_us)
{
    s_config.wakeup_triggers |= (1UL << (3));
    s_config.sleep_duration = time_in_us;
    return 0;
}

static void timer_wakeup_prepare(void)
{
    uint32_t period = esp_clk_slowclk_cal_get();
    int64_t sleep_duration = (int64_t) s_config.sleep_duration - (int64_t) s_config.sleep_time_adjustment;
    if (sleep_duration < 0) {
        sleep_duration = 0;
    }
    int64_t rtc_count_delta = rtc_time_us_to_slowclk(sleep_duration, period);

    rtc_sleep_set_wakeup_time(s_config.rtc_ticks_at_sleep_start + rtc_count_delta);
}

esp_err_t esp_sleep_enable_touchpad_wakeup(void)
{



    if (s_config.wakeup_triggers & ((1UL << (0)))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Conflicting wake-up trigger: ext0" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x103;
    }
    s_config.wakeup_triggers |= (1UL << (8));
    return 0;
}

touch_pad_t esp_sleep_get_touchpad_wakeup_status(void)
{
    if (esp_sleep_get_wakeup_cause() != ESP_SLEEP_WAKEUP_TOUCHPAD) {
        return TOUCH_PAD_MAX;
    }
    touch_pad_t pad_num;
    esp_err_t ret = touch_pad_get_wakeup_status(&pad_num);
    
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ret == 0 && "wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero"
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 456, __func__, 
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "ret == ESP_OK && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 456 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                                                                                               ;
    return pad_num;
}

esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level)
{
    if (level < 0 || level > 1) {
        return 0x102;
    }
    if (!rtc_gpio_is_valid_gpio(gpio_num)) {
        return 0x102;
    }
    if (s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x103;
    }
    s_config.ext0_rtc_gpio_num = rtc_gpio_desc[gpio_num].rtc_num;
    s_config.ext0_trigger_level = level;
    s_config.wakeup_triggers |= (1UL << (0));
    return 0;
}

static void ext0_wakeup_prepare(void)
{
    int rtc_gpio_num = s_config.ext0_rtc_gpio_num;

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC)), (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 482, __func__, 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC))"
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48400 + 0xbc)))) >= 0x3ff00000) && ((((0x3ff48400 + 0xbc)))) <= 0x3ff13FFC)), (!((((((0x3ff48400 + 0xbc)))) >= 0x3ff00000) && ((((0x3ff48400 + 0xbc)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48400 + 0xbc)))) >= 0x3ff00000) && ((((0x3ff48400 + 0xbc)))) <= 0x3ff13FFC))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 482, __func__, 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48400 + 0xbc)))) >= 0x3ff00000) && ((((0x3ff48400 + 0xbc)))) <= 0x3ff13FFC))"
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)(((0x3ff48400 + 0xbc)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC)), (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 482, __func__, 
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48400 + 0xbc))) >= 0x3ff00000) && (((0x3ff48400 + 0xbc))) <= 0x3ff13FFC))"
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 482 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)((0x3ff48400 + 0xbc))); }) & ~((0x1F) << (27)))|(((rtc_gpio_num) & (0x1F))<<(27)))); })); });

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func (
 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    ,
 485
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    , __func__, 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))"
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func (
 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    ,
 485
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    , __func__, 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC))"
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 485, __func__, 
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))"
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 484 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x60)))); })&(~((0x1)<<(30))))|(((s_config.ext0_trigger_level) & 0x1)<<(30))); })); })
                                                                   ;

    for (size_t gpio_num = 0; gpio_num < 40; ++gpio_num) {
        const rtc_gpio_desc_t* desc = &rtc_gpio_desc[gpio_num];
        if (desc->rtc_num == rtc_gpio_num) {
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 490, __func__, 
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 490 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*(volatile uint32_t*)(desc->reg) |= (desc->mux)); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 491, __func__, 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC)), (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 491, __func__, 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))"
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*((volatile uint32_t *)((desc->reg)))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 491, __func__, 
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 491 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*((volatile uint32_t *)(desc->reg))); })&(~((0x3)<<(desc->func))))|(((0) & 0x3)<<(desc->func))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 492, __func__, 
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 492 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*(volatile uint32_t*)(desc->reg) |= (desc->ie)); });
            break;
        }
    }
}

esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode)
{
    if (mode > ESP_EXT1_WAKEUP_ANY_HIGH) {
        return 0x102;
    }

    uint32_t rtc_gpio_mask = 0;
    for (int gpio = 0; mask; ++gpio, mask >>= 1) {
        if ((mask & 1) == 0) {
            continue;
        }
        if (!rtc_gpio_is_valid_gpio(gpio)) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Not an RTC IO: GPIO%d" "\033[0m" "\n", esp_log_timestamp(), TAG, gpio); } } while(0); } while(0);
            return 0x102;
        }
        rtc_gpio_mask |= (1UL << (rtc_gpio_desc[gpio].rtc_num));
    }
    s_config.ext1_rtc_gpio_mask = rtc_gpio_mask;
    s_config.ext1_trigger_mode = mode;
    s_config.wakeup_triggers |= (1UL << (1));
    return 0;
}

static void ext1_wakeup_prepare(void)
{

    uint32_t rtc_gpio_mask = s_config.ext1_rtc_gpio_mask;
    for (int gpio = 0; gpio < 40 && rtc_gpio_mask != 0; ++gpio) {
        int rtc_pin = rtc_gpio_desc[gpio].rtc_num;
        if ((rtc_gpio_mask & (1UL << (rtc_pin))) == 0) {
            continue;
        }
        const rtc_gpio_desc_t* desc = &rtc_gpio_desc[gpio];

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 532, __func__, 
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 532 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(desc->reg) |= (desc->mux)); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 533, __func__, 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC)), (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 533, __func__, 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))"
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*((volatile uint32_t *)((desc->reg)))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 533, __func__, 
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 533 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*((volatile uint32_t *)(desc->reg))); })&(~((0x3)<<(desc->func))))|(((0) & 0x3)<<(desc->func))); })); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ((
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 535, __func__, 
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
       ))
# 535 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
       ; } while(0);; (*(volatile uint32_t*)(desc->reg) |= (desc->ie)); });

        if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] != ESP_PD_OPTION_ON) {



            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); 
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 541, __func__, 
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 541 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*(volatile uint32_t*)(desc->reg) &= ~(desc->pulldown)); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); 
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 542, __func__, 
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 542 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*(volatile uint32_t*)(desc->reg) &= ~(desc->pullup)); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xc8))) >= 0x3ff00000) && (((0x3ff48000 + 0xc8))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xc8))) >= 0x3ff00000) && (((0x3ff48000 + 0xc8))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ((
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xc8))) >= 0x3ff00000) && (((0x3ff48000 + 0xc8))) <= 0x3ff13FFC))
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 543, __func__, 
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xc8))) >= 0x3ff00000) && (((0x3ff48000 + 0xc8))) <= 0x3ff13FFC))"
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
           ))
# 543 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
           ; } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xc8)) |= (desc->hold_force)); });
        }

        rtc_gpio_mask &= ~(1UL << (rtc_pin));
    }

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 549, __func__, 
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))"
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 549 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xcc)) |= (((1UL << (18))))); });

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 551, __func__, 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))"
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0xcc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xcc)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0xcc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xcc)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0xcc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xcc)))) <= 0x3ff13FFC))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 551, __func__, 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0xcc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xcc)))) <= 0x3ff13FFC))"
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0xcc)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 551, __func__, 
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0xcc))) >= 0x3ff00000) && (((0x3ff48000 + 0xcc))) <= 0x3ff13FFC))"
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 551 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xcc))); }) & ~((0x3FFFF) << (0)))|(((s_config.ext1_rtc_gpio_mask) & (0x3FFFF))<<(0)))); })); });

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func (
 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    ,
 554
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    , __func__, 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))"
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func (
 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    ,
 554
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
    , __func__, 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x60)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x60)))) <= 0x3ff13FFC))"
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 554, __func__, 
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x60))) >= 0x3ff00000) && (((0x3ff48000 + 0x60))) <= 0x3ff13FFC))"
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 553 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x60)))); })&(~((0x1)<<(31))))|(((s_config.ext1_trigger_mode) & 0x1)<<(31))); })); })
                                                                  ;
}

uint64_t esp_sleep_get_ext1_wakeup_status(void)
{
    if (esp_sleep_get_wakeup_cause() != ESP_SLEEP_WAKEUP_EXT1) {
        return 0;
    }
    uint32_t status = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); 
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ((
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC))
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 562, __func__, 
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC))"
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ))
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     ; } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ((
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC))
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 562, __func__, 
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0xd0))) >= 0x3ff00000) && (((0x3ff48000 + 0xd0))) <= 0x3ff13FFC))"
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                     ))
# 562 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                     ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0xd0))); }) >> (0)) & (0x3FFFF)); });

    uint64_t gpio_mask = 0;
    for (int gpio = 0; gpio < 40; ++gpio) {
        if (!rtc_gpio_is_valid_gpio(gpio)) {
            continue;
        }
        int rtc_pin = rtc_gpio_desc[gpio].rtc_num;
        if ((status & (1UL << (rtc_pin))) == 0) {
            continue;
        }
        gpio_mask |= 1ULL << gpio;
    }
    return gpio_mask;
}

esp_err_t esp_sleep_enable_gpio_wakeup(void)
{
    if (s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Conflicting wake-up triggers: touch / ULP" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x103;
    }
    s_config.wakeup_triggers |= (1UL << (2));
    return 0;
}

esp_err_t esp_sleep_enable_uart_wakeup(int uart_num)
{
    if (uart_num == UART_NUM_0) {
        s_config.wakeup_triggers |= (1UL << (6));
    } else if (uart_num == UART_NUM_1) {
        s_config.wakeup_triggers |= (1UL << (7));
    } else {
        return 0x102;
    }

    return 0;
}

esp_sleep_wakeup_cause_t esp_sleep_get_wakeup_cause(void)
{
    if (rtc_get_reset_reason(0) != DEEPSLEEP_RESET && !s_light_sleep_wakeup) {
        return ESP_SLEEP_WAKEUP_UNDEFINED;
    }

    uint32_t wakeup_cause = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); 
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ((
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC))
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 607, __func__, 
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC))"
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ))
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           ; } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); 
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ((
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC))
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 607, __func__, 
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x38))) >= 0x3ff00000) && (((0x3ff48000 + 0x38))) <= 0x3ff13FFC))"
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
                           ))
# 607 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
                           ; } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x38))); }) >> (0)) & (0x7FF)); });
    if (wakeup_cause & (1UL << (0))) {
        return ESP_SLEEP_WAKEUP_EXT0;
    } else if (wakeup_cause & (1UL << (1))) {
        return ESP_SLEEP_WAKEUP_EXT1;
    } else if (wakeup_cause & (1UL << (3))) {
        return ESP_SLEEP_WAKEUP_TIMER;
    } else if (wakeup_cause & (1UL << (8))) {
        return ESP_SLEEP_WAKEUP_TOUCHPAD;
    } else if (wakeup_cause & (1UL << (9))) {
        return ESP_SLEEP_WAKEUP_ULP;
    } else if (wakeup_cause & (1UL << (2))) {
        return ESP_SLEEP_WAKEUP_GPIO;
    } else if (wakeup_cause & ((1UL << (6)) | (1UL << (7)))) {
        return ESP_SLEEP_WAKEUP_UART;
    } else {
        return ESP_SLEEP_WAKEUP_UNDEFINED;
    }
}

esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option)
{
    if (domain >= ESP_PD_DOMAIN_MAX || option > ESP_PD_OPTION_AUTO) {
        return 0x102;
    }
    s_config.pd_options[domain] = option;
    return 0;
}

static uint32_t get_power_down_flags(void)
{
# 647 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
    extern int _rtc_slow_length;

    if ((s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] == ESP_PD_OPTION_AUTO) &&
            ((size_t) &_rtc_slow_length > 0 ||
             (s_config.wakeup_triggers & (1UL << (9))))) {
        s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] = ESP_PD_OPTION_ON;
    }






    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] == ESP_PD_OPTION_AUTO) {
        s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] = ESP_PD_OPTION_ON;
    }



    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] == ESP_PD_OPTION_AUTO) {
        if (s_config.wakeup_triggers & ((1UL << (0)) | (1UL << (2)))) {
            s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] = ESP_PD_OPTION_ON;
        } else if (s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) {


            s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] = ESP_PD_OPTION_OFF;
        }
    }

    if (s_config.pd_options[ESP_PD_DOMAIN_XTAL] == ESP_PD_OPTION_AUTO) {
        s_config.pd_options[ESP_PD_DOMAIN_XTAL] = ESP_PD_OPTION_OFF;
    }

    const char* option_str[] = {"OFF", "ON", "AUTO(OFF)" };
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM]], option_str[s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM]]); } } while(0); } while(0)


                                                                        ;


    uint32_t pd_flags = 0;
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_FAST_MEM] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (3));
    }
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_SLOW_MEM] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (2));
    }
    if (s_config.pd_options[ESP_PD_DOMAIN_RTC_PERIPH] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (1));
    }
    if (s_config.pd_options[ESP_PD_DOMAIN_XTAL] != ESP_PD_OPTION_ON) {
        pd_flags |= (1UL << (6));
    }

    if ((s_config.wakeup_triggers & ((1UL << (8)) | (1UL << (9)))) == 0) {




    }
    return pd_flags;
}

void esp_deep_sleep_disable_rom_logging(void)
{





    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xb0))) >= 0x3ff00000) && (((0x3ff48000 + 0xb0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xb0))) >= 0x3ff00000) && (((0x3ff48000 + 0xb0))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); 
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ((
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!(((((0x3ff48000 + 0xb0))) >= 0x3ff00000) && (((0x3ff48000 + 0xb0))) <= 0x3ff13FFC))
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c", 717, __func__, 
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!(((((0x3ff48000 + 0xb0))) >= 0x3ff00000) && (((0x3ff48000 + 0xb0))) <= 0x3ff13FFC))"
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c" 3 4
   ))
# 717 "/home/dieter/Development/esp-idf/components/esp32/sleep_modes.c"
   ; } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0xb0)) |= (((1 << 0) | (1 << 16)))); });
}
