# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_https_server//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
# 15 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 1
# 10 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/_ansi.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/newlib.h" 1
# 16 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/config.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/features.h" 1
# 6 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/config.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/_ansi.h" 2
# 11 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/_ansi.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 15 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h" 1
# 12 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_types.h" 1






# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"

# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;


typedef signed short __int16_t;
typedef unsigned short __uint16_t;


typedef signed int __int32_t;
typedef unsigned int __uint32_t;


typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;


typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;


typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;


typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;


typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 8 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_types.h" 2
# 13 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/lock.h" 1
# 11 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/lock.h"
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
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h" 2


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 357 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 357 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h" 2




# 71 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_types.h"
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
# 16 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
struct _reent;






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
# 115 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
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
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
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

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


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
# 285 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
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

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

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
# 458 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
extern void esp_reent_init(struct _reent* reent);
# 771 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 12 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 13 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 2




# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 2



void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);





void * memrchr (const void *, int, size_t);




char *rindex (const char *, int);

char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);

int strcasecmp (const char *, const char *);






char *strdup (const char *);


char *_strdup_r (struct _reent *, const char *);


char *strndup (const char *, size_t);



char *_strndup_r (struct _reent *, const char *, size_t);
# 106 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h"
int strerror_r (int, char *, size_t)
             __asm__ ("" "__xpg_strerror_r");







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);



size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);







char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 163 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/string.h" 1
# 164 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/string.h" 2


# 16 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h" 1
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdbool.h" 1 3 4
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
       

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h" 1
# 13 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/_intsup.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h" 2






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h" 1
# 36 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h" 2


# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 40 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h" 2
# 48 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 70 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/types.h" 1
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/types.h"

# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h" 2
# 93 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;





typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;




typedef long time_t;







struct timespec {
  time_t tv_sec;
  long tv_nsec;
};


struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;



typedef char * caddr_t;
# 155 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 299 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/sched.h" 1
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/sched.h"
struct sched_param {
  int sched_priority;
# 59 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/sched.h"
};

int sched_yield( void );
# 300 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h" 2
# 308 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_t;
# 341 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;
# 357 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
  int detachstate;





} pthread_attr_t;
# 442 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 454 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/types.h"
  int type;

  int recursive;
} pthread_mutexattr_t;




typedef __uint32_t pthread_cond_t;

typedef struct {
  int is_initialized;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 49 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/stdio.h" 1
# 64 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h" 2
# 164 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
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
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



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
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 235 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 313 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 338 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);

int renameat (int, const char *, int, const char *);

int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
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

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



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
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 538 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;







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
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 725 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdio.h"

# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/platform_include/assert.h"
       
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/platform_include/assert.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h" 2





# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h" 2



# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/alloca.h" 1
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h" 2








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
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
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




void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);
char * realpath (const char *restrict path, char *restrict resolved_path);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);




void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);

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
# 258 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdlib.h"
extern long double strtold (const char *restrict, char **restrict);




# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/platform_include/assert.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/assert.h" 1
# 39 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/platform_include/assert.h" 2
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h" 2





typedef int32_t esp_err_t;
# 58 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _esp_error_check_failed_without_abort(esp_err_t rc, const char *file, int line, const char *function, const char *expression);
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 1
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 77 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 74 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 106 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
int xt_clock_freq(void) __attribute__((deprecated));







# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 40 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h" 1
# 148 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 339 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_get_cache_prefetch( void );
extern int xthal_set_cache_prefetch( int );
extern int xthal_set_cache_prefetch_long( unsigned long long );
# 352 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
extern const int Xthal_debug_configured;


extern unsigned int xthal_set_soft_break(void *addr);
extern void xthal_remove_soft_break(void *addr, unsigned int);
# 374 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_disassemble( unsigned char *instr_buf, void *tgt_addr,
         char *buffer, unsigned buflen, unsigned options );



extern int xthal_disassemble_size( unsigned char *instr_buf );






extern void* xthal_memcpy(void *dst, const void *src, unsigned len);
extern void* xthal_bcopy(const void *src, void *dst, unsigned len);






extern int xthal_compare_and_set( int *addr, int test_val, int compare_val );
# 403 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 653 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 789 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 862 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 899 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
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
# 948 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/hal.h"
extern int xthal_set_region_translation(void* vaddr, void* paddr, unsigned size, unsigned cache_atr, unsigned flags);
extern int xthal_v2p(void*, void**, unsigned*, unsigned*);
extern int xthal_invalidate_region(void* addr);
extern int xthal_set_region_translation_raw(void *vaddr, void *paddr, unsigned cattr);
# 41 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h" 1
# 42 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 51 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/tie.h" 1
# 53 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h" 2
# 1279 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/core.h"
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
# 42 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/system.h" 1
# 43 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 45 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/corebits.h" 1
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 56 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
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
# 80 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long sar;
long vpri;



long a2;
long a3;
long a4;
long a5;
# 104 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long exccause;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];
# 123 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-frames.h"
long pad[((3 + 1*1 + 1*2 + 0*1) & 3)];


} UserFrame;
# 48 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2
# 103 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h"
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
# 145 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h"
} XtExcFrame;
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
# 213 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_context.h"
long exit;
long pc;
long ps;
long next;
long a0;
long a1;
long a2;
long a3;

} XtSolFrame;
# 45 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 115 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2





# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_assert.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 2
# 54 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
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
# 79 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_run(void);
# 90 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 105 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 119 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 133 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 143 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 153 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 163 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                jump, 
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 179 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                           config);
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                         jump, 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                                                                        config);
# 222 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 242 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 252 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 262 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 284 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 302 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_init(void);
# 311 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_deinit(void);
# 325 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 325 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                   _Bool 
# 325 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                        repeat);
# 339 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 339 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 3 4
                                                    _Bool 
# 339 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
                                                         repeat);
# 349 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 363 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 373 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 383 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 393 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 405 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 415 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 424 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 437 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 451 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 466 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 477 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 488 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 499 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_lock(void);
# 510 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_intr_unlock(void);
# 521 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void ets_waiti0(void);
# 539 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 629 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/projdefs.h" 1
# 77 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 1
# 87 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h" 2
# 33 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void *get_sp()
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

static inline void cpu_init_memctl()
{

    uint32_t memctl = 0x00000000;
    asm volatile ("wsr %0, " "MEMCTL" : : "r" (memctl));;

}
# 74 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h"
static inline void cpu_configure_region_protection()
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
# 111 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h"

# 111 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h" 3 4
_Bool 
# 111 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/cpu.h"
    esp_cpu_in_ocd_debug_mode();
# 90 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 2






# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 80 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h" 1
# 30 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/config/specreg.h" 1
# 31 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h" 1
# 44 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
typedef struct {
long signature;
long restore_label;
long aftersave_label;
long areg[64];

long caller_regs[16];
long caller_regs_saved;





long windowbase;
long windowstart;

long sar;

long epc1;
long ps;
long excsave1;

long depc;



long epc[6 + 1 - 1];
long eps[6 + 1 - 1];
long excsave[6 + 1 - 1];


long lcount;
long lbeg;
long lend;





long vecbase;


long atomctl;





long memctl;


long ccount;
long ccompare[3];


long intenable;
long interrupt;


long icount;
long icountlevel;
long debugcause;


long dbreakc[2];
long dbreaka[2];


long ibreaka[2];
long ibreakenable;



long misc[4];
# 131 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
long cpenable;




long tlbs[8*2];
# 163 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
char ncp[48] __attribute__((aligned(4)));

char cp0[72] __attribute__((aligned(4)));
char cp1[0] __attribute__((aligned(1)));
char cp2[0] __attribute__((aligned(1)));
char cp3[0] __attribute__((aligned(1)));
char cp4[0] __attribute__((aligned(1)));
char cp5[0] __attribute__((aligned(1)));
char cp6[0] __attribute__((aligned(1)));
char cp7[0] __attribute__((aligned(1)));
# 183 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime-core-state.h"
} XtosCoreState;
# 32 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h" 2
# 61 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h"
typedef void (_xtos_handler_func)();

typedef _xtos_handler_func *_xtos_handler;
# 151 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h"
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
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/xtensa/xtruntime.h"
extern void _xtos_timer_0_delta( int cycles );


extern void _xtos_timer_1_delta( int cycles );


extern void _xtos_timer_2_delta( int cycles );
# 81 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_crosscore_int.h" 1
# 27 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_init();
# 40 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_yield(int core_id);
# 52 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_freq_switch(int core_id);
# 82 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h" 1
# 15 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
       
# 53 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
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
# 98 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_init();
# 109 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_deinit();
# 127 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_create(const esp_timer_create_args_t* create_args,
                           esp_timer_handle_t* out_handle);
# 142 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_start_once(esp_timer_handle_t timer, uint64_t timeout_us);
# 157 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_start_periodic(esp_timer_handle_t timer, uint64_t period);
# 170 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_stop(esp_timer_handle_t timer);
# 183 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_delete(esp_timer_handle_t timer);






int64_t esp_timer_get_time();






int64_t esp_timer_get_next_alarm();
# 227 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_dump(FILE* stream);
# 83 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2


# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
       



# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
       
# 30 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
typedef struct multi_heap_info *multi_heap_handle_t;
# 41 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_malloc(multi_heap_handle_t heap, size_t size);
# 50 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_free(multi_heap_handle_t heap, void *p);
# 62 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
void *multi_heap_realloc(multi_heap_handle_t heap, void *p, size_t size);
# 73 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_get_allocated_size(multi_heap_handle_t heap, void *p);
# 87 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
multi_heap_handle_t multi_heap_register(void *start, size_t size);
# 101 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_set_lock(multi_heap_handle_t heap, void* lock);







void multi_heap_dump(multi_heap_handle_t heap);
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"

# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h" 3 4
_Bool 
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
    multi_heap_check(multi_heap_handle_t heap, 
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h" 3 4
                                               _Bool 
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
                                                    print_errors);
# 135 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
size_t multi_heap_free_size(multi_heap_handle_t heap);
# 147 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
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
# 167 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/multi_heap.h"
void multi_heap_get_info(multi_heap_handle_t heap, multi_heap_info_t *info);
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 2
# 55 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc(size_t size, uint32_t caps);
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_free( void *ptr);
# 86 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc( void *ptr, size_t size, int caps);
# 102 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc(size_t n, size_t size, uint32_t caps);
# 118 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_free_size( uint32_t caps );
# 136 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_minimum_free_size( uint32_t caps );
# 148 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_largest_free_block( uint32_t caps );
# 164 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_get_info( multi_heap_info_t *info, uint32_t caps );
# 177 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_print_heap_info( uint32_t caps );
# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"

# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_all(
# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                  _Bool 
# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
                                       print_errors);
# 209 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"

# 209 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 209 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity(uint32_t caps, 
# 209 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                             _Bool 
# 209 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
                                                  print_errors);
# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"

# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_addr(intptr_t addr, 
# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                                  _Bool 
# 232 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
                                                       print_errors);
# 245 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_malloc_extmem_enable(size_t limit);
# 260 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc_prefer( size_t size, size_t num, ... );
# 271 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc_prefer( void *ptr, size_t size, size_t num, ... );
# 282 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc_prefer( size_t n, size_t size, size_t num, ... );
# 301 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump(uint32_t caps);
# 311 "/home/dieter/SoftwareDevelop/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump_all();
# 86 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 1
# 14 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
       





# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_attr.h" 1
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_attr.h"
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_attr.h" 2
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 2
# 59 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
typedef struct {
    const char *name;
    uint32_t caps[3];
    
# 62 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 62 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        aliased_iram;
    
# 63 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 63 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
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
# 134 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
size_t soc_get_available_memory_regions(soc_memory_region_t *regions);





size_t soc_get_available_memory_region_max_count();

inline static 
# 142 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 142 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "0"))) esp_ptr_dma_capable(const void *p)
{
    return (intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000;
}

inline static 
# 147 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 147 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "1"))) esp_ptr_word_aligned(const void *p)
{
    return ((intptr_t)p) % 4 == 0;
}

inline static 
# 152 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 152 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "2"))) esp_ptr_executable(const void *p)
{
    intptr_t ip = (intptr_t) p;
    return (ip >= 0x400D0000 && ip < 0x40400000)
        || (ip >= 0x40080000 && ip < 0x400A0000)
        || (ip >= 0x40000000 && ip < 0x40070000)



        || (ip >= 0x400C0000 && ip < 0x400C2000);
}

inline static 
# 164 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 164 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "3"))) esp_ptr_byte_accessible(const void *p)
{
    
# 166 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 166 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x40000000);



    return r;
}

inline static 
# 174 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 174 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "4"))) esp_ptr_internal(const void *p) {
    
# 175 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 175 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x400C2000);
    r |= ((intptr_t)p >= 0x50000000 && (intptr_t)p < 0x50002000);
    return r;
}


inline static 
# 182 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 182 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "5"))) esp_ptr_external_ram(const void *p) {
    return ((intptr_t)p >= 0x3F800000 && (intptr_t)p < 0x3FC00000);
}

inline static 
# 186 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 186 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "6"))) esp_ptr_in_iram(const void *p) {

    return ((intptr_t)p >= 0x40080000 && (intptr_t)p < 0x400A0000);



}

inline static 
# 194 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 194 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "7"))) esp_ptr_in_drom(const void *p) {
    return ((intptr_t)p >= 0x3F400000 && (intptr_t)p < 0x3F800000);
}

inline static 
# 198 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 198 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "8"))) esp_ptr_in_dram(const void *p) {
    return ((intptr_t)p >= 0x3FAE0000 && (intptr_t)p < 0x40000000);
}

inline static 
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "9"))) esp_ptr_in_diram_dram(const void *p) {
    return ((intptr_t)p >= 0x3FFE0000 && (intptr_t)p < 0x3FFFFFFC);
}

inline static 
# 206 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 206 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "10"))) esp_ptr_in_diram_iram(const void *p) {
    return ((intptr_t)p >= 0x400A0000 && (intptr_t)p < 0x400BFFFC);
}
# 87 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 110 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 125 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2

# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 127 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 2



typedef struct {







 uint32_t owner;




 uint32_t count;




} portMUX_TYPE;
# 173 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR();
# 203 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 243 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 255 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"

# 255 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 255 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 316 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED() {
 unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;});
 ;
 return state;
}
# 352 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 384 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID();
# 410 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 427 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 438 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portmacro.h"
extern void esp_vApplicationIdleHook( void );
extern void esp_vApplicationTickHook( void );






void _xt_coproc_release(volatile void * coproc_sa_base);
void vApplicationSleep( TickType_t xExpectedIdleTime );
# 97 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 2
# 127 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 128 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h" 1
# 15 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
       



# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 1
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_types.h" 1
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_types.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_types.h" 2
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 1
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_reg.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_reg.h" 2
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_struct.h" 1
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_struct.h"
typedef volatile struct {
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
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/rtc_io_reg.h" 1
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 93 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
static inline void __attribute__ ((deprecated)) PIN_PULLUP_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 95, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLUP_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 100, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 105, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (7))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 110, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (7))))); });
}
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 1
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/gpio_pins.h" 1
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 2
# 51 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
typedef enum {
    GPIO_PIN_INTR_DISABLE = 0,
    GPIO_PIN_INTR_POSEDGE = 1,
    GPIO_PIN_INTR_NEGEDGE = 2,
    GPIO_PIN_INTR_ANYEDGE = 3,
    GPIO_PIN_INTR_LOLEVEL = 4,
    GPIO_PIN_INTR_HILEVEL = 5
} GPIO_INT_TYPE;
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
typedef void (* gpio_intr_handler_fn_t)(uint32_t intr_mask, 
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                           _Bool 
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
                                                                high, void *arg);
# 78 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_init(void);
# 95 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 112 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_output_set_high(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get(void);
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get_high(void);
# 143 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_handler_register(gpio_intr_handler_fn_t fn, void *arg);
# 153 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending(void);
# 163 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending_high(void);
# 173 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack(uint32_t ack_mask);
# 183 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_intr_ack_high(uint32_t ack_mask);
# 195 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_enable(uint32_t i, GPIO_INT_TYPE intr_state);
# 205 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_disable(void);
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_in(uint32_t gpio, uint32_t signal_idx, 
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                       _Bool 
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
                                                            inv);
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_matrix_out(uint32_t gpio, uint32_t signal_idx, 
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                        _Bool 
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
                                                             out_inv, 
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h" 3 4
                                                                      _Bool 
# 237 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
                                                                           oen_inv);
# 246 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_select_gpio(uint8_t gpio_num);
# 257 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_set_drv(uint8_t gpio_num, uint8_t drv);
# 266 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pullup(uint8_t gpio_num);
# 275 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_pulldown(uint8_t gpio_num);
# 284 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_unhold(uint8_t gpio_num);
# 293 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/gpio.h"
void gpio_pad_hold(uint8_t gpio_num);
# 25 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h" 1
# 83 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
typedef void (*intr_handler_t)(void *arg);


typedef struct intr_handle_data_t intr_handle_data_t;
typedef intr_handle_data_t* intr_handle_t ;
# 104 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_mark_shared(int intno, int cpu, 
# 104 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                  _Bool 
# 104 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                       is_in_iram);
# 118 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_reserve(int intno, int cpu);
# 153 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc(int source, int flags, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 191 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc_intrstatus(int source, int flags, uint32_t intrstatusreg, uint32_t intrstatusmask, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 212 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_free(intr_handle_t handle);
# 222 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_cpu(intr_handle_t handle);
# 231 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_intno(intr_handle_t handle);
# 249 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_disable(intr_handle_t handle);
# 262 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_enable(intr_handle_t handle);
# 276 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_set_in_iram(intr_handle_t handle, 
# 276 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h" 3 4
                                                    _Bool 
# 276 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr_alloc.h"
                                                         is_in_iram);




void esp_intr_noniram_disable();





void esp_intr_noniram_enable();
# 27 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/gpio_periph.h" 1
# 29 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/include/soc/gpio_periph.h"
extern const uint32_t GPIO_PIN_MUX_REG[40];
# 28 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 2
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
typedef enum {
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
# 248 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_config(const gpio_config_t *pGPIOConfig);
# 261 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_reset_pin(gpio_num_t gpio_num);
# 274 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_intr_type(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 290 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_enable(gpio_num_t gpio_num);
# 302 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_disable(gpio_num_t gpio_num);
# 315 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 329 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
int gpio_get_level(gpio_num_t gpio_num);
# 344 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_direction(gpio_num_t gpio_num, gpio_mode_t mode);
# 359 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull);
# 372 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 383 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_disable(gpio_num_t gpio_num);
# 409 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_register(void (*fn)(void*), void * arg, int intr_alloc_flags, gpio_isr_handle_t *handle);
# 420 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_en(gpio_num_t gpio_num);
# 431 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_dis(gpio_num_t gpio_num);
# 442 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_en(gpio_num_t gpio_num);
# 453 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_dis(gpio_num_t gpio_num);
# 470 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_install_isr_service(int intr_alloc_flags);




void gpio_uninstall_isr_service();
# 501 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_add(gpio_num_t gpio_num, gpio_isr_t isr_handler, void* args);
# 513 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_remove(gpio_num_t gpio_num);
# 525 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 537 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 559 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_hold_en(gpio_num_t gpio_num);
# 578 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
esp_err_t gpio_hold_dis(gpio_num_t gpio_num);
# 589 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
void gpio_deep_sleep_hold_en(void);





void gpio_deep_sleep_hold_dis(void);






void gpio_iomux_in(uint32_t gpio_num, uint32_t signal_idx);
# 611 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
void gpio_iomux_out(uint8_t gpio_num, int func, 
# 611 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h" 3 4
                                               _Bool 
# 611 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/gpio.h"
                                                    oen_inv);
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h" 1
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr.h" 1
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/rom/ets_sys.h" 1
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 37 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
typedef void (*xt_handler)(void *);


typedef void (*xt_exc_handler)(XtExcFrame *);
# 60 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_exc_handler xt_set_exception_handler(int n, xt_exc_handler f);
# 73 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern xt_handler xt_set_interrupt_handler(int n, xt_handler f, void * arg);
# 84 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_on(unsigned int mask);
# 95 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_off(unsigned int mask);







static inline void xt_set_intset(unsigned int arg)
{
    xthal_set_intset(arg);
}
# 115 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
static inline void xt_set_intclear(unsigned int arg)
{
    xthal_set_intclear(arg);
}
# 127 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/xtensa_api.h"
extern void * xt_get_interrupt_handler_arg(int n);
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_intr.h" 2
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h" 2


# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/soc/esp32/include/soc/touch_channel.h" 1
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h" 2

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


typedef intr_handle_t touch_isr_handle_t;
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_init();
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_deinit();
# 145 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_config(touch_pad_t touch_num, uint16_t threshold);
# 165 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read(touch_pad_t touch_num, uint16_t * touch_value);
# 182 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_filtered(touch_pad_t touch_num, uint16_t *touch_value);
# 200 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_raw_data(touch_pad_t touch_num, uint16_t *touch_value);
# 212 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
typedef void (* filter_cb_t)(uint16_t *raw_value, uint16_t *filtered_value);
# 223 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_read_cb(filter_cb_t read_cb);
# 238 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_handler_register(void(*fn)(void *), void *arg, int unused, intr_handle_t *handle_unused) __attribute__ ((deprecated));
# 250 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_register(intr_handler_t fn, void* arg);
# 261 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_deregister(void(*fn)(void *), void *arg);
# 274 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_meas_time(uint16_t sleep_cycle, uint16_t meas_cycle);
# 283 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_meas_time(uint16_t *sleep_cycle, uint16_t *meas_cycle);
# 298 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_voltage(touch_high_volt_t refh, touch_low_volt_t refl, touch_volt_atten_t atten);
# 308 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_voltage(touch_high_volt_t *refh, touch_low_volt_t *refl, touch_volt_atten_t *atten);
# 323 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t slope, touch_tie_opt_t opt);
# 334 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t *slope, touch_tie_opt_t *opt);
# 343 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_io_init(touch_pad_t touch_num);
# 353 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_fsm_mode(touch_fsm_mode_t mode);







esp_err_t touch_pad_get_fsm_mode(touch_fsm_mode_t *mode);






esp_err_t touch_pad_sw_start();
# 378 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_thresh(touch_pad_t touch_num, uint16_t threshold);
# 388 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_thresh(touch_pad_t touch_num, uint16_t *threshold);
# 399 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_mode(touch_trigger_mode_t mode);







esp_err_t touch_pad_get_trigger_mode(touch_trigger_mode_t *mode);
# 419 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_source(touch_trigger_src_t src);







esp_err_t touch_pad_get_trigger_source(touch_trigger_src_t *src);
# 441 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);
# 451 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_group_mask(uint16_t *set1_mask, uint16_t *set2_mask, uint16_t *en_mask);
# 465 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_clear_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);






esp_err_t touch_pad_clear_status();






uint32_t touch_pad_get_status();






esp_err_t touch_pad_intr_enable();






esp_err_t touch_pad_intr_disable();
# 504 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_period(uint32_t new_period_ms);
# 515 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_filter_period(uint32_t* p_period_ms);
# 534 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_start(uint32_t filter_period_ms);
# 543 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_stop();
# 552 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_delete();
# 561 "/home/dieter/SoftwareDevelop/esp-idf/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_wakeup_status(touch_pad_t *pad_num);
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h" 2
# 29 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
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
# 88 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_disable_wakeup_source(esp_sleep_source_t source);
# 101 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ulp_wakeup();
# 110 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_timer_wakeup(uint64_t time_in_us);
# 128 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_touchpad_wakeup();
# 137 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
touch_pad_t esp_sleep_get_touchpad_wakeup_status();
# 163 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level);
# 195 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode);
# 216 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_gpio_wakeup();
# 233 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_uart_wakeup(int uart_num);
# 242 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
uint64_t esp_sleep_get_ext1_wakeup_status();
# 255 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option);






void esp_deep_sleep_start() __attribute__((noreturn));
# 272 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
esp_err_t esp_light_sleep_start();
# 296 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
void esp_deep_sleep(uint64_t time_in_us) __attribute__((noreturn));
# 306 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
void system_deep_sleep(uint64_t time_in_us) __attribute__((noreturn, deprecated));







esp_sleep_wakeup_cause_t esp_sleep_get_wakeup_cause();
# 329 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
void esp_wake_deep_sleep(void);





typedef void (*esp_deep_sleep_wake_stub_fn_t)(void);
# 348 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_sleep.h"
void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub);






esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void);






void esp_default_wake_deep_sleep(void);






void esp_deep_sleep_disable_rom_logging(void);
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h" 2





typedef enum {
    ESP_MAC_WIFI_STA,
    ESP_MAC_WIFI_SOFTAP,
    ESP_MAC_BT,
    ESP_MAC_ETH,
} esp_mac_type_t;
# 43 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
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






void system_init(void) __attribute__ ((deprecated));







void system_restore(void) __attribute__ ((deprecated));





typedef void (*shutdown_handler_t)(void);







esp_err_t esp_register_shutdown_handler(shutdown_handler_t handle);
# 94 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
void esp_restart(void) __attribute__ ((noreturn));
# 103 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
void system_restart(void) __attribute__ ((deprecated, noreturn));






esp_reset_reason_t esp_reset_reason(void);
# 119 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
uint32_t system_get_time(void) __attribute__ ((deprecated));
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
uint32_t esp_get_free_heap_size(void);
# 141 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
uint32_t system_get_free_heap_size(void) __attribute__ ((deprecated));







uint32_t esp_get_minimum_free_heap_size( void );
# 167 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
uint32_t esp_random(void);
# 177 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
void esp_fill_random(void *buf, size_t len);
# 192 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_set(uint8_t *mac);
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_get(uint8_t *mac);
# 218 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_custom(uint8_t *mac);
# 227 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_default(uint8_t *mac);
# 240 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 251 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t system_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 266 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type);
# 282 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac);
# 292 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
const char* system_get_sdk_version(void) __attribute__ ((deprecated));







const char* esp_get_idf_version(void);





typedef enum {
    CHIP_ESP32 = 1,
} esp_chip_model_t;
# 319 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_system.h"
typedef struct {
    esp_chip_model_t model;
    uint32_t features;
    uint8_t cores;
    uint8_t revision;
} esp_chip_info_t;





void esp_chip_info(esp_chip_info_t* out_info);
# 129 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 2
# 137 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;
# 158 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext();





BaseType_t xPortInterruptedFromISRContext();
# 202 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t __attribute__((section(".iram1" "." "11"))) xPortGetCoreID() {
    int id;
    __asm__ __volatile__ (
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);


static inline 
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h" 3 4
             _Bool 
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
                  __attribute__((section(".iram1" "." "12"))) xPortCanYield(void)
{
    uint32_t ps_reg = 0;


    asm volatile ("rsr %0, " "PS" : "=r" (ps_reg));;
# 235 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/portable.h"
    return ((ps_reg & 0x0000000F) == 0);
}





void uxPortCompareSetExtram(volatile uint32_t *addr, uint32_t compare, uint32_t *set);
# 106 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 855 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 891 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 955 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 1000 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;
# 1013 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
 portMUX_TYPE muxDummy;

} StaticEventGroup_t;
# 1031 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];
# 1046 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
} StaticTimer_t;
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h" 1
# 78 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/limits.h" 1
# 131 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/limits.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include-fixed/limits.h" 1 3 4
# 132 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/limits.h" 2
# 79 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h" 2

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h" 1
# 181 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
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
# 399 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialise( List_t * const pxList );
# 410 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 423 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 444 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 459 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 81 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h" 2
# 110 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
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
# 337 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pvTaskCode,
          const char * const pcName,
          const uint32_t usStackDepth,
          void * const pvParameters,
          UBaseType_t uxPriority,
          TaskHandle_t * const pvCreatedTask,
          const BaseType_t xCoreID);
# 432 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
 static inline __attribute__((section(".iram1" "." "13"))) BaseType_t xTaskCreate(
   TaskFunction_t pvTaskCode,
   const char * const pcName,
   const uint32_t usStackDepth,
   void * const pvParameters,
   UBaseType_t uxPriority,
   TaskHandle_t * const pvCreatedTask)
 {
  return xTaskCreatePinnedToCore( pvTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pvCreatedTask, 0x7fffffff );
 }
# 676 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask ) ;
# 722 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 763 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 811 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 867 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 910 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;
# 921 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 937 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 975 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1024 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1069 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1094 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1124 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStartScheduler( void ) ;
# 1177 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskEndScheduler( void ) ;
# 1227 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSuspendAll( void ) ;
# 1277 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1290 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1304 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1316 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1328 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1347 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1364 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
uint8_t* pxTaskGetStackStart( TaskHandle_t xTask) ;
# 1408 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
# 1424 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






  typedef void (*TlsDeleteCallbackFunction_t)( int, void * );
# 1456 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
  void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1470 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1481 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1494 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandleForCPU( UBaseType_t cpuid );
# 1595 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1638 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1688 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1762 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );
# 1848 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1921 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 2018 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 2085 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 2106 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2139 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2153 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
# 2179 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2190 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;
# 2211 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
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
# 2274 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2290 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 2307 "/home/dieter/SoftwareDevelop/esp-idf/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz );
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h" 1
# 67 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
typedef struct http_parser http_parser;
typedef struct http_parser_settings http_parser_settings;
# 89 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
typedef int (*http_data_cb) (http_parser*, const char *at, size_t length);
typedef int (*http_cb) (http_parser*);
# 136 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
enum http_method
  {

  HTTP_DELETE = 0, HTTP_GET = 1, HTTP_HEAD = 2, HTTP_POST = 3, HTTP_PUT = 4, HTTP_CONNECT = 5, HTTP_OPTIONS = 6, HTTP_TRACE = 7, HTTP_COPY = 8, HTTP_LOCK = 9, HTTP_MKCOL = 10, HTTP_MOVE = 11, HTTP_PROPFIND = 12, HTTP_PROPPATCH = 13, HTTP_SEARCH = 14, HTTP_UNLOCK = 15, HTTP_BIND = 16, HTTP_REBIND = 17, HTTP_UNBIND = 18, HTTP_ACL = 19, HTTP_REPORT = 20, HTTP_MKACTIVITY = 21, HTTP_CHECKOUT = 22, HTTP_MERGE = 23, HTTP_MSEARCH = 24, HTTP_NOTIFY = 25, HTTP_SUBSCRIBE = 26, HTTP_UNSUBSCRIBE = 27, HTTP_PATCH = 28, HTTP_PURGE = 29, HTTP_MKCALENDAR = 30, HTTP_LINK = 31, HTTP_UNLINK = 32,

  };


enum http_parser_type { HTTP_REQUEST, HTTP_RESPONSE, HTTP_BOTH };



enum flags
  { F_CHUNKED = 1 << 0
  , F_CONNECTION_KEEP_ALIVE = 1 << 1
  , F_CONNECTION_CLOSE = 1 << 2
  , F_CONNECTION_UPGRADE = 1 << 3
  , F_TRAILING = 1 << 4
  , F_UPGRADE = 1 << 5
  , F_SKIPBODY = 1 << 6
  , F_CONTENTLENGTH = 1 << 7
  };
# 212 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
enum http_errno {
  HPE_OK, HPE_CB_message_begin, HPE_CB_url, HPE_CB_header_field, HPE_CB_header_value, HPE_CB_headers_complete, HPE_CB_body, HPE_CB_message_complete, HPE_CB_status, HPE_CB_chunk_header, HPE_CB_chunk_complete, HPE_INVALID_EOF_STATE, HPE_HEADER_OVERFLOW, HPE_CLOSED_CONNECTION, HPE_INVALID_VERSION, HPE_INVALID_STATUS, HPE_INVALID_METHOD, HPE_INVALID_URL, HPE_INVALID_HOST, HPE_INVALID_PORT, HPE_INVALID_PATH, HPE_INVALID_QUERY_STRING, HPE_INVALID_FRAGMENT, HPE_LF_EXPECTED, HPE_INVALID_HEADER_TOKEN, HPE_INVALID_CONTENT_LENGTH, HPE_UNEXPECTED_CONTENT_LENGTH, HPE_INVALID_CHUNK_SIZE, HPE_INVALID_CONSTANT, HPE_INVALID_INTERNAL_STATE, HPE_STRICT, HPE_PAUSED, HPE_UNKNOWN,
};







struct http_parser {

  unsigned int type : 2;
  unsigned int flags : 8;
  unsigned int state : 7;
  unsigned int header_state : 7;
  unsigned int index : 7;
  unsigned int lenient_http_headers : 1;

  uint32_t nread;
  uint64_t content_length;


  unsigned short http_major;
  unsigned short http_minor;
  unsigned int status_code : 16;
  unsigned int method : 8;
  unsigned int http_errno : 7;






  unsigned int upgrade : 1;


  void *data;
};


struct http_parser_settings {
  http_cb on_message_begin;
  http_data_cb on_url;
  http_data_cb on_status;
  http_data_cb on_header_field;
  http_data_cb on_header_value;
  http_cb on_headers_complete;
  http_data_cb on_body;
  http_cb on_message_complete;



  http_cb on_chunk_header;
  http_cb on_chunk_complete;
};


enum http_parser_url_fields
  { UF_SCHEMA = 0
  , UF_HOST = 1
  , UF_PORT = 2
  , UF_PATH = 3
  , UF_QUERY = 4
  , UF_FRAGMENT = 5
  , UF_USERINFO = 6
  , UF_MAX = 7
  };
# 289 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
struct http_parser_url {
  uint16_t field_set;
  uint16_t port;

  struct {
    uint16_t off;
    uint16_t len;
  } field_data[UF_MAX];
};
# 310 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
unsigned long http_parser_version(void);

void http_parser_init(http_parser *parser, enum http_parser_type type);




void http_parser_settings_init(http_parser_settings *settings);




size_t http_parser_execute(http_parser *parser,
                           const http_parser_settings *settings,
                           const char *data,
                           size_t len);
# 334 "/home/dieter/SoftwareDevelop/esp-idf/components/nghttp/port/include/http_parser.h"
int http_should_keep_alive(const http_parser *parser);


const char *http_method_str(enum http_method m);


const char *http_errno_name(enum http_errno err);


const char *http_errno_description(enum http_errno err);


void http_parser_url_init(struct http_parser_url *u);


int http_parser_parse_url(const char *buf, size_t buflen,
                          int is_connect,
                          struct http_parser_url *u);


void http_parser_pause(http_parser *parser, int paused);


int http_body_is_final(const http_parser *parser);
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 2
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 2
# 80 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef void* httpd_handle_t;





typedef enum http_method httpd_method_t;





typedef void (*httpd_free_ctx_fn_t)(void *ctx);
# 106 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef esp_err_t (*httpd_open_func_t)(httpd_handle_t hd, int sockfd);
# 117 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef void (*httpd_close_func_t)(httpd_handle_t hd, int sockfd);
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef 
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
       _Bool 
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
            (*httpd_uri_match_func_t)(const char *reference_uri,
                                       const char *uri_to_match,
                                       size_t match_upto);
# 141 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef struct httpd_config {
    unsigned task_priority;
    size_t stack_size;




    uint16_t server_port;





    uint16_t ctrl_port;

    uint16_t max_open_sockets;
    uint16_t max_uri_handlers;
    uint16_t max_resp_headers;
    uint16_t backlog_conn;
    
# 160 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
   _Bool 
# 160 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
               lru_purge_enable;
    uint16_t recv_wait_timeout;
    uint16_t send_wait_timeout;
# 174 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    void * global_user_ctx;




    httpd_free_ctx_fn_t global_user_ctx_free_fn;







    void * global_transport_ctx;




    httpd_free_ctx_fn_t global_transport_ctx_free_fn;
# 207 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    httpd_open_func_t open_fn;
# 221 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    httpd_close_func_t close_fn;
# 239 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    httpd_uri_match_func_t uri_match_fn;
} httpd_config_t;
# 280 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_start(httpd_handle_t *handle, const httpd_config_t *config);
# 309 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_stop(httpd_handle_t handle);
# 330 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef struct httpd_req {
    httpd_handle_t handle;
    int method;
    const char uri[512 + 1];
    size_t content_len;
    void *aux;




    void *user_ctx;
# 357 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    void *sess_ctx;
# 368 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    httpd_free_ctx_fn_t free_ctx;
# 380 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    
# 380 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
   _Bool 
# 380 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
        ignore_sess_ctx_changes;
} httpd_req_t;




typedef struct httpd_uri {
    const char *uri;
    httpd_method_t method;





    esp_err_t (*handler)(httpd_req_t *r);




    void *user_ctx;
} httpd_uri_t;
# 454 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_register_uri_handler(httpd_handle_t handle,
                                     const httpd_uri_t *uri_handler);
# 469 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_unregister_uri_handler(httpd_handle_t handle,
                                       const char *uri, httpd_method_t method);
# 484 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_unregister_uri(httpd_handle_t handle, const char* uri);
# 500 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef enum {



    HTTPD_500_INTERNAL_SERVER_ERROR = 0,






    HTTPD_501_METHOD_NOT_IMPLEMENTED,


    HTTPD_505_VERSION_NOT_SUPPORTED,





    HTTPD_400_BAD_REQUEST,


    HTTPD_404_NOT_FOUND,


    HTTPD_405_METHOD_NOT_ALLOWED,






    HTTPD_408_REQ_TIMEOUT,





    HTTPD_411_LENGTH_REQUIRED,


    HTTPD_414_URI_TOO_LONG,


    HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE,


    HTTPD_ERR_CODE_MAX
} httpd_err_code_t;
# 579 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef esp_err_t (*httpd_err_handler_func_t)(httpd_req_t *req,
                                              httpd_err_code_t error);
# 598 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_register_err_handler(httpd_handle_t handle,
                                     httpd_err_code_t error,
                                     httpd_err_handler_func_t handler_fn);
# 635 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef int (*httpd_send_func_t)(httpd_handle_t hd, int sockfd, const char *buf, size_t buf_len, int flags);
# 657 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef int (*httpd_recv_func_t)(httpd_handle_t hd, int sockfd, char *buf, size_t buf_len, int flags);
# 675 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef int (*httpd_pending_func_t)(httpd_handle_t hd, int sockfd);
# 707 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_sess_set_recv_override(httpd_handle_t hd, int sockfd, httpd_recv_func_t recv_func);
# 727 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_sess_set_send_override(httpd_handle_t hd, int sockfd, httpd_send_func_t send_func);
# 747 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_sess_set_pending_override(httpd_handle_t hd, int sockfd, httpd_pending_func_t pending_func);
# 769 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
int httpd_req_to_sockfd(httpd_req_t *r);
# 801 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
int httpd_req_recv(httpd_req_t *r, char *buf, size_t buf_len);
# 821 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
size_t httpd_req_get_hdr_value_len(httpd_req_t *r, const char *field);
# 848 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_req_get_hdr_value_str(httpd_req_t *r, const char *field, char *val, size_t val_size);
# 862 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
size_t httpd_req_get_url_query_len(httpd_req_t *r);
# 893 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_req_get_url_query_str(httpd_req_t *r, char *buf, size_t buf_len);
# 918 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_query_key_value(const char *qry, const char *key, char *val, size_t val_size);
# 942 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"

# 942 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
_Bool 
# 942 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
    httpd_uri_match_wildcard(const char *uri_template, const char *uri_to_match, size_t match_upto);
# 981 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_send(httpd_req_t *r, const char *buf, ssize_t buf_len);
# 1020 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_send_chunk(httpd_req_t *r, const char *buf, ssize_t buf_len);
# 1039 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
static inline esp_err_t httpd_resp_sendstr(httpd_req_t *r, const char *str) {
    return httpd_resp_send(r, str, (str == 
# 1040 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
                                          ((void *)0)
# 1040 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
                                              ) ? 0 : strlen(str));
}
# 1060 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
static inline esp_err_t httpd_resp_sendstr_chunk(httpd_req_t *r, const char *str) {
    return httpd_resp_send_chunk(r, str, (str == 
# 1061 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
                                                ((void *)0)
# 1061 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
                                                    ) ? 0 : strlen(str));
}
# 1095 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_set_status(httpd_req_t *r, const char *status);
# 1124 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_set_type(httpd_req_t *r, const char *type);
# 1150 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_set_hdr(httpd_req_t *r, const char *field, const char *value);
# 1174 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_resp_send_err(httpd_req_t *req, httpd_err_code_t error, const char *msg);
# 1197 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
static inline esp_err_t httpd_resp_send_404(httpd_req_t *r) {
    return httpd_resp_send_err(r, HTTPD_404_NOT_FOUND, 
# 1198 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
                                                      ((void *)0)
# 1198 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
                                                          );
}
# 1222 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
static inline esp_err_t httpd_resp_send_408(httpd_req_t *r) {
    return httpd_resp_send_err(r, HTTPD_408_REQ_TIMEOUT, 
# 1223 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
                                                        ((void *)0)
# 1223 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
                                                            );
}
# 1247 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
static inline esp_err_t httpd_resp_send_500(httpd_req_t *r) {
    return httpd_resp_send_err(r, HTTPD_500_INTERNAL_SERVER_ERROR, 
# 1248 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h" 3 4
                                                                  ((void *)0)
# 1248 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
                                                                      );
}
# 1283 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
int httpd_send(httpd_req_t *r, const char *buf, size_t buf_len);
# 1312 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
void *httpd_sess_get_ctx(httpd_handle_t handle, int sockfd);
# 1322 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
void httpd_sess_set_ctx(httpd_handle_t handle, int sockfd, void *ctx, httpd_free_ctx_fn_t free_fn);
# 1336 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
void *httpd_sess_get_transport_ctx(httpd_handle_t handle, int sockfd);
# 1347 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
void httpd_sess_set_transport_ctx(httpd_handle_t handle, int sockfd, void *ctx, httpd_free_ctx_fn_t free_fn);







void *httpd_get_global_user_ctx(httpd_handle_t handle);







void *httpd_get_global_transport_ctx(httpd_handle_t handle);
# 1380 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_sess_trigger_close(httpd_handle_t handle, int sockfd);
# 1410 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_sess_update_lru_counter(httpd_handle_t handle, int sockfd);
# 1427 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
typedef void (*httpd_work_fn_t)(void *arg);
# 1447 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_http_server/include/esp_http_server.h"
esp_err_t httpd_queue_work(httpd_handle_t handle, httpd_work_fn_t work, void *arg);
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h" 2





typedef enum {
    HTTPD_SSL_TRANSPORT_SECURE,
    HTTPD_SSL_TRANSPORT_INSECURE
} httpd_ssl_transport_mode_t;






struct httpd_ssl_config {





    httpd_config_t httpd;


    const uint8_t *cacert_pem;


    size_t cacert_len;


    const uint8_t *prvtkey_pem;


    size_t prvtkey_len;


    httpd_ssl_transport_mode_t transport_mode;


    uint16_t port_secure;


    uint16_t port_insecure;
};

typedef struct httpd_ssl_config httpd_ssl_config_t;
# 117 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/include/esp_https_server.h"
esp_err_t httpd_ssl_start(httpd_handle_t *handle, httpd_ssl_config_t *config);






void httpd_ssl_stop(httpd_handle_t handle);
# 17 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h" 1
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h" 1
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_types.h" 1
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_types.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h" 1
# 22 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h"
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl3.h" 1
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/tls1.h" 1
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/x509_vfy.h" 1
# 25 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h" 2
# 64 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_code.h"
typedef enum {

    MSG_FLOW_UNINITED,

    MSG_FLOW_ERROR,

    MSG_FLOW_RENEGOTIATE,

    MSG_FLOW_READING,

    MSG_FLOW_WRITING,

    MSG_FLOW_FINISHED
} MSG_FLOW_STATE;


typedef enum {
    TLS_ST_BEFORE,
    TLS_ST_OK,
    DTLS_ST_CR_HELLO_VERIFY_REQUEST,
    TLS_ST_CR_SRVR_HELLO,
    TLS_ST_CR_CERT,
    TLS_ST_CR_CERT_STATUS,
    TLS_ST_CR_KEY_EXCH,
    TLS_ST_CR_CERT_REQ,
    TLS_ST_CR_SRVR_DONE,
    TLS_ST_CR_SESSION_TICKET,
    TLS_ST_CR_CHANGE,
    TLS_ST_CR_FINISHED,
    TLS_ST_CW_CLNT_HELLO,
    TLS_ST_CW_CERT,
    TLS_ST_CW_KEY_EXCH,
    TLS_ST_CW_CERT_VRFY,
    TLS_ST_CW_CHANGE,
    TLS_ST_CW_NEXT_PROTO,
    TLS_ST_CW_FINISHED,
    TLS_ST_SW_HELLO_REQ,
    TLS_ST_SR_CLNT_HELLO,
    DTLS_ST_SW_HELLO_VERIFY_REQUEST,
    TLS_ST_SW_SRVR_HELLO,
    TLS_ST_SW_CERT,
    TLS_ST_SW_KEY_EXCH,
    TLS_ST_SW_CERT_REQ,
    TLS_ST_SW_SRVR_DONE,
    TLS_ST_SR_CERT,
    TLS_ST_SR_KEY_EXCH,
    TLS_ST_SR_CERT_VRFY,
    TLS_ST_SR_NEXT_PROTO,
    TLS_ST_SR_CHANGE,
    TLS_ST_SR_FINISHED,
    TLS_ST_SW_SESSION_TICKET,
    TLS_ST_SW_CERT_STATUS,
    TLS_ST_SW_CHANGE,
    TLS_ST_SW_FINISHED
} OSSL_HANDSHAKE_STATE;
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_types.h" 2

typedef void SSL_CIPHER;

typedef void X509_STORE_CTX;
typedef void X509_STORE;

typedef void RSA;

typedef void STACK;







typedef int (*OPENSSL_sk_compfunc)(const void *, const void *);

struct stack_st;
typedef struct stack_st OPENSSL_STACK;

struct ssl_method_st;
typedef struct ssl_method_st SSL_METHOD;

struct ssl_method_func_st;
typedef struct ssl_method_func_st SSL_METHOD_FUNC;

struct record_layer_st;
typedef struct record_layer_st RECORD_LAYER;

struct ossl_statem_st;
typedef struct ossl_statem_st OSSL_STATEM;

struct ssl_session_st;
typedef struct ssl_session_st SSL_SESSION;

struct ssl_ctx_st;
typedef struct ssl_ctx_st SSL_CTX;

struct ssl_st;
typedef struct ssl_st SSL;

struct cert_st;
typedef struct cert_st CERT;

struct x509_st;
typedef struct x509_st X509;

struct X509_VERIFY_PARAM_st;
typedef struct X509_VERIFY_PARAM_st X509_VERIFY_PARAM;

struct evp_pkey_st;
typedef struct evp_pkey_st EVP_PKEY;

struct x509_method_st;
typedef struct x509_method_st X509_METHOD;

struct pkey_method_st;
typedef struct pkey_method_st PKEY_METHOD;

struct ssl_alpn_st;
typedef struct ssl_alpn_st SSL_ALPN;

struct bio_st;
typedef struct bio_st BIO;

struct stack_st {

    char **data;

    int num_alloc;

    OPENSSL_sk_compfunc c;
};

struct evp_pkey_st {

    void *pkey_pm;

    const PKEY_METHOD *method;
};

struct x509_st {


    void *x509_pm;

    const X509_METHOD *method;

    int ref_counter;
};

struct cert_st {

    int sec_level;

    X509 *x509;

    EVP_PKEY *pkey;

};

struct ossl_statem_st {

    MSG_FLOW_STATE state;

    int hand_state;
};

struct record_layer_st {

    int rstate;

    int read_ahead;
};

struct ssl_session_st {

    long timeout;

    long time;

    X509 *peer;
};

struct X509_VERIFY_PARAM_st {

    int depth;

};

struct bio_st {
    const unsigned char * data;
    int dlen;
};

typedef enum { ALPN_INIT, ALPN_ENABLE, ALPN_DISABLE, ALPN_ERROR } ALPN_STATUS;
struct ssl_alpn_st {
     ALPN_STATUS alpn_status;

     char *alpn_string;


     const char *alpn_list[10];
};

struct ssl_ctx_st
{
    int version;

    int references;

    unsigned long options;

    SSL_ALPN ssl_alpn;

    const SSL_METHOD *method;

    CERT *cert;

    X509 *client_CA;

    int verify_mode;

    int (*default_verify_callback) (int ok, X509_STORE_CTX *ctx);

    long session_timeout;

    int read_ahead;

    int read_buffer_len;

    X509_VERIFY_PARAM param;
};

struct ssl_st
{

    int version;

    unsigned long options;


    int shutdown;

    CERT *cert;

    X509 *client_CA;

    SSL_CTX *ctx;

    const SSL_METHOD *method;

    RECORD_LAYER rlayer;


    OSSL_STATEM statem;

    SSL_SESSION *session;

    int verify_mode;

    int (*verify_callback) (int ok, X509_STORE_CTX *ctx);

    int rwstate;

    long verify_result;

    X509_VERIFY_PARAM param;

    int err;

    void (*info_callback) (const SSL *ssl, int type, int val);


    void *ssl_pm;
};

struct ssl_method_st {

    int version;


    int endpoint;

    const SSL_METHOD_FUNC *func;
};

struct ssl_method_func_st {

    int (*ssl_new)(SSL *ssl);

    void (*ssl_free)(SSL *ssl);

    int (*ssl_handshake)(SSL *ssl);

    int (*ssl_shutdown)(SSL *ssl);

    int (*ssl_clear)(SSL *ssl);

    int (*ssl_read)(SSL *ssl, void *buffer, int len);

    int (*ssl_send)(SSL *ssl, const void *buffer, int len);

    int (*ssl_pending)(const SSL *ssl);

    void (*ssl_set_fd)(SSL *ssl, int fd, int mode);

    void (*ssl_set_hostname)(SSL *ssl, const char *hostname);

    int (*ssl_get_fd)(const SSL *ssl, int mode);

    void (*ssl_set_bufflen)(SSL *ssl, int len);

    long (*ssl_get_verify_result)(const SSL *ssl);

    OSSL_HANDSHAKE_STATE (*ssl_get_state)(const SSL *ssl);
};

struct x509_method_st {

    int (*x509_new)(X509 *x, X509 *m_x);

    void (*x509_free)(X509 *x);

    int (*x509_load)(X509 *x, const unsigned char *buf, int len);

    int (*x509_show_info)(X509 *x);
};

struct pkey_method_st {

    int (*pkey_new)(EVP_PKEY *pkey, EVP_PKEY *m_pkey);

    void (*pkey_free)(EVP_PKEY *pkey);

    int (*pkey_load)(EVP_PKEY *pkey, const unsigned char *buf, int len);
};


typedef int (*next_proto_cb)(SSL *ssl, unsigned char **out,
                             unsigned char *outlen, const unsigned char *in,
                             unsigned int inlen, void *arg);
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_stack.h" 1
# 28 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_stack.h"
OPENSSL_STACK* OPENSSL_sk_new(OPENSSL_sk_compfunc c);
# 37 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_stack.h"
OPENSSL_STACK *OPENSSL_sk_new_null(void);
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_stack.h"
void OPENSSL_sk_free(OPENSSL_STACK *stack);
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h" 2

struct stack_st_X509_NAME; static inline struct stack_st_X509_NAME *sk_X509_NAME_new_null(void) { return (struct stack_st_X509_NAME *)OPENSSL_sk_new_null(); }
# 34 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
X509* __X509_new(X509 *ix);
# 43 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
X509* X509_new(void);
# 55 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
X509* d2i_X509(X509 **cert, const unsigned char *buffer, long len);
# 64 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
void X509_free(X509 *x);
# 76 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
int SSL_CTX_add_client_CA(SSL_CTX *ctx, X509 *x);
# 88 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
int SSL_add_client_CA(SSL *ssl, X509 *x);
# 102 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
int SSL_use_certificate_ASN1(SSL *ssl, int len, const unsigned char *d);
# 115 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
int X509_STORE_add_cert(X509_STORE *store, X509 *x);
# 132 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
int BIO_write(BIO *b, const void *data, int dlen);
# 148 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
X509 * PEM_read_bio_X509(BIO *bp, X509 **x, void *cb, void *u);
# 157 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_x509.h"
BIO *BIO_new(void * method);




void *BIO_s_mem();






void BIO_free(BIO *b);
# 23 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h" 1
# 31 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* __EVP_PKEY_new(EVP_PKEY *ipk);
# 40 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* EVP_PKEY_new(void);
# 53 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* d2i_PrivateKey(int type,
                         EVP_PKEY **a,
                         const unsigned char **pp,
                         long length);
# 65 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h"
void EVP_PKEY_free(EVP_PKEY *x);
# 79 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/internal/ssl_pkey.h"
 int SSL_use_PrivateKey_ASN1(int type, SSL *ssl, const unsigned char *d, long len);
# 24 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h" 2
# 44 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
SSL_CTX* SSL_CTX_new(const SSL_METHOD *method);
# 53 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_free(SSL_CTX *ctx);
# 62 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
SSL* SSL_new(SSL_CTX *ctx);
# 71 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_free(SSL *ssl);
# 82 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_connect(SSL *ssl);
# 93 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_accept(SSL *ssl);
# 107 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_read(SSL *ssl, void *buffer, int len);
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_write(SSL *ssl, const void *buffer, int len);
# 130 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_get_verify_result(const SSL *ssl);
# 142 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_shutdown(SSL *ssl);
# 154 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_set_fd(SSL *ssl, int fd);
# 166 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_set_tlsext_host_name(SSL* ssl, const char *hostname);
# 178 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_PrivateKey(SSL_CTX *ctx, EVP_PKEY *pkey);
# 190 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_certificate(SSL_CTX *ctx, X509 *x);
# 199 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* SSLv23_client_method(void);
# 208 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_client_method(void);
# 217 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* SSLv3_client_method(void);
# 226 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_1_client_method(void);
# 235 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_2_client_method(void);
# 244 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLS_client_method(void);
# 253 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* SSLv23_server_method(void);
# 262 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_1_server_method(void);
# 271 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_2_server_method(void);
# 280 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLSv1_server_method(void);
# 289 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* SSLv3_server_method(void);
# 298 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD* TLS_server_method(void);
# 310 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_alpn_select_cb(SSL_CTX *ctx,
                                int (*cb) (SSL *ssl,
                                           const unsigned char **out,
                                           unsigned char *outlen,
                                           const unsigned char *in,
                                           unsigned int inlen,
                                           void *arg),
                                void *arg);
# 331 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_alpn_protos(SSL_CTX *ctx, const unsigned char *protos, unsigned int protos_len);
# 342 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_next_proto_select_cb(SSL_CTX *ctx,
                                      int (*cb) (SSL *ssl,
                                                 unsigned char **out,
                                                 unsigned char *outlen,
                                                 const unsigned char *in,
                                                 unsigned int inlen,
                                                 void *arg),
                                      void *arg);
# 359 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_error(const SSL *ssl, int ret_code);
# 368 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void ERR_clear_error(void);
# 377 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int ERR_get_error(void);
# 386 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void ERR_load_SSL_strings(void);
# 395 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_library_init(void);
# 406 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *ERR_error_string(unsigned long e, char *ret);
# 416 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_CTX_set_options(SSL_CTX *ctx, unsigned long opt);
# 428 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_mode(SSL_CTX *ctx, int mod);
# 444 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_do_handshake(SSL *ssl);
# 453 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_get_version(const SSL *ssl);
# 465 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_ssl_version(SSL_CTX *ctx, const SSL_METHOD *meth);
# 474 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_pending(const SSL *ssl);
# 485 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_want_nothing(const SSL *ssl);
# 496 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_want_read(const SSL *ssl);
# 507 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_want_write(const SSL *ssl);
# 516 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD *SSL_CTX_get_ssl_method(SSL_CTX *ctx);
# 525 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_METHOD *SSL_get_ssl_method(SSL *ssl);
# 537 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_set_ssl_method(SSL *ssl, const SSL_METHOD *method);
# 549 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_add_client_CA(SSL *ssl, X509 *x);
# 561 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_add_client_CA(SSL_CTX *ctx, X509 *x);
# 571 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_client_CA_list(SSL *ssl, struct stack_st_X509_NAME *name_list);
# 581 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_client_CA_list(SSL_CTX *ctx, struct stack_st_X509_NAME *name_list);
# 590 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
struct stack_st_X509_NAME *SSL_get_client_CA_list(const SSL *ssl);
# 599 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
struct stack_st_X509_NAME *SSL_CTX_get_client_CA_list(const SSL_CTX *ctx);
# 608 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
X509 *SSL_get_certificate(const SSL *ssl);
# 617 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
EVP_PKEY *SSL_get_privatekey(const SSL *ssl);
# 627 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_info_callback(SSL *ssl, void (*cb) (const SSL *ssl, int type, int val));
# 636 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
OSSL_HANDSHAKE_STATE SSL_get_state(const SSL *ssl);
# 646 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_default_read_buffer_len(SSL_CTX *ctx, size_t len);
# 656 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_default_read_buffer_len(SSL *ssl, size_t len);
# 666 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_security_level(SSL *ssl, int level);
# 675 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_security_level(const SSL *ssl);
# 684 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_get_verify_mode(const SSL_CTX *ctx);
# 693 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_get_verify_depth(const SSL_CTX *ctx);
# 704 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_verify(SSL_CTX *ctx, int mode, int (*verify_callback)(int, X509_STORE_CTX *));
# 715 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_verify(SSL *s, int mode, int (*verify_callback)(int, X509_STORE_CTX *));
# 725 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_verify_depth(SSL_CTX *ctx, int depth);
# 735 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int verify_callback(int preverify_ok, X509_STORE_CTX *x509_ctx);
# 745 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_set_timeout(SSL_CTX *ctx, long t);
# 754 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_get_timeout(const SSL_CTX *ctx);
# 766 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_cipher_list(SSL_CTX *ctx, const char *str);
# 778 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_set_cipher_list(SSL *ssl, const char *str);
# 787 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_get_cipher_list(const SSL *ssl, int n);
# 796 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const SSL_CIPHER *SSL_get_current_cipher(const SSL *ssl);
# 805 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_get_cipher(const SSL *ssl);
# 814 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
X509_STORE *SSL_CTX_get_cert_store(const SSL_CTX *ctx);
# 824 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_cert_store(SSL_CTX *ctx, X509_STORE *store);
# 833 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_want(const SSL *ssl);
# 844 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_want_x509_lookup(const SSL *ssl);
# 855 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_clear(SSL *ssl);
# 866 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_fd(const SSL *ssl);
# 877 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_rfd(const SSL *ssl);
# 888 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_wfd(const SSL *ssl);
# 898 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_read_ahead(SSL *s, int yes);
# 908 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_read_ahead(SSL_CTX *ctx, int yes);
# 917 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_read_ahead(const SSL *ssl);
# 926 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_get_read_ahead(SSL_CTX *ctx);
# 937 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_has_pending(const SSL *ssl);
# 949 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_certificate(SSL_CTX *ctx, X509 *x);
# 962 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_certificate_ASN1(SSL_CTX *ctx, int len, const unsigned char *d);
# 975 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_certificate_file(SSL_CTX *ctx, const char *file, int type);
# 987 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_certificate_chain_file(SSL_CTX *ctx, const char *file);
# 1001 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_PrivateKey_ASN1(int pk, SSL_CTX *ctx, const unsigned char *d, long len);
# 1014 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_PrivateKey_file(SSL_CTX *ctx, const char *file, int type);
# 1026 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_RSAPrivateKey(SSL_CTX *ctx, RSA *rsa);
# 1039 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_RSAPrivateKey_ASN1(SSL_CTX *ctx, const unsigned char *d, long len);
# 1052 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_RSAPrivateKey_file(SSL_CTX *ctx, const char *file, int type);
# 1064 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_check_private_key(const SSL_CTX *ctx);
# 1077 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_serverinfo(SSL_CTX *ctx, const unsigned char *serverinfo, size_t serverinfo_length);
# 1089 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_serverinfo_file(SSL_CTX *ctx, const char *file);
# 1106 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_select_next_proto(unsigned char **out, unsigned char *outlen,
                          const unsigned char *in, unsigned int inlen,
                          const unsigned char *client, unsigned int client_len);
# 1120 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_add_extra_chain_cert(SSL_CTX *ctx, X509 *);
# 1134 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_ctrl(SSL_CTX *ctx, int cmd, long larg, char *parg);
# 1143 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
STACK *SSL_CTX_get_ciphers(const SSL_CTX *ctx);
# 1154 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_CTX_get_default_read_ahead(SSL_CTX *ctx);
# 1164 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_CTX_get_ex_data(const SSL_CTX *ctx, int idx);
# 1173 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_get_quiet_shutdown(const SSL_CTX *ctx);
# 1186 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_load_verify_locations(SSL_CTX *ctx, const char *CAfile, const char *CApath);
# 1197 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_up_ref(SSL_CTX *ctx);
# 1209 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_app_data(SSL_CTX *ctx, void *arg);
# 1219 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_client_cert_cb(SSL_CTX *ctx, int (*cb)(SSL *ssl, X509 **x509, EVP_PKEY **pkey));
# 1229 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_default_read_ahead(SSL_CTX *ctx, int m);
# 1240 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_default_verify_paths(SSL_CTX *ctx);
# 1251 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_default_verify_dir(SSL_CTX *ctx);
# 1262 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_default_verify_file(SSL_CTX *ctx);
# 1275 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_set_ex_data(SSL_CTX *s, int idx, char *arg);
# 1285 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_CTX_clear_options(SSL_CTX *ctx, unsigned long op);
# 1295 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_CTX_get_options(SSL_CTX *ctx);
# 1305 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_quiet_shutdown(SSL_CTX *ctx, int mode);
# 1314 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
X509 *SSL_CTX_get0_certificate(const SSL_CTX *ctx);
# 1323 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
EVP_PKEY *SSL_CTX_get0_privatekey(const SSL_CTX *ctx);
# 1335 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_CTX_use_psk_identity_hint(SSL_CTX *ctx, const char *hint);
# 1345 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_CTX_set_psk_server_callback(SSL_CTX *ctx,
                                     unsigned int (*callback)(SSL *ssl,
                                                              const char *identity,
                                                              unsigned char *psk,
                                                              int max_psk_len));







const char *SSL_alert_desc_string(int value);
# 1366 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_alert_desc_string_long(int value);
# 1375 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_alert_type_string(int value);
# 1384 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_alert_type_string_long(int value);
# 1393 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
SSL_CTX *SSL_get_SSL_CTX(const SSL *ssl);
# 1402 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_get_app_data(SSL *ssl);
# 1412 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_cipher_bits(const SSL *ssl, int *alg_bits);
# 1421 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_get_cipher_name(const SSL *ssl);
# 1430 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_get_cipher_version(const SSL *ssl);
# 1440 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_get_ex_data(const SSL *ssl, int idx);
# 1449 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_ex_data_X509_STORE_CTX_idx(void);
# 1458 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
STACK *SSL_get_peer_cert_chain(const SSL *ssl);
# 1467 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
X509 *SSL_get_peer_certificate(const SSL *ssl);
# 1476 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_quiet_shutdown(const SSL *ssl);
# 1485 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
BIO *SSL_get_rbio(const SSL *ssl);
# 1496 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_get_shared_ciphers(const SSL *ssl, char *buf, int len);
# 1505 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_shutdown(const SSL *ssl);
# 1514 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_get_time(const SSL *ssl);
# 1523 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_get_timeout(const SSL *ssl);
# 1532 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_get_verify_mode(const SSL *ssl);
# 1541 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
X509_VERIFY_PARAM *SSL_get0_param(SSL *ssl);
# 1554 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int X509_VERIFY_PARAM_set1_host(X509_VERIFY_PARAM *param,
                                const char *name, size_t namelen);
# 1566 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int X509_VERIFY_PARAM_set_hostflags(X509_VERIFY_PARAM *param,
                    unsigned long flags);
# 1578 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int X509_VERIFY_PARAM_clear_hostflags(X509_VERIFY_PARAM *param,
                      unsigned long flags);
# 1588 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
BIO *SSL_get_wbio(const SSL *ssl);
# 1597 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
STACK *SSL_load_client_CA_file(const char *file);
# 1608 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_up_ref(SSL *ssl);
# 1622 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_peek(SSL *ssl, void *buf, int num);
# 1633 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_renegotiate(SSL *ssl);
# 1642 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_rstate_string(SSL *ssl);
# 1651 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_rstate_string_long(SSL *ssl);
# 1660 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_accept_state(SSL *ssl);
# 1670 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_app_data(SSL *ssl, char *arg);
# 1681 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_bio(SSL *ssl, BIO *rbio, BIO *wbio);
# 1691 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_clear_options(SSL *ssl, unsigned long op);
# 1700 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_get_options(SSL *ssl);
# 1710 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
unsigned long SSL_set_options(SSL *ssl, unsigned long op);
# 1720 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_quiet_shutdown(SSL *ssl, int mode);
# 1730 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_shutdown(SSL *ssl, int mode);
# 1740 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_time(SSL *ssl, long t);
# 1750 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
void SSL_set_timeout(SSL *ssl, long t);
# 1759 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_state_string(const SSL *ssl);
# 1768 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
char *SSL_state_string_long(const SSL *ssl);
# 1777 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
long SSL_total_renegotiations(SSL *ssl);
# 1786 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_version(const SSL *ssl);
# 1798 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
int SSL_use_psk_identity_hint(SSL *ssl, const char *hint);
# 1807 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_get_psk_identity_hint(SSL *ssl);
# 1816 "/home/dieter/SoftwareDevelop/esp-idf/components/openssl/include/openssl/ssl.h"
const char *SSL_get_psk_identity(SSL *ssl);
# 18 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 2
# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h" 1
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
# 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 98 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 98 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h" 2
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 21 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h" 2
# 31 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"

# 31 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 60 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 73 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
vprintf_like_t esp_log_set_vprintf(vprintf_like_t func);
# 87 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 97 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 107 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));
# 118 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
void esp_log_writev(esp_log_level_t level, const char* tag, const char* format, va_list args);

# 1 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log_internal.h" 1
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 121 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h" 2
# 19 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 2
# 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/include/sdkconfig.h" 1
# 20 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 2

const static char *TAG = "esp_https_server";






static void httpd_ssl_close(void *ctx)
{
    ((ctx != 
# 30 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 30 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 30, __func__, "ctx != NULL"));
    SSL_shutdown(ctx);
    SSL_free(ctx);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Secure socket closed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Secure socket closed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Secure socket closed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Secure socket closed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Secure socket closed" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
}
# 43 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
static int httpd_ssl_pending(httpd_handle_t server, int sockfd)
{
    SSL *ssl = httpd_sess_get_transport_ctx(server, sockfd);
    ((ssl != 
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 46 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 46, __func__, "ssl != NULL"));
    return SSL_pending(ssl);
}
# 60 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
static int httpd_ssl_recv(httpd_handle_t server, int sockfd, char *buf, size_t buf_len, int flags)
{
    SSL *ssl = httpd_sess_get_transport_ctx(server, sockfd);
    ((ssl != 
# 63 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 63 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 63, __func__, "ssl != NULL"));
    return SSL_read(ssl, buf, buf_len);
}
# 77 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
static int httpd_ssl_send(httpd_handle_t server, int sockfd, const char *buf, size_t buf_len, int flags)
{
    SSL *ssl = httpd_sess_get_transport_ctx(server, sockfd);
    ((ssl != 
# 80 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 80 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 80, __func__, "ssl != NULL"));
    return SSL_write(ssl, buf, buf_len);
}
# 92 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
static esp_err_t httpd_ssl_open(httpd_handle_t server, int sockfd)
{
    ((server != 
# 94 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 94 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 94, __func__, "server != NULL"));


    SSL_CTX *global_ctx = httpd_get_global_transport_ctx(server);
    ((global_ctx != 
# 98 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 98 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 98, __func__, "global_ctx != NULL"));

    SSL *ssl = SSL_new(global_ctx);
    if (
# 101 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
       ((void *)0) 
# 101 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
            == ssl) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL_new ret NULL (out of memory)" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL_new ret NULL (out of memory)" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL_new ret NULL (out of memory)" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL_new ret NULL (out of memory)" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL_new ret NULL (out of memory)" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x101;
    }

    if (1 != SSL_set_fd(ssl, sockfd)) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "fail to set SSL fd" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "fail to set SSL fd" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "fail to set SSL fd" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "fail to set SSL fd" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "fail to set SSL fd" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        goto teardown;
    }

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL accept" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL accept" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL accept" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL accept" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL accept" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    if (1 != SSL_accept(ssl)) {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "fail to SSL_accept - handshake error" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "fail to SSL_accept - handshake error" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "fail to SSL_accept - handshake error" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "fail to SSL_accept - handshake error" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "fail to SSL_accept - handshake error" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        goto teardown;
    }


    httpd_sess_set_transport_ctx(server, sockfd, ssl, httpd_ssl_close);


    httpd_sess_set_send_override(server, sockfd, httpd_ssl_send);
    httpd_sess_set_recv_override(server, sockfd, httpd_ssl_recv);
    httpd_sess_set_pending_override(server, sockfd, httpd_ssl_pending);



    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Secure socket open" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Secure socket open" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Secure socket open" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Secure socket open" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Secure socket open" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);

    return 0;

teardown:
    SSL_free(ssl);
    return -1;
}






static void free_secure_context(void *ctx)
{
    ((ctx != 
# 143 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 143 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 143, __func__, "ctx != NULL"));

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Server shuts down, releasing SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Server shuts down, releasing SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Server shuts down, releasing SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Server shuts down, releasing SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Server shuts down, releasing SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    SSL_CTX_free(ctx);
}






static SSL_CTX *create_secure_context(const struct httpd_ssl_config *config)
{
    SSL_CTX *ctx = 
# 156 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
                  ((void *)0)
# 156 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
                      ;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL server context create" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL server context create" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL server context create" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL server context create" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL server context create" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    ctx = SSL_CTX_new(TLS_server_method());
    if (
# 160 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
       ((void *)0) 
# 160 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
            != ctx) {

        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL ctx set own cert" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL ctx set own cert" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL ctx set own cert" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL ctx set own cert" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL ctx set own cert" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        if (SSL_CTX_use_certificate_ASN1(ctx, config->cacert_len, config->cacert_pem)
            && SSL_CTX_use_PrivateKey_ASN1(0, ctx, config->prvtkey_pem, (long) config->prvtkey_len)) {
            return ctx;
        }
        else {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to set certificate" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to set certificate" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to set certificate" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to set certificate" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to set certificate" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            SSL_CTX_free(ctx);
            ctx = 
# 170 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
                 ((void *)0)
# 170 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
                     ;
        }
    } else {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to create SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to create SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to create SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to create SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to create SSL context" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }
    return 
# 175 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
          ((void *)0)
# 175 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
              ;
}


esp_err_t httpd_ssl_start(httpd_handle_t *pHandle, struct httpd_ssl_config *config)
{
    ((config != 
# 181 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 181 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 181, __func__, "config != NULL"));
    ((pHandle != 
# 182 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
   ((void *)0)
# 182 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
   ) ? (void)0 : __assert_func ("/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c", 182, __func__, "pHandle != NULL"));

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Starting server" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Starting server" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Starting server" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Starting server" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Starting server" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);

    if (HTTPD_SSL_TRANSPORT_SECURE == config->transport_mode) {
        SSL_CTX *ctx = create_secure_context(config);
        if (!ctx) {
            return -1;
        }

        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL context ready" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL context ready" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL context ready" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL context ready" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL context ready" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);


        config->httpd.global_transport_ctx = ctx;
        config->httpd.global_transport_ctx_free_fn = free_secure_context;
        config->httpd.open_fn = httpd_ssl_open;

        config->httpd.server_port = config->port_secure;
    } else {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SSL disabled, using plain HTTP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SSL disabled, using plain HTTP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SSL disabled, using plain HTTP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SSL disabled, using plain HTTP" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SSL disabled, using plain HTTP" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        config->httpd.server_port = config->port_insecure;
    }

    httpd_handle_t handle = 
# 205 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c" 3 4
                           ((void *)0)
# 205 "/home/dieter/SoftwareDevelop/esp-idf/components/esp_https_server/src/https_server.c"
                               ;

    esp_err_t ret = httpd_start(&handle, &config->httpd);
    if (ret != 0) return ret;

    *pHandle = handle;

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Server listening on port %d" "\033[0m" "\n", esp_log_timestamp(), TAG, config->httpd.server_port); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Server listening on port %d" "\033[0m" "\n", esp_log_timestamp(), TAG, config->httpd.server_port); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Server listening on port %d" "\033[0m" "\n", esp_log_timestamp(), TAG, config->httpd.server_port); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Server listening on port %d" "\033[0m" "\n", esp_log_timestamp(), TAG, config->httpd.server_port); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Server listening on port %d" "\033[0m" "\n", esp_log_timestamp(), TAG, config->httpd.server_port); } } while(0); } while(0);
    return 0;
}


void httpd_ssl_stop(httpd_handle_t handle)
{
    httpd_stop(handle);
}
