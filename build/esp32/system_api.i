# 1 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
# 1 "/home/dieter/Development/ProjektEi/build/esp32//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
# 15 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 1
# 10 "/home/dieter/Development/esp-idf/components/newlib/include/string.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/_ansi.h" 1
# 15 "/home/dieter/Development/esp-idf/components/newlib/include/_ansi.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/newlib.h" 1
# 16 "/home/dieter/Development/esp-idf/components/newlib/include/_ansi.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/config.h" 1



# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 5 "/home/dieter/Development/esp-idf/components/newlib/include/sys/config.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/features.h" 1
# 6 "/home/dieter/Development/esp-idf/components/newlib/include/sys/config.h" 2
# 189 "/home/dieter/Development/esp-idf/components/newlib/include/sys/config.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/xtensa/config/core-isa.h" 1
# 190 "/home/dieter/Development/esp-idf/components/newlib/include/sys/config.h" 2
# 17 "/home/dieter/Development/esp-idf/components/newlib/include/_ansi.h" 2
# 11 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h" 1
# 13 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/_ansi.h" 1
# 14 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 149 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 15 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h" 1
# 12 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_types.h" 1






# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_default_types.h" 1
# 17 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_default_types.h"

# 17 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_default_types.h"
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
# 8 "/home/dieter/Development/esp-idf/components/newlib/include/machine/_types.h" 2
# 13 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/lock.h" 1
# 11 "/home/dieter/Development/esp-idf/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "/home/dieter/Development/esp-idf/components/newlib/include/sys/lock.h"
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
# 14 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h" 2


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 357 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4

# 357 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h" 2




# 71 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_types.h"
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
# 16 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
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
# 115 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
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
# 179 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
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
# 285 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
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
# 458 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
extern void esp_reent_init(struct _reent* reent);
# 771 "/home/dieter/Development/esp-idf/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 12 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/cdefs.h" 1
# 45 "/home/dieter/Development/esp-idf/components/newlib/include/sys/cdefs.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 46 "/home/dieter/Development/esp-idf/components/newlib/include/sys/cdefs.h" 2
# 13 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 2




# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 18 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 2



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


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);

void * memrchr (const void *, int, size_t);

void * rawmemchr (const void *, int);


char *rindex (const char *, int);

char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);

int strcasecmp (const char *, const char *);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *);


char *_strdup_r (struct _reent *, const char *);


char *strndup (const char *, size_t);



char *_strndup_r (struct _reent *, const char *, size_t);



int ffsl (long);
int ffsll (long long);







char *strerror_r (int, char *, size_t);
# 115 "/home/dieter/Development/esp-idf/components/newlib/include/string.h"
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);



size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);







char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 163 "/home/dieter/Development/esp-idf/components/newlib/include/string.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/string.h" 1
# 164 "/home/dieter/Development/esp-idf/components/newlib/include/string.h" 2


# 16 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 1
# 18 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h" 1
# 13 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_intsup.h" 1
# 14 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h" 2






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
# 74 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "/home/dieter/Development/esp-idf/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 19 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdbool.h" 1 3 4
# 20 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 1
# 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
       


# 1 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h" 1
# 36 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 37 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h" 2


# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 40 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h" 2
# 48 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h" 1
# 69 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 70 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/types.h" 1
# 19 "/home/dieter/Development/esp-idf/components/newlib/include/machine/types.h"

# 19 "/home/dieter/Development/esp-idf/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h" 2
# 93 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
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
# 155 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 299 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/sched.h" 1
# 46 "/home/dieter/Development/esp-idf/components/newlib/include/sys/sched.h"
struct sched_param {
  int sched_priority;
# 59 "/home/dieter/Development/esp-idf/components/newlib/include/sys/sched.h"
};

int sched_yield( void );
# 300 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h" 2
# 308 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_t;
# 341 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;
# 357 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
  int detachstate;





} pthread_attr_t;
# 442 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 454 "/home/dieter/Development/esp-idf/components/newlib/include/sys/types.h"
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
# 49 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/stdio.h" 1
# 64 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h" 2
# 164 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
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
# 235 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);



int fcloseall (void);



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
# 313 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
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
# 338 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
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



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 538 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"
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
# 725 "/home/dieter/Development/esp-idf/components/newlib/include/stdio.h"

# 18 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h"
       
# 1 "/home/dieter/Development/ProjektEi/build/include/sdkconfig.h" 1




       
# 21 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h" 1
# 10 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/ieeefp.h" 1
# 11 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h" 2





# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 17 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h" 2



# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/stdlib.h" 1
# 21 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h" 2

# 1 "/home/dieter/Development/esp-idf/components/newlib/include/alloca.h" 1
# 23 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h" 2








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
# 67 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h"
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
# 258 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 283 "/home/dieter/Development/esp-idf/components/newlib/include/stdlib.h"
void qsort_r (void * __base, size_t __nmemb, size_t __size, int (*_compar)(const void *, const void *, void *), void * __thunk);







extern long double strtold (const char *restrict, char **restrict);




# 22 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2

# 1 "/home/dieter/Development/esp-idf/components/newlib/include/assert.h" 1
# 39 "/home/dieter/Development/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2
# 19 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 2





typedef int32_t esp_err_t;
# 59 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 77 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _esp_error_check_failed_without_abort(esp_err_t rc, const char *file, int line, const char *function, const char *expression);
# 21 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp_attr.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h"
       
# 23 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h"
       
# 54 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_idf_version.h"
const char* esp_get_idf_version(void);
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 2







typedef enum {
    ESP_MAC_WIFI_STA,
    ESP_MAC_WIFI_SOFTAP,
    ESP_MAC_BT,
    ESP_MAC_ETH,
} esp_mac_type_t;
# 47 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
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
# 93 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_register_shutdown_handler(shutdown_handler_t handle);
# 103 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_unregister_shutdown_handler(shutdown_handler_t handle);
# 114 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
void esp_restart(void) __attribute__ ((noreturn));
# 123 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
void system_restart(void) __attribute__ ((deprecated, noreturn));






esp_reset_reason_t esp_reset_reason(void);
# 139 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t system_get_time(void) __attribute__ ((deprecated));
# 150 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t esp_get_free_heap_size(void);
# 161 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t system_get_free_heap_size(void) __attribute__ ((deprecated));







uint32_t esp_get_minimum_free_heap_size( void );
# 187 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
uint32_t esp_random(void);
# 197 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
void esp_fill_random(void *buf, size_t len);
# 212 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_base_mac_addr_set(uint8_t *mac);
# 222 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_base_mac_addr_get(uint8_t *mac);
# 238 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_efuse_mac_get_custom(uint8_t *mac);
# 247 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_efuse_mac_get_default(uint8_t *mac);
# 260 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 271 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t system_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 286 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type);
# 302 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac);
# 312 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
const char* system_get_sdk_version(void) __attribute__ ((deprecated));





typedef enum {
    CHIP_ESP32 = 1,
} esp_chip_model_t;
# 331 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
typedef struct {
    esp_chip_model_t model;
    uint32_t features;
    uint8_t cores;
    uint8_t revision;
} esp_chip_info_t;





void esp_chip_info(esp_chip_info_t* out_info);
# 18 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 1
# 63 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 1
# 19 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h" 1
# 20 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/queue.h" 1
# 21 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_interface.h" 1
# 25 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_interface.h"
typedef enum {
    ESP_IF_WIFI_STA = 0,
    ESP_IF_WIFI_AP,
    ESP_IF_ETH,
    ESP_IF_MAX
} esp_interface_t;
# 23 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_base.h" 1
# 27 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_base.h"
typedef const char* esp_event_base_t;
typedef void* esp_event_loop_handle_t;
typedef void (*esp_event_handler_t)(void* event_handler_arg,
                                        esp_event_base_t event_base,
                                        int32_t event_id,
                                        void* event_data);
# 24 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h" 2
# 20 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 2





typedef enum {
    WIFI_MODE_NULL = 0,
    WIFI_MODE_STA,
    WIFI_MODE_AP,
    WIFI_MODE_APSTA,
    WIFI_MODE_MAX
} wifi_mode_t;

typedef esp_interface_t wifi_interface_t;




typedef enum {
    WIFI_COUNTRY_POLICY_AUTO,
    WIFI_COUNTRY_POLICY_MANUAL,
} wifi_country_policy_t;


typedef struct {
    char cc[3];
    uint8_t schan;
    uint8_t nchan;
    int8_t max_tx_power;
    wifi_country_policy_t policy;
} wifi_country_t;

typedef enum {
    WIFI_AUTH_OPEN = 0,
    WIFI_AUTH_WEP,
    WIFI_AUTH_WPA_PSK,
    WIFI_AUTH_WPA2_PSK,
    WIFI_AUTH_WPA_WPA2_PSK,
    WIFI_AUTH_WPA2_ENTERPRISE,
    WIFI_AUTH_MAX
} wifi_auth_mode_t;

typedef enum {
    WIFI_REASON_UNSPECIFIED = 1,
    WIFI_REASON_AUTH_EXPIRE = 2,
    WIFI_REASON_AUTH_LEAVE = 3,
    WIFI_REASON_ASSOC_EXPIRE = 4,
    WIFI_REASON_ASSOC_TOOMANY = 5,
    WIFI_REASON_NOT_AUTHED = 6,
    WIFI_REASON_NOT_ASSOCED = 7,
    WIFI_REASON_ASSOC_LEAVE = 8,
    WIFI_REASON_ASSOC_NOT_AUTHED = 9,
    WIFI_REASON_DISASSOC_PWRCAP_BAD = 10,
    WIFI_REASON_DISASSOC_SUPCHAN_BAD = 11,
    WIFI_REASON_IE_INVALID = 13,
    WIFI_REASON_MIC_FAILURE = 14,
    WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT = 15,
    WIFI_REASON_GROUP_KEY_UPDATE_TIMEOUT = 16,
    WIFI_REASON_IE_IN_4WAY_DIFFERS = 17,
    WIFI_REASON_GROUP_CIPHER_INVALID = 18,
    WIFI_REASON_PAIRWISE_CIPHER_INVALID = 19,
    WIFI_REASON_AKMP_INVALID = 20,
    WIFI_REASON_UNSUPP_RSN_IE_VERSION = 21,
    WIFI_REASON_INVALID_RSN_IE_CAP = 22,
    WIFI_REASON_802_1X_AUTH_FAILED = 23,
    WIFI_REASON_CIPHER_SUITE_REJECTED = 24,

    WIFI_REASON_BEACON_TIMEOUT = 200,
    WIFI_REASON_NO_AP_FOUND = 201,
    WIFI_REASON_AUTH_FAIL = 202,
    WIFI_REASON_ASSOC_FAIL = 203,
    WIFI_REASON_HANDSHAKE_TIMEOUT = 204,
    WIFI_REASON_CONNECTION_FAIL = 205,
} wifi_err_reason_t;

typedef enum {
    WIFI_SECOND_CHAN_NONE = 0,
    WIFI_SECOND_CHAN_ABOVE,
    WIFI_SECOND_CHAN_BELOW,
} wifi_second_chan_t;

typedef enum {
    WIFI_SCAN_TYPE_ACTIVE = 0,
    WIFI_SCAN_TYPE_PASSIVE,
} wifi_scan_type_t;


typedef struct {
    uint32_t min;
    uint32_t max;

} wifi_active_scan_time_t;


typedef union {
    wifi_active_scan_time_t active;
    uint32_t passive;

} wifi_scan_time_t;


typedef struct {
    uint8_t *ssid;
    uint8_t *bssid;
    uint8_t channel;
    
# 125 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 125 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        show_hidden;
    wifi_scan_type_t scan_type;
    wifi_scan_time_t scan_time;
} wifi_scan_config_t;

typedef enum {
    WIFI_CIPHER_TYPE_NONE = 0,
    WIFI_CIPHER_TYPE_WEP40,
    WIFI_CIPHER_TYPE_WEP104,
    WIFI_CIPHER_TYPE_TKIP,
    WIFI_CIPHER_TYPE_CCMP,
    WIFI_CIPHER_TYPE_TKIP_CCMP,
    WIFI_CIPHER_TYPE_UNKNOWN,
} wifi_cipher_type_t;





typedef enum {
    WIFI_ANT_ANT0,
    WIFI_ANT_ANT1,
    WIFI_ANT_MAX,
} wifi_ant_t;


typedef struct {
    uint8_t bssid[6];
    uint8_t ssid[33];
    uint8_t primary;
    wifi_second_chan_t second;
    int8_t rssi;
    wifi_auth_mode_t authmode;
    wifi_cipher_type_t pairwise_cipher;
    wifi_cipher_type_t group_cipher;
    wifi_ant_t ant;
    uint32_t phy_11b:1;
    uint32_t phy_11g:1;
    uint32_t phy_11n:1;
    uint32_t phy_lr:1;
    uint32_t wps:1;
    uint32_t reserved:27;
    wifi_country_t country;
} wifi_ap_record_t;

typedef enum {
    WIFI_FAST_SCAN = 0,
    WIFI_ALL_CHANNEL_SCAN,
}wifi_scan_method_t;

typedef enum {
    WIFI_CONNECT_AP_BY_SIGNAL = 0,
    WIFI_CONNECT_AP_BY_SECURITY,
}wifi_sort_method_t;


typedef struct {
    int8_t rssi;
    wifi_auth_mode_t authmode;
}wifi_fast_scan_threshold_t;

typedef wifi_fast_scan_threshold_t wifi_scan_threshold_t;

typedef enum {
    WIFI_PS_NONE,
    WIFI_PS_MIN_MODEM,
    WIFI_PS_MAX_MODEM,
} wifi_ps_type_t;
# 201 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
typedef enum {
    WIFI_BW_HT20 = 1,
    WIFI_BW_HT40,
} wifi_bandwidth_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t password[64];
    uint8_t ssid_len;
    uint8_t channel;
    wifi_auth_mode_t authmode;
    uint8_t ssid_hidden;
    uint8_t max_connection;
    uint16_t beacon_interval;
} wifi_ap_config_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t password[64];
    wifi_scan_method_t scan_method;
    
# 223 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 223 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        bssid_set;
    uint8_t bssid[6];
    uint8_t channel;
    uint16_t listen_interval;
    wifi_sort_method_t sort_method;
    wifi_scan_threshold_t threshold;
} wifi_sta_config_t;







typedef union {
    wifi_ap_config_t ap;
    wifi_sta_config_t sta;
} wifi_config_t;


typedef struct {
    uint8_t mac[6];
    int8_t rssi;
    uint32_t phy_11b:1;
    uint32_t phy_11g:1;
    uint32_t phy_11n:1;
    uint32_t phy_lr:1;
    uint32_t reserved:28;
} wifi_sta_info_t;




typedef struct {
    wifi_sta_info_t sta[(10)];
    int num;
} wifi_sta_list_t;

typedef enum {
    WIFI_STORAGE_FLASH,
    WIFI_STORAGE_RAM,
} wifi_storage_t;






typedef enum {
    WIFI_VND_IE_TYPE_BEACON,
    WIFI_VND_IE_TYPE_PROBE_REQ,
    WIFI_VND_IE_TYPE_PROBE_RESP,
    WIFI_VND_IE_TYPE_ASSOC_REQ,
    WIFI_VND_IE_TYPE_ASSOC_RESP,
} wifi_vendor_ie_type_t;






typedef enum {
    WIFI_VND_IE_ID_0,
    WIFI_VND_IE_ID_1,
} wifi_vendor_ie_id_t;
# 296 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
typedef struct {
    uint8_t element_id;
    uint8_t length;
    uint8_t vendor_oui[3];
    uint8_t vendor_oui_type;
    uint8_t payload[0];
} vendor_ie_data_t;


typedef struct {
    signed rssi:8;
    unsigned rate:5;
    unsigned :1;
    unsigned sig_mode:2;
    unsigned :16;
    unsigned mcs:7;
    unsigned cwb:1;
    unsigned :16;
    unsigned smoothing:1;
    unsigned not_sounding:1;
    unsigned :1;
    unsigned aggregation:1;
    unsigned stbc:2;
    unsigned fec_coding:1;
    unsigned sgi:1;
    signed noise_floor:8;
    unsigned ampdu_cnt:8;
    unsigned channel:4;
    unsigned secondary_channel:4;
    unsigned :8;
    unsigned timestamp:32;
    unsigned :32;
    unsigned :31;
    unsigned ant:1;
    unsigned sig_len:12;
    unsigned :12;
    unsigned rx_state:8;
} wifi_pkt_rx_ctrl_t;



typedef struct {
    wifi_pkt_rx_ctrl_t rx_ctrl;
    uint8_t payload[0];
} wifi_promiscuous_pkt_t;







typedef enum {
    WIFI_PKT_MGMT,
    WIFI_PKT_CTRL,
    WIFI_PKT_DATA,
    WIFI_PKT_MISC,
} wifi_promiscuous_pkt_type_t;
# 376 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
typedef struct {
    uint32_t filter_mask;
} wifi_promiscuous_filter_t;
# 388 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
typedef struct {
    
# 389 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 389 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        lltf_en;
    
# 390 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 390 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        htltf_en;
    
# 391 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 391 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        stbc_htltf2_en;
    
# 392 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 392 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        ltf_merge_en;
    
# 393 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 393 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        channel_filter_en;
    
# 394 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 394 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        manu_scale;
    uint8_t shift;
} wifi_csi_config_t;





typedef struct {
    wifi_pkt_rx_ctrl_t rx_ctrl;
    uint8_t mac[6];
    
# 405 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 3 4
   _Bool 
# 405 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
        first_word_invalid;
    int8_t *buf;
    uint16_t len;
} wifi_csi_info_t;





typedef struct {
    uint8_t gpio_select: 1,
            gpio_num: 7;
} wifi_ant_gpio_t;





typedef struct {
    wifi_ant_gpio_t gpio_cfg[4];
} wifi_ant_gpio_config_t;





typedef enum {
    WIFI_ANT_MODE_ANT0,
    WIFI_ANT_MODE_ANT1,
    WIFI_ANT_MODE_AUTO,
    WIFI_ANT_MODE_MAX,
} wifi_ant_mode_t;





typedef struct {
    wifi_ant_mode_t rx_ant_mode;
    wifi_ant_t rx_ant_default;
    wifi_ant_mode_t tx_ant_mode;
    uint8_t enabled_ant0: 4,
                    enabled_ant1: 4;
} wifi_ant_config_t;





typedef enum {
    WIFI_PHY_RATE_1M_L = 0x00,
    WIFI_PHY_RATE_2M_L = 0x01,
    WIFI_PHY_RATE_5M_L = 0x02,
    WIFI_PHY_RATE_11M_L = 0x03,
    WIFI_PHY_RATE_2M_S = 0x05,
    WIFI_PHY_RATE_5M_S = 0x06,
    WIFI_PHY_RATE_11M_S = 0x07,
    WIFI_PHY_RATE_48M = 0x08,
    WIFI_PHY_RATE_24M = 0x09,
    WIFI_PHY_RATE_12M = 0x0A,
    WIFI_PHY_RATE_6M = 0x0B,
    WIFI_PHY_RATE_54M = 0x0C,
    WIFI_PHY_RATE_36M = 0x0D,
    WIFI_PHY_RATE_18M = 0x0E,
    WIFI_PHY_RATE_9M = 0x0F,
    WIFI_PHY_RATE_MCS0_LGI = 0x10,
    WIFI_PHY_RATE_MCS1_LGI = 0x11,
    WIFI_PHY_RATE_MCS2_LGI = 0x12,
    WIFI_PHY_RATE_MCS3_LGI = 0x13,
    WIFI_PHY_RATE_MCS4_LGI = 0x14,
    WIFI_PHY_RATE_MCS5_LGI = 0x15,
    WIFI_PHY_RATE_MCS6_LGI = 0x16,
    WIFI_PHY_RATE_MCS7_LGI = 0x17,
    WIFI_PHY_RATE_MCS0_SGI = 0x18,
    WIFI_PHY_RATE_MCS1_SGI = 0x19,
    WIFI_PHY_RATE_MCS2_SGI = 0x1A,
    WIFI_PHY_RATE_MCS3_SGI = 0x1B,
    WIFI_PHY_RATE_MCS4_SGI = 0x1C,
    WIFI_PHY_RATE_MCS5_SGI = 0x1D,
    WIFI_PHY_RATE_MCS6_SGI = 0x1E,
    WIFI_PHY_RATE_MCS7_SGI = 0x1F,
    WIFI_PHY_RATE_LORA_250K = 0x29,
    WIFI_PHY_RATE_LORA_500K = 0x2A,
    WIFI_PHY_RATE_MAX,
} wifi_phy_rate_t;



typedef enum {
    WIFI_EVENT_WIFI_READY = 0,
    WIFI_EVENT_SCAN_DONE,
    WIFI_EVENT_STA_START,
    WIFI_EVENT_STA_STOP,
    WIFI_EVENT_STA_CONNECTED,
    WIFI_EVENT_STA_DISCONNECTED,
    WIFI_EVENT_STA_AUTHMODE_CHANGE,

    WIFI_EVENT_STA_WPS_ER_SUCCESS,
    WIFI_EVENT_STA_WPS_ER_FAILED,
    WIFI_EVENT_STA_WPS_ER_TIMEOUT,
    WIFI_EVENT_STA_WPS_ER_PIN,
    WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP,

    WIFI_EVENT_AP_START,
    WIFI_EVENT_AP_STOP,
    WIFI_EVENT_AP_STACONNECTED,
    WIFI_EVENT_AP_STADISCONNECTED,

    WIFI_EVENT_AP_PROBEREQRECVED,
} wifi_event_t;



extern esp_event_base_t WIFI_EVENT;



typedef struct {
    uint32_t status;
    uint8_t number;
    uint8_t scan_id;
} wifi_event_sta_scan_done_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t ssid_len;
    uint8_t bssid[6];
    uint8_t channel;
    wifi_auth_mode_t authmode;
} wifi_event_sta_connected_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t ssid_len;
    uint8_t bssid[6];
    uint8_t reason;
} wifi_event_sta_disconnected_t;


typedef struct {
    wifi_auth_mode_t old_mode;
    wifi_auth_mode_t new_mode;
} wifi_event_sta_authmode_change_t;


typedef struct {
    uint8_t pin_code[8];
} wifi_event_sta_wps_er_pin_t;


typedef enum {
    WPS_FAIL_REASON_NORMAL = 0,
    WPS_FAIL_REASON_RECV_M2D,
    WPS_FAIL_REASON_MAX
} wifi_event_sta_wps_fail_reason_t;


typedef struct {
    uint8_t mac[6];
    uint8_t aid;
} wifi_event_ap_staconnected_t;


typedef struct {
    uint8_t mac[6];
    uint8_t aid;
} wifi_event_ap_stadisconnected_t;


typedef struct {
    int rssi;
    uint8_t mac[6];
} wifi_event_ap_probe_req_rx_t;
# 64 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 1
# 20 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 106 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
int xt_clock_freq(void) __attribute__((deprecated));







# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 1
# 40 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h"
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
# 41 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 1
# 42 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtensa-versions.h" 1
# 43 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 2
# 51 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/tie.h" 1
# 53 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h" 2
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
# 42 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/system.h" 1
# 43 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2

# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 1
# 45 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h"
# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/corebits.h" 1
# 46 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_context.h" 2

# 1 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/xtruntime-frames.h" 1
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
long pad[((3 + 1*1 + 1*2 + 0*1) & 3)];


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
# 45 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_config.h" 2
# 115 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2





# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 25 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2
# 26 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 2
# 59 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
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
# 84 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_run(void);
# 95 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 110 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 124 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 138 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 148 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 158 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 168 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 184 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 184 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 184 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                jump, 
# 184 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 184 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                           config);
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                         jump, 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 202 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                                                                        config);
# 227 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 237 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 247 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 257 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 267 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 289 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 307 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_init(void);
# 316 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_deinit(void);
# 330 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 330 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                   _Bool 
# 330 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                        repeat);
# 344 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 344 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 3 4
                                                    _Bool 
# 344 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
                                                         repeat);
# 354 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 368 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 378 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 388 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 398 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 410 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 420 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 429 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 442 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 456 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 471 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 482 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 493 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 504 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_intr_lock(void);
# 515 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_intr_unlock(void);
# 526 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void ets_waiti0(void);
# 544 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 634 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 121 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/projdefs.h" 1
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 1
# 87 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2






# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 1
# 82 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
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
# 83 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2
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
# 118 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_free_size( uint32_t caps );
# 136 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_minimum_free_size( uint32_t caps );
# 148 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_largest_free_block( uint32_t caps );
# 164 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_get_info( multi_heap_info_t *info, uint32_t caps );
# 177 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_print_heap_info( uint32_t caps );
# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_all(
# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                  _Bool 
# 191 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                       print_errors);
# 209 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 209 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 209 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity(uint32_t caps, 
# 209 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                             _Bool 
# 209 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                                  print_errors);
# 232 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"

# 232 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 232 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_addr(intptr_t addr, 
# 232 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h" 3 4
                                                  _Bool 
# 232 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
                                                       print_errors);
# 245 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_malloc_extmem_enable(size_t limit);
# 260 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc_prefer( size_t size, size_t num, ... );
# 271 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc_prefer( void *ptr, size_t size, size_t num, ... );
# 282 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc_prefer( size_t n, size_t size, size_t num, ... );
# 301 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump(uint32_t caps);
# 311 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
void heap_caps_dump_all(void);
# 88 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2




# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
       
# 60 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
typedef struct {
    const char *name;
    uint32_t caps[3];
    
# 63 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 63 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        aliased_iram;
    
# 64 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 64 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
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
# 135 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
size_t soc_get_available_memory_regions(soc_memory_region_t *regions);





size_t soc_get_available_memory_region_max_count(void);

inline static 
# 143 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 143 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "0"))) esp_ptr_dma_capable(const void *p)
{
    return (intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000;
}

inline static 
# 148 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 148 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "1"))) esp_ptr_word_aligned(const void *p)
{
    return ((intptr_t)p) % 4 == 0;
}

inline static 
# 153 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 153 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "2"))) esp_ptr_executable(const void *p)
{
    intptr_t ip = (intptr_t) p;
    return (ip >= 0x400D0000 && ip < 0x40400000)
        || (ip >= 0x40080000 && ip < 0x400A0000)
        || (ip >= 0x400C0000 && ip < 0x400C2000);
}

inline static 
# 161 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 161 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "3"))) esp_ptr_byte_accessible(const void *p)
{
    
# 163 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 163 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x40000000);



    return r;
}

inline static 
# 171 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 171 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "4"))) esp_ptr_internal(const void *p) {
    
# 172 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 172 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x400C2000);
    r |= ((intptr_t)p >= 0x50000000 && (intptr_t)p < 0x50002000);
    return r;
}


inline static 
# 179 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 179 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "5"))) esp_ptr_external_ram(const void *p) {
    return ((intptr_t)p >= 0x3F800000 && (intptr_t)p < 0x3FC00000);
}

inline static 
# 183 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 183 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "6"))) esp_ptr_in_iram(const void *p) {

    return ((intptr_t)p >= 0x40080000 && (intptr_t)p < 0x400A0000);



}

inline static 
# 191 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 191 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "7"))) esp_ptr_in_drom(const void *p) {
    return ((intptr_t)p >= 0x3F400000 && (intptr_t)p < 0x3F800000);
}

inline static 
# 195 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 195 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "8"))) esp_ptr_in_dram(const void *p) {
    return ((intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000);
}

inline static 
# 199 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 199 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "9"))) esp_ptr_in_diram_dram(const void *p) {
    return ((intptr_t)p >= 0x3FFE0000 && (intptr_t)p < 0x3FFFFFFC);
}

inline static 
# 203 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 203 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "10"))) esp_ptr_in_diram_iram(const void *p) {
    return ((intptr_t)p >= 0x400A0000 && (intptr_t)p < 0x400BFFFC);
}


inline static 
# 208 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 208 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1" "." "11"))) esp_stack_ptr_is_sane(uint32_t sp)
{

    return !(sp < 0x3FFAE000 + 0x10 || sp > 0x40000000 - 0x10 || ((sp & 0xF) != 0));
}
# 93 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2
# 117 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portbenchmark.h" 1
# 132 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 2





typedef struct {
# 149 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
 uint32_t owner;




 uint32_t count;




} portMUX_TYPE;
# 184 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR(void);
# 214 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 254 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 266 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"

# 266 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 266 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 327 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED(void) {
 unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;});
 ;
 return state;
}
# 355 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 387 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID(void);
# 413 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 430 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 441 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
extern void esp_vApplicationIdleHook( void );
extern void esp_vApplicationTickHook( void );






void _xt_coproc_release(volatile void * coproc_sa_base);
void vApplicationSleep( TickType_t xExpectedIdleTime );
# 95 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 125 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/mpu_wrappers.h" 1
# 126 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
# 135 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;
# 156 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext(void);





BaseType_t xPortInterruptedFromISRContext(void);
# 200 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t __attribute__((section(".iram1" "." "12"))) xPortGetCoreID(void) {
    uint32_t id;
    __asm__ __volatile__ (
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);





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
# 21 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h" 1
# 78 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/task.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/limits.h" 1
# 131 "/home/dieter/Development/esp-idf/components/newlib/include/limits.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include-fixed/limits.h" 1 3 4
# 132 "/home/dieter/Development/esp-idf/components/newlib/include/limits.h" 2
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
# 22 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2
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
# 23 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 1
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h" 1
# 78 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 24 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_base.h" 1
# 26 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
       





# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h" 2
# 1 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 1
# 24 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 1
# 40 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/opt.h" 1
# 51 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/opt.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 1
# 36 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/time.h" 1
# 22 "/home/dieter/Development/esp-idf/components/newlib/platform_include/time.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/time.h" 1
# 15 "/home/dieter/Development/esp-idf/components/newlib/include/time.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 16 "/home/dieter/Development/esp-idf/components/newlib/include/time.h" 2


# 1 "/home/dieter/Development/esp-idf/components/newlib/include/machine/time.h" 1
# 19 "/home/dieter/Development/esp-idf/components/newlib/include/time.h" 2
# 29 "/home/dieter/Development/esp-idf/components/newlib/include/time.h"


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;

char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;








char *strptime (const char *restrict, const char *restrict, struct tm *restrict)

                            ;
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 129 "/home/dieter/Development/esp-idf/components/newlib/include/time.h"
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 23 "/home/dieter/Development/esp-idf/components/newlib/platform_include/time.h" 2





int clock_settime(clockid_t clock_id, const struct timespec *tp);
int clock_gettime(clockid_t clock_id, struct timespec *tp);
int clock_getres(clockid_t clock_id, struct timespec *res);
# 37 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/unistd.h" 1



# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/unistd.h" 1
# 23 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/unistd.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/unistd.h" 1
# 14 "/home/dieter/Development/esp-idf/components/newlib/include/sys/unistd.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 15 "/home/dieter/Development/esp-idf/components/newlib/include/sys/unistd.h" 2

extern char **environ;

void _exit (int __status ) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode );
unsigned alarm (unsigned __secs );
int chdir (const char *__path );
int chmod (const char *__path, mode_t __mode );

int chown (const char *__path, uid_t __owner, gid_t __group );




int closeItem (int __fildes );



char * ctermid (char *__s );
char * cuserid (char *__s );



int dup (int __fildes );
int dup2 (int __fildes, int __fildes2 );






int execl (const char *__path, const char *, ... );
int execle (const char *__path, const char *, ... );
int execlp (const char *__file, const char *, ... );



int execv (const char *__path, char * const __argv[] );
int execve (const char *__path, char * const __argv[], char * const __envp[] );
int execvp (const char *__file, char * const __argv[] );




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);




int fchmod (int __fildes, mode_t __mode );

int fchown (int __fildes, uid_t __owner, gid_t __group );


int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);




pid_t fork (void );
long fpathconf (int __fd, int __name );
int fsync (int __fd);
int fdatasync (int __fd);



char * getcwd (char *__buf, size_t __size );




gid_t getegid (void );
uid_t geteuid (void );
gid_t getgid (void );

int getgroups (int __gidsetsize, gid_t __grouplist[] );



char * getlogin (void );



char * getpass (const char *__prompt);
int getpagesize (void);



pid_t getpgid (pid_t);
pid_t getpgrp (void );
pid_t getpid (void );
pid_t getppid (void );




uid_t getuid (void );






int isatty (int __fildes );

int lchown (const char *__path, uid_t __owner, gid_t __group );

int link (const char *__path1, const char *__path2 );

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags );

int nice (int __nice_value );

off_t lseek (int __fildes, off_t __offset, int __whence );
# 138 "/home/dieter/Development/esp-idf/components/newlib/include/sys/unistd.h"
long pathconf (const char *__path, int __name );
int pause (void );



int pipe (int __fildes[2] );



ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);
int read (int __fd, void *__buf, size_t __nbyte );




int rmdir (const char *__path );



void * sbrk (ptrdiff_t __incr);





int setgid (gid_t __gid );





int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid );
int setpgrp (void );




pid_t setsid (void );

int setuid (uid_t __uid );




unsigned sleep (unsigned int __seconds );
void swab (const void *restrict, void *restrict, ssize_t);
long sysconf (int __name );
pid_t tcgetpgrp (int __fildes );
int tcsetpgrp (int __fildes, pid_t __pgrp_id );
char * ttyname (int __fildes );



int unlink (const char *__path );
int usleep (useconds_t __useconds);
int vhangup (void );
int write (int __fd, const void *__buf, size_t __nbyte );






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void );
# 255 "/home/dieter/Development/esp-idf/components/newlib/include/sys/unistd.h"
ssize_t readlink (const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                   ;

ssize_t readlinkat (int __dirfd1, const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                     ;

int symlink (const char *__name1, const char *__name2);

int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 24 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/unistd.h" 2

int truncate(const char *, off_t __length);
int gethostname(char *__name, size_t __len);
# 5 "/home/dieter/Development/esp-idf/components/newlib/include/unistd.h" 2
# 38 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/time.h" 1
       
# 16 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/time.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/time.h" 1
# 17 "/home/dieter/Development/esp-idf/components/newlib/include/sys/time.h"
struct timeval {
  time_t tv_sec;
  suseconds_t tv_usec;
};
# 55 "/home/dieter/Development/esp-idf/components/newlib/include/sys/time.h"
struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};
# 68 "/home/dieter/Development/esp-idf/components/newlib/include/sys/time.h"
struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};





int gettimeofday (struct timeval *restrict __p, void *restrict __tz)
                            ;

int settimeofday (const struct timeval *, const struct timezone *);
int adjtime (const struct timeval *, struct timeval *);

int utimes (const char *__path, const struct timeval *__tvp);
int getitimer (int __which, struct itimerval *__value);
int setitimer (int __which, const struct itimerval *restrict __value, struct itimerval *restrict __ovalue)
                                            ;
# 17 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/time.h" 2
# 39 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/fcntl.h" 1


# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_default_fcntl.h" 1
# 159 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_default_fcntl.h"
struct flock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
};




struct eflock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
 long l_rpid;
 long l_rsys;
};



# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/stat.h" 1
# 26 "/home/dieter/Development/esp-idf/components/newlib/include/sys/stat.h"
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 49 "/home/dieter/Development/esp-idf/components/newlib/include/sys/stat.h"
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  long st_blksize;
  long st_blocks;
  long st_spare4[2];


};
# 146 "/home/dieter/Development/esp-idf/components/newlib/include/sys/stat.h"
int chmod ( const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat ( int __fd, struct stat *__sbuf );
int mkdir ( const char *_path, mode_t __mode );
int mkfifo ( const char *__path, mode_t __mode );
int stat ( const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask ( mode_t __mask );







int fchmodat (int, const char *, mode_t, int);


int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);


int mknodat (int, const char *, mode_t, dev_t);


int utimensat (int, const char *, const struct timespec *, int);
int futimens (int, const struct timespec *);
# 185 "/home/dieter/Development/esp-idf/components/newlib/include/sys/_default_fcntl.h" 2

extern int open (const char *, int, ...);

extern int openat (int, const char *, int, ...);

extern int creat (const char *, mode_t);
extern int fcntl (int, int, ...);

extern int flock (int, int);
# 4 "/home/dieter/Development/esp-idf/components/newlib/include/sys/fcntl.h" 2
# 40 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/vfs/include/sys/ioctl.h" 1
# 15 "/home/dieter/Development/esp-idf/components/vfs/include/sys/ioctl.h"
       





int ioctl(int fd, int request, ...);
# 41 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2

# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h" 1
# 29 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/select.h"
int select(int nfds, _types_fd_set *readfds, _types_fd_set *writefds, _types_fd_set *errorfds, struct timeval *timeout);
# 43 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_task.h" 1
# 30 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_task.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 31 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_task.h" 2
# 44 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2


# 1 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/sntp.h" 1
# 46 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/sntp.h"
typedef enum {
    SNTP_SYNC_MODE_IMMED,
    SNTP_SYNC_MODE_SMOOTH,
} sntp_sync_mode_t;


typedef enum {
    SNTP_SYNC_STATUS_RESET,
    SNTP_SYNC_STATUS_COMPLETED,
    SNTP_SYNC_STATUS_IN_PROGRESS,
} sntp_sync_status_t;






typedef void (*sntp_sync_time_cb_t) (struct timeval *tv);
# 77 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/sntp.h"
void sntp_sync_time(struct timeval *tv);







void sntp_set_sync_mode(sntp_sync_mode_t sync_mode);







sntp_sync_mode_t sntp_get_sync_mode(void);
# 107 "/home/dieter/Development/esp-idf/components/lwip/include/apps/sntp/sntp.h"
sntp_sync_status_t sntp_get_sync_status(void);






void sntp_set_sync_status(sntp_sync_status_t sync_status);






void sntp_set_time_sync_notification_cb(sntp_sync_time_cb_t callback);
# 47 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/netif/dhcp_state.h" 1
# 23 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/netif/dhcp_state.h"

# 23 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/netif/dhcp_state.h" 3 4
_Bool 
# 23 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/netif/dhcp_state.h"
    dhcp_ip_addr_restore(void *netif);

void dhcp_ip_addr_store(void *netif);

void dhcp_ip_addr_erase(void *netif);
# 48 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/lwipopts.h" 2
# 52 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/opt.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/debug.h" 1
# 40 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/debug.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 1
# 48 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h" 1
# 38 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/errno.h" 1
# 18 "/home/dieter/Development/esp-idf/components/newlib/platform_include/errno.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/errno.h" 1




typedef int error_t;



# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/errno.h" 1
# 15 "/home/dieter/Development/esp-idf/components/newlib/include/sys/errno.h"
extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/home/dieter/Development/esp-idf/components/newlib/include/errno.h" 2
# 19 "/home/dieter/Development/esp-idf/components/newlib/platform_include/errno.h" 2
# 39 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h" 2



# 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h" 1
# 40 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/vfs_lwip.h" 1
# 19 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/vfs_lwip.h"
void esp_vfs_lwip_sockets_register(void);
# 41 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h" 2






typedef SemaphoreHandle_t sys_sem_t;
typedef SemaphoreHandle_t sys_mutex_t;
typedef TaskHandle_t sys_thread_t;

typedef struct sys_mbox_s {
  QueueHandle_t os_mbox;
  void *owner;
}* sys_mbox_t;
# 88 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
void sys_delay_ms(uint32_t ms);
sys_sem_t* sys_thread_sem_init(void);
void sys_thread_sem_deinit(void);
sys_sem_t* sys_thread_sem_get(void);
# 43 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/cc.h" 2





typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;


typedef int sys_prot_t;
# 49 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 2
# 107 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 108 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 2
# 125 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;

typedef uint64_t u64_t;
typedef int64_t s64_t;

typedef uintptr_t mem_ptr_t;
# 148 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/inttypes.h" 1
# 20 "/home/dieter/Development/esp-idf/components/newlib/include/inttypes.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 21 "/home/dieter/Development/esp-idf/components/newlib/include/inttypes.h" 2
# 299 "/home/dieter/Development/esp-idf/components/newlib/include/inttypes.h"
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;





extern intmax_t imaxabs(intmax_t j);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *restrict, char **restrict, int);
extern uintmax_t strtoumax(const char *restrict, char **restrict, int);
extern intmax_t wcstoimax(const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t wcstoumax(const wchar_t *restrict, wchar_t **restrict, int);
# 149 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 2
# 185 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/limits.h" 1
# 186 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 2
# 202 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
typedef int ssize_t;
# 228 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/ctype.h" 1







int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);
# 43 "/home/dieter/Development/esp-idf/components/newlib/include/ctype.h"
const

extern char * const __ctype_ptr__;
# 109 "/home/dieter/Development/esp-idf/components/newlib/include/ctype.h"
extern const char _ctype_[];


# 229 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/arch.h" 2
# 41 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/debug.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/opt.h" 1
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/debug.h" 2
# 53 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/opt.h" 2
# 41 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/def.h" 1
# 96 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 133 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 2

# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h" 1
# 51 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};



typedef struct ip4_addr ip4_addr_t;


struct netif;
# 151 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 204 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h" 1
# 46 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/def.h" 1
# 47 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h" 2



# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_zone.h" 1
# 136 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_zone.h"
enum lwip_ipv6_scope_type
{

  IP6_UNKNOWN = 0,

  IP6_UNICAST = 1,

  IP6_MULTICAST = 2
};
# 51 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h" 2
# 59 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
struct ip6_addr {
  u32_t addr[4];

  u8_t zone;

};


typedef struct ip6_addr ip6_addr_t;
# 339 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
int ip6addr_aton(const char *cp, ip6_addr_t *addr);

char *ip6addr_ntoa(const ip6_addr_t *addr);
char *ip6addr_ntoa_r(const ip6_addr_t *addr, char *buf, int buflen);
# 45 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 2
# 54 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};







typedef struct ip_addr {
  union {
    ip6_addr_t ip6;
    ip4_addr_t ip4;
  } u_addr;

  u8_t type;
} ip_addr_t;

extern const ip_addr_t ip_addr_any_type;
# 244 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
char *ipaddr_ntoa(const ip_addr_t *addr);
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen);
int ipaddr_aton(const char *cp, ip_addr_t *addr);
# 374 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 410 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip6_addr_any;
# 25 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h" 1
# 20 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
typedef struct dhcps_state{
        s16_t state;
} dhcps_state;

typedef struct dhcps_msg {
        u8_t op, htype, hlen, hops;
        u8_t xid[4];
        u16_t secs, flags;
        u8_t ciaddr[4];
        u8_t yiaddr[4];
        u8_t siaddr[4];
        u8_t giaddr[4];
        u8_t chaddr[16];
        u8_t sname[64];
        u8_t file[128];
        u8_t options[312];
}dhcps_msg;


typedef struct {
 
# 40 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h" 3 4
_Bool 
# 40 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
     enable;
 ip4_addr_t start_ip;
 ip4_addr_t end_ip;
} dhcps_lease_t;

enum dhcps_offer_option{
 OFFER_START = 0x00,
 OFFER_ROUTER = 0x01,
 OFFER_DNS = 0x02,
 OFFER_END
};






struct dhcps_pool{
 ip4_addr_t ip;
 u8_t mac[6];
 u32_t lease_timer;
};

typedef u32_t dhcps_time_t;
typedef u8_t dhcps_offer_t;

typedef struct {
        dhcps_offer_t dhcps_offer;
        dhcps_offer_t dhcps_dns;
        dhcps_time_t dhcps_time;
        dhcps_lease_t dhcps_poll;
} dhcps_options_t;

typedef void (*dhcps_cb_t)(u8_t client_ip[4]);

static inline 
# 75 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h" 3 4
             _Bool 
# 75 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
                  dhcps_router_enabled (dhcps_offer_t offer)
{
    return (offer & OFFER_ROUTER) != 0;
}

static inline 
# 80 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h" 3 4
             _Bool 
# 80 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
                  dhcps_dns_enabled (dhcps_offer_t offer)
{
    return (offer & OFFER_DNS) != 0;
}

void dhcps_start(struct netif *netif, ip4_addr_t ip);
void dhcps_stop(struct netif *netif);
void *dhcps_option_info(u8_t op_id, u32_t opt_len);
void dhcps_set_option_info(u8_t op_id, void *opt_info, u32_t opt_len);

# 89 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h" 3 4
_Bool 
# 89 "/home/dieter/Development/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
    dhcp_search_ip_on_mac(u8_t *mac, ip4_addr_t *ip);
void dhcps_dns_setserver(const ip_addr_t *dnsserver);
ip4_addr_t dhcps_dns_getserver(void);
void dhcps_set_new_lease_cb(dhcps_cb_t cb);
# 26 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 2

typedef dhcps_lease_t tcpip_adapter_dhcps_lease_t;
# 53 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
typedef struct {
    ip4_addr_t ip;
    ip4_addr_t netmask;
    ip4_addr_t gw;
} tcpip_adapter_ip_info_t;



typedef struct {
    ip6_addr_t ip;
} tcpip_adapter_ip6_info_t;





typedef struct {
    uint8_t mac[6];
    ip4_addr_t ip;
} tcpip_adapter_sta_info_t;





typedef struct {
    tcpip_adapter_sta_info_t sta[(10)];
    int num;
} tcpip_adapter_sta_list_t;
# 95 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
typedef enum {
    TCPIP_ADAPTER_IF_STA = 0,
    TCPIP_ADAPTER_IF_AP,
    TCPIP_ADAPTER_IF_ETH,
    TCPIP_ADAPTER_IF_TEST,
    TCPIP_ADAPTER_IF_MAX
} tcpip_adapter_if_t;


typedef enum {
    TCPIP_ADAPTER_DNS_MAIN= 0,
    TCPIP_ADAPTER_DNS_BACKUP,
    TCPIP_ADAPTER_DNS_FALLBACK,
    TCPIP_ADAPTER_DNS_MAX
} tcpip_adapter_dns_type_t;


typedef struct {
    ip_addr_t ip;
} tcpip_adapter_dns_info_t;


typedef enum {
    TCPIP_ADAPTER_DHCP_INIT = 0,
    TCPIP_ADAPTER_DHCP_STARTED,
    TCPIP_ADAPTER_DHCP_STOPPED,
    TCPIP_ADAPTER_DHCP_STATUS_MAX
} tcpip_adapter_dhcp_status_t;


typedef enum{
    TCPIP_ADAPTER_OP_START = 0,
    TCPIP_ADAPTER_OP_SET,
    TCPIP_ADAPTER_OP_GET,
    TCPIP_ADAPTER_OP_MAX
} tcpip_adapter_dhcp_option_mode_t;


typedef tcpip_adapter_dhcp_option_mode_t tcpip_adapter_option_mode_t;


typedef enum{
    TCPIP_ADAPTER_DOMAIN_NAME_SERVER = 6,
    TCPIP_ADAPTER_ROUTER_SOLICITATION_ADDRESS = 32,
    TCPIP_ADAPTER_REQUESTED_IP_ADDRESS = 50,
    TCPIP_ADAPTER_IP_ADDRESS_LEASE_TIME = 51,
    TCPIP_ADAPTER_IP_REQUEST_RETRY_TIME = 52,
} tcpip_adapter_dhcp_option_id_t;


typedef tcpip_adapter_dhcp_option_id_t tcpip_adapter_option_id_t;


typedef enum {
    IP_EVENT_STA_GOT_IP,
    IP_EVENT_STA_LOST_IP,
    IP_EVENT_AP_STAIPASSIGNED,
    IP_EVENT_GOT_IP6,
    IP_EVENT_ETH_GOT_IP,
} ip_event_t;


extern esp_event_base_t IP_EVENT;


typedef struct {
    tcpip_adapter_if_t if_index;
    tcpip_adapter_ip_info_t ip_info;
    
# 163 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 3 4
   _Bool 
# 163 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
        ip_changed;
} ip_event_got_ip_t;


typedef struct {
    tcpip_adapter_if_t if_index;
    tcpip_adapter_ip6_info_t ip6_info;
} ip_event_got_ip6_t;


typedef struct {
    ip4_addr_t ip;
} ip_event_ap_staipassigned_t;







void tcpip_adapter_init(void);
# 199 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_eth_start(uint8_t *mac, tcpip_adapter_ip_info_t *ip_info, void *args);
# 215 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_sta_start(uint8_t *mac, tcpip_adapter_ip_info_t *ip_info);
# 232 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_ap_start(uint8_t *mac, tcpip_adapter_ip_info_t *ip_info);
# 253 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_stop(tcpip_adapter_if_t tcpip_if);
# 269 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_up(tcpip_adapter_if_t tcpip_if);
# 285 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_down(tcpip_adapter_if_t tcpip_if);
# 302 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_ip_info(tcpip_adapter_if_t tcpip_if, tcpip_adapter_ip_info_t *ip_info);
# 327 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_set_ip_info(tcpip_adapter_if_t tcpip_if, const tcpip_adapter_ip_info_t *ip_info);
# 356 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_set_dns_info(tcpip_adapter_if_t tcpip_if, tcpip_adapter_dns_type_t type, tcpip_adapter_dns_info_t *dns);
# 374 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_dns_info(tcpip_adapter_if_t tcpip_if, tcpip_adapter_dns_type_t type, tcpip_adapter_dns_info_t *dns);
# 391 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_old_ip_info(tcpip_adapter_if_t tcpip_if, tcpip_adapter_ip_info_t *ip_info);
# 409 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_set_old_ip_info(tcpip_adapter_if_t tcpip_if, const tcpip_adapter_ip_info_t *ip_info);
# 425 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_create_ip6_linklocal(tcpip_adapter_if_t tcpip_if);
# 440 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_ip6_linklocal(tcpip_adapter_if_t tcpip_if, ip6_addr_t *if_ip6);
# 457 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcps_get_status(tcpip_adapter_if_t tcpip_if, tcpip_adapter_dhcp_status_t *status);
# 473 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcps_option(tcpip_adapter_dhcp_option_mode_t opt_op, tcpip_adapter_dhcp_option_id_t opt_id, void *opt_val, uint32_t opt_len);
# 487 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcps_start(tcpip_adapter_if_t tcpip_if);
# 502 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcps_stop(tcpip_adapter_if_t tcpip_if);
# 513 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcpc_get_status(tcpip_adapter_if_t tcpip_if, tcpip_adapter_dhcp_status_t *status);
# 528 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcpc_option(tcpip_adapter_dhcp_option_mode_t opt_op, tcpip_adapter_dhcp_option_id_t opt_id, void *opt_val, uint32_t opt_len);
# 545 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcpc_start(tcpip_adapter_if_t tcpip_if);
# 562 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_dhcpc_stop(tcpip_adapter_if_t tcpip_if);
# 578 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_eth_input(void *buffer, uint16_t len, void *eb);
# 596 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_sta_input(void *buffer, uint16_t len, void *eb);
# 614 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_ap_input(void *buffer, uint16_t len, void *eb);
# 629 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_interface_t tcpip_adapter_get_esp_if(void *dev);
# 642 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_sta_list(const wifi_sta_list_t *wifi_sta_list, tcpip_adapter_sta_list_t *tcpip_sta_list);
# 656 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_set_hostname(tcpip_adapter_if_t tcpip_if, const char *hostname);
# 669 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_hostname(tcpip_adapter_if_t tcpip_if, const char **hostname);
# 684 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_get_netif(tcpip_adapter_if_t tcpip_if, void ** netif);
# 695 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"

# 695 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 3 4
_Bool 
# 695 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
    tcpip_adapter_is_netif_up(tcpip_adapter_if_t tcpip_if);
# 709 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
esp_err_t tcpip_adapter_test_start(uint8_t *mac, tcpip_adapter_ip_info_t *ip_info);







esp_err_t tcpip_adapter_set_default_eth_handlers(void);







esp_err_t tcpip_adapter_clear_default_eth_handlers(void);







esp_err_t tcpip_adapter_set_default_wifi_handlers(void);







esp_err_t tcpip_adapter_clear_default_wifi_handlers(void);
# 750 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
int tcpip_adapter_get_netif_index(tcpip_adapter_if_t tcpip_if);
# 23 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h" 2






typedef enum {
    SYSTEM_EVENT_WIFI_READY = 0,
    SYSTEM_EVENT_SCAN_DONE,
    SYSTEM_EVENT_STA_START,
    SYSTEM_EVENT_STA_STOP,
    SYSTEM_EVENT_STA_CONNECTED,
    SYSTEM_EVENT_STA_DISCONNECTED,
    SYSTEM_EVENT_STA_AUTHMODE_CHANGE,
    SYSTEM_EVENT_STA_GOT_IP,
    SYSTEM_EVENT_STA_LOST_IP,
    SYSTEM_EVENT_STA_WPS_ER_SUCCESS,
    SYSTEM_EVENT_STA_WPS_ER_FAILED,
    SYSTEM_EVENT_STA_WPS_ER_TIMEOUT,
    SYSTEM_EVENT_STA_WPS_ER_PIN,
    SYSTEM_EVENT_STA_WPS_ER_PBC_OVERLAP,
    SYSTEM_EVENT_AP_START,
    SYSTEM_EVENT_AP_STOP,
    SYSTEM_EVENT_AP_STACONNECTED,
    SYSTEM_EVENT_AP_STADISCONNECTED,
    SYSTEM_EVENT_AP_STAIPASSIGNED,
    SYSTEM_EVENT_AP_PROBEREQRECVED,
    SYSTEM_EVENT_GOT_IP6,
    SYSTEM_EVENT_ETH_START,
    SYSTEM_EVENT_ETH_STOP,
    SYSTEM_EVENT_ETH_CONNECTED,
    SYSTEM_EVENT_ETH_DISCONNECTED,
    SYSTEM_EVENT_ETH_GOT_IP,
    SYSTEM_EVENT_MAX
} system_event_id_t;
# 66 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
typedef wifi_event_sta_wps_fail_reason_t system_event_sta_wps_fail_reason_t;


typedef wifi_event_sta_scan_done_t system_event_sta_scan_done_t;


typedef wifi_event_sta_connected_t system_event_sta_connected_t;


typedef wifi_event_sta_disconnected_t system_event_sta_disconnected_t;


typedef wifi_event_sta_authmode_change_t system_event_sta_authmode_change_t;


typedef wifi_event_sta_wps_er_pin_t system_event_sta_wps_er_pin_t;


typedef wifi_event_ap_staconnected_t system_event_ap_staconnected_t;


typedef wifi_event_ap_stadisconnected_t system_event_ap_stadisconnected_t;


typedef wifi_event_ap_probe_req_rx_t system_event_ap_probe_req_rx_t;


typedef ip_event_ap_staipassigned_t system_event_ap_staipassigned_t;


typedef ip_event_got_ip_t system_event_sta_got_ip_t;


typedef ip_event_got_ip6_t system_event_got_ip6_t;


typedef union {
    system_event_sta_connected_t connected;
    system_event_sta_disconnected_t disconnected;
    system_event_sta_scan_done_t scan_done;
    system_event_sta_authmode_change_t auth_change;
    system_event_sta_got_ip_t got_ip;
    system_event_sta_wps_er_pin_t sta_er_pin;
    system_event_sta_wps_fail_reason_t sta_er_fail_reason;
    system_event_ap_staconnected_t sta_connected;
    system_event_ap_stadisconnected_t sta_disconnected;
    system_event_ap_probe_req_rx_t ap_probereqrecved;
    system_event_ap_staipassigned_t ap_staipassigned;
    system_event_got_ip6_t got_ip6;
} system_event_info_t;


typedef struct {
    system_event_id_t event_id;
    system_event_info_t event_info;
} system_event_t;


typedef esp_err_t (*system_event_handler_t)(system_event_t *event);
# 138 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
esp_err_t esp_event_send(system_event_t *event);
# 155 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
esp_err_t esp_event_process_default(system_event_t *event);







void esp_event_set_default_eth_handlers(void);






void esp_event_set_default_wifi_handlers(void);
# 185 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
typedef esp_err_t (*system_event_cb_t)(void *ctx, system_event_t *event);
# 201 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
esp_err_t esp_event_loop_init(system_event_cb_t cb, void *ctx);
# 217 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
system_event_cb_t esp_event_loop_set_cb(system_event_cb_t cb, void *ctx);
# 27 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2






typedef struct {
    int32_t queue_size;
    const char* task_name;

    UBaseType_t task_priority;
    uint32_t task_stack_size;
    BaseType_t task_core_id;

} esp_event_loop_args_t;
# 55 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_loop_create(const esp_event_loop_args_t* event_loop_args, esp_event_loop_handle_t* event_loop);
# 66 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_loop_delete(esp_event_loop_handle_t event_loop);
# 77 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_loop_create_default(void);
# 86 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_loop_delete_default(void);
# 114 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_loop_run(esp_event_loop_handle_t event_loop, TickType_t ticks_to_run);
# 144 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_handler_register(esp_event_base_t event_base,
                                        int32_t event_id,
                                        esp_event_handler_t event_handler,
                                        void* event_handler_arg);
# 170 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_handler_register_with(esp_event_loop_handle_t event_loop,
                                            esp_event_base_t event_base,
                                            int32_t event_id,
                                            esp_event_handler_t event_handler,
                                            void* event_handler_arg);
# 197 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_handler_unregister(esp_event_base_t event_base, int32_t event_id, esp_event_handler_t event_handler);
# 215 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_handler_unregister_with(esp_event_loop_handle_t event_loop,
                                            esp_event_base_t event_base,
                                            int32_t event_id,
                                            esp_event_handler_t event_handler);
# 238 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_post(esp_event_base_t event_base,
                            int32_t event_id,
                            void* event_data,
                            size_t event_data_size,
                            TickType_t ticks_to_wait);
# 266 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_post_to(esp_event_loop_handle_t event_loop,
                            esp_event_base_t event_base,
                            int32_t event_id,
                            void* event_data,
                            size_t event_data_size,
                            TickType_t ticks_to_wait);
# 296 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_isr_post(esp_event_base_t event_base,
                            int32_t event_id,
                            void* event_data,
                            size_t event_data_size,
                            BaseType_t* task_unblocked);
# 324 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_isr_post_to(esp_event_loop_handle_t event_loop,
                            esp_event_base_t event_base,
                            int32_t event_id,
                            void* event_data,
                            size_t event_data_size,
                            BaseType_t* task_unblocked);
# 376 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
esp_err_t esp_event_dump(FILE* file);
# 65 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_private.h" 1
# 21 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_private.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h" 1
# 37 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef enum {
    ESP_CRYPTO_HASH_ALG_MD5, ESP_CRYPTO_HASH_ALG_SHA1,
    ESP_CRYPTO_HASH_ALG_HMAC_MD5, ESP_CRYPTO_HASH_ALG_HMAC_SHA1,
    ESP_CRYPTO_HASH_ALG_SHA256, ESP_CRYPTO_HASH_ALG_HMAC_SHA256
}esp_crypto_hash_alg_t;






typedef enum {
    ESP_CRYPTO_CIPHER_NULL, ESP_CRYPTO_CIPHER_ALG_AES, ESP_CRYPTO_CIPHER_ALG_3DES,
    ESP_CRYPTO_CIPHER_ALG_DES, ESP_CRYPTO_CIPHER_ALG_RC2, ESP_CRYPTO_CIPHER_ALG_RC4
} esp_crypto_cipher_alg_t;





typedef struct crypto_hash esp_crypto_hash_t;





typedef struct crypto_cipher esp_crypto_cipher_t;
# 73 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_128_encrypt_t)(const unsigned char *key, const unsigned char *iv, unsigned char *data, int data_len);
# 84 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_128_decrypt_t)(const unsigned char *key, const unsigned char *iv, unsigned char *data, int data_len);
# 95 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_wrap_t)(const unsigned char *kek, int n, const unsigned char *plain, unsigned char *cipher);
# 106 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_unwrap_t)(const unsigned char *kek, int n, const unsigned char *cipher, unsigned char *plain);
# 119 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void (*esp_hmac_sha256_vector_t)(const unsigned char *key, int key_len, int num_elem,
                      const unsigned char *addr[], const int *len, unsigned char *mac);
# 134 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void (*esp_sha256_prf_t)(const unsigned char *key, int key_len, const char *label,
                            const unsigned char *data, int data_len, unsigned char *buf, int buf_len);
# 147 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_md5_t)(const unsigned char *key, unsigned int key_len, const unsigned char *data,
                              unsigned int data_len, unsigned char *mac);
# 161 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_md5_vector_t)(const unsigned char *key, unsigned int key_len, unsigned int num_elem,
                              const unsigned char *addr[], const unsigned int *len, unsigned char *mac);
# 174 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_sha1_t)(const unsigned char *key, unsigned int key_len, const unsigned char *data,
                              unsigned int data_len, unsigned char *mac);
# 188 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_sha1_vector_t)(const unsigned char *key, unsigned int key_len, unsigned int num_elem,
                              const unsigned char *addr[], const unsigned int *len, unsigned char *mac);
# 206 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_sha1_prf_t)(const unsigned char *key, unsigned int key_len, const char *label,
                              const unsigned char *data, unsigned int data_len, unsigned char *buf, unsigned int buf_len);
# 218 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_sha1_vector_t)(unsigned int num_elem, const unsigned char *addr[], const unsigned int *len,
                              unsigned char *mac);
# 236 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_pbkdf2_sha1_t)(const char *passphrase, const char *ssid, unsigned int ssid_len,
                              int iterations, unsigned char *buf, unsigned int buflen);
# 253 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_rc4_skip_t)(const unsigned char *key, unsigned int keylen, unsigned int skip,
                              unsigned char *data, unsigned int data_len);
# 265 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef int (*esp_md5_vector_t)(unsigned int num_elem, const unsigned char *addr[], const unsigned int *len,
                              unsigned char *mac);
# 275 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void (*esp_aes_encrypt_t)(void *ctx, const unsigned char *plain, unsigned char *crypt);
# 284 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void * (*esp_aes_encrypt_init_t)(const unsigned char *key, unsigned int len);






typedef void (*esp_aes_encrypt_deinit_t)(void *ctx);
# 300 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void (*esp_aes_decrypt_t)(void *ctx, const unsigned char *crypt, unsigned char *plain);
# 309 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_crypto_types.h"
typedef void * (*esp_aes_decrypt_init_t)(const unsigned char *key, unsigned int len);






typedef void (*esp_aes_decrypt_deinit_t)(void *ctx);






typedef struct {
    uint32_t size;
    uint32_t version;
    esp_aes_wrap_t aes_wrap;
    esp_aes_unwrap_t aes_unwrap;
    esp_hmac_sha256_vector_t hmac_sha256_vector;
    esp_sha256_prf_t sha256_prf;
    esp_hmac_md5_t hmac_md5;
    esp_hmac_md5_vector_t hamc_md5_vector;
    esp_hmac_sha1_t hmac_sha1;
    esp_hmac_sha1_vector_t hmac_sha1_vector;
    esp_sha1_prf_t sha1_prf;
    esp_sha1_vector_t sha1_vector;
    esp_pbkdf2_sha1_t pbkdf2_sha1;
    esp_rc4_skip_t rc4_skip;
    esp_md5_vector_t md5_vector;
    esp_aes_encrypt_t aes_encrypt;
    esp_aes_encrypt_init_t aes_encrypt_init;
    esp_aes_encrypt_deinit_t aes_encrypt_deinit;
    esp_aes_decrypt_t aes_decrypt;
    esp_aes_decrypt_init_t aes_decrypt_init;
    esp_aes_decrypt_deinit_t aes_decrypt_deinit;
}wpa_crypto_funcs_t;






typedef struct{
    esp_aes_128_encrypt_t aes_128_encrypt;
    esp_aes_128_decrypt_t aes_128_decrypt;
} mesh_crypto_funcs_t;
# 22 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_private.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h" 1
# 18 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 98 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 98 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 19 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h" 2
# 33 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h"

# 33 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h"
typedef struct {
    int32_t _version;
    void (*_set_isr)(int32_t n, void *f, void *arg);
    void (*_ints_on)(uint32_t mask);
    void (*_ints_off)(uint32_t mask);
    void *(* _spin_lock_create)(void);
    void (* _spin_lock_delete)(void *lock);
    uint32_t (*_wifi_int_disable)(void *wifi_int_mux);
    void (*_wifi_int_restore)(void *wifi_int_mux, uint32_t tmp);
    void (*_task_yield_from_isr)(void);
    void *(*_semphr_create)(uint32_t max, uint32_t init);
    void (*_semphr_delete)(void *semphr);
    int32_t (*_semphr_take)(void *semphr, uint32_t block_time_tick);
    int32_t (*_semphr_give)(void *semphr);
    void *(*_wifi_thread_semphr_get)(void);
    void *(*_mutex_create)(void);
    void *(*_recursive_mutex_create)(void);
    void (*_mutex_delete)(void *mutex);
    int32_t (*_mutex_lock)(void *mutex);
    int32_t (*_mutex_unlock)(void *mutex);
    void *(* _queue_create)(uint32_t queue_len, uint32_t item_size);
    void (* _queue_delete)(void *queue);
    int32_t (* _queue_send)(void *queue, void *item, uint32_t block_time_tick);
    int32_t (* _queue_send_from_isr)(void *queue, void *item, void *hptw);
    int32_t (* _queue_send_to_back)(void *queue, void *item, uint32_t block_time_tick);
    int32_t (* _queue_send_to_front)(void *queue, void *item, uint32_t block_time_tick);
    int32_t (* _queue_recv)(void *queue, void *item, uint32_t block_time_tick);
    uint32_t (* _queue_msg_waiting)(void *queue);
    void *(* _event_group_create)(void);
    void (* _event_group_delete)(void *event);
    uint32_t (* _event_group_set_bits)(void *event, uint32_t bits);
    uint32_t (* _event_group_clear_bits)(void *event, uint32_t bits);
    uint32_t (* _event_group_wait_bits)(void *event, uint32_t bits_to_wait_for, int32_t clear_on_exit, int32_t wait_for_all_bits, uint32_t block_time_tick);
    int32_t (* _task_create_pinned_to_core)(void *task_func, const char *name, uint32_t stack_depth, void *param, uint32_t prio, void *task_handle, uint32_t core_id);
    int32_t (* _task_create)(void *task_func, const char *name, uint32_t stack_depth, void *param, uint32_t prio, void *task_handle);
    void (* _task_delete)(void *task_handle);
    void (* _task_delay)(uint32_t tick);
    int32_t (* _task_ms_to_tick)(uint32_t ms);
    void *(* _task_get_current_task)(void);
    int32_t (* _task_get_max_priority)(void);
    void *(* _malloc)(uint32_t size);
    void (* _free)(void *p);
    int32_t (* _event_post)(const char* event_base, int32_t event_id, void* event_data, size_t event_data_size, uint32_t ticks_to_wait);
    uint32_t (* _get_free_heap_size)(void);
    uint32_t (* _rand)(void);
    void (* _dport_access_stall_other_cpu_start_wrap)(void);
    void (* _dport_access_stall_other_cpu_end_wrap)(void);
    int32_t (* _phy_rf_deinit)(uint32_t module);
    void (* _phy_load_cal_and_init)(uint32_t module);
    int32_t (* _read_mac)(uint8_t* mac, uint32_t type);
    void (* _timer_arm)(void *timer, uint32_t tmout, 
# 83 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h" 3 4
                                                    _Bool 
# 83 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h"
                                                         repeat);
    void (* _timer_disarm)(void *timer);
    void (* _timer_done)(void *ptimer);
    void (* _timer_setfn)(void *ptimer, void *pfunction, void *parg);
    void (* _timer_arm_us)(void *ptimer, uint32_t us, 
# 87 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h" 3 4
                                                     _Bool 
# 87 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_os_adapter.h"
                                                          repeat);
    void (* _periph_module_enable)(uint32_t periph);
    void (* _periph_module_disable)(uint32_t periph);
    int64_t (* _esp_timer_get_time)(void);
    int32_t (* _nvs_set_i8)(uint32_t handle, const char* key, int8_t value);
    int32_t (* _nvs_get_i8)(uint32_t handle, const char* key, int8_t* out_value);
    int32_t (* _nvs_set_u8)(uint32_t handle, const char* key, uint8_t value);
    int32_t (* _nvs_get_u8)(uint32_t handle, const char* key, uint8_t* out_value);
    int32_t (* _nvs_set_u16)(uint32_t handle, const char* key, uint16_t value);
    int32_t (* _nvs_get_u16)(uint32_t handle, const char* key, uint16_t* out_value);
    int32_t (* _nvs_open)(const char* name, uint32_t open_mode, uint32_t *out_handle);
    void (* _nvs_close)(uint32_t handle);
    int32_t (* _nvs_commit)(uint32_t handle);
    int32_t (* _nvs_set_blob)(uint32_t handle, const char* key, const void* value, size_t length);
    int32_t (* _nvs_get_blob)(uint32_t handle, const char* key, void* out_value, size_t* length);
    int32_t (* _nvs_erase_key)(uint32_t handle, const char* key);
    int32_t (* _get_random)(uint8_t *buf, size_t len);
    int32_t (* _get_time)(void *t);
    unsigned long (* _random)(void);
    void (* _log_write)(uint32_t level, const char* tag, const char* format, ...);
    uint32_t (* _log_timestamp)(void);
    void * (* _malloc_internal)(size_t size);
    void * (* _realloc_internal)(void *ptr, size_t size);
    void * (* _calloc_internal)(size_t n, size_t size);
    void * (* _zalloc_internal)(size_t size);
    void * (* _wifi_malloc)(size_t size);
    void * (* _wifi_realloc)(void *ptr, size_t size);
    void * (* _wifi_calloc)(size_t n, size_t size);
    void * (* _wifi_zalloc)(size_t size);
    void * (* _wifi_create_queue)(int32_t queue_len, int32_t item_size);
    void (* _wifi_delete_queue)(void * queue);
    int32_t (* _modem_sleep_enter)(uint32_t module);
    int32_t (* _modem_sleep_exit)(uint32_t module);
    int32_t (* _modem_sleep_register)(uint32_t module);
    int32_t (* _modem_sleep_deregister)(uint32_t module);
    uint32_t (* _coex_status_get)(void);
    int32_t (* _coex_wifi_request)(uint32_t event, uint32_t latency, uint32_t duration);
    int32_t (* _coex_wifi_release)(uint32_t event);
    int32_t _magic;
} wifi_osi_funcs_t;

extern wifi_osi_funcs_t g_wifi_osi_funcs;
# 23 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_private.h" 2
# 66 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 2
# 94 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
typedef struct {
    system_event_handler_t event_handler;
    wifi_osi_funcs_t* osi_funcs;
    wpa_crypto_funcs_t wpa_crypto_funcs;
    int static_rx_buf_num;
    int dynamic_rx_buf_num;
    int tx_buf_type;
    int static_tx_buf_num;
    int dynamic_tx_buf_num;
    int csi_enable;
    int ampdu_rx_enable;
    int ampdu_tx_enable;
    int nvs_enable;
    int nano_enable;
    int tx_ba_win;
    int rx_ba_win;
    int wifi_task_core_id;
    int beacon_max_len;
    int mgmt_sbuf_num;
    int magic;
} wifi_init_config_t;
# 158 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
extern const wpa_crypto_funcs_t g_wifi_default_wpa_crypto_funcs;
# 233 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_init(const wifi_init_config_t *config);
# 245 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_deinit(void);
# 261 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_mode(wifi_mode_t mode);
# 273 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_mode(wifi_mode_t *mode);
# 289 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_start(void);
# 301 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_stop(void);
# 316 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_restore(void);
# 337 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_connect(void);
# 348 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_disconnect(void);
# 358 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_clear_fast_connect(void);
# 372 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_deauth_sta(uint16_t aid);
# 395 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_scan_start(const wifi_scan_config_t *config, 
# 395 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                                               _Bool 
# 395 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                                                    block);
# 405 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_scan_stop(void);
# 420 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_scan_get_ap_num(uint16_t *number);
# 436 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_scan_get_ap_records(uint16_t *number, wifi_ap_record_t *ap_records);
# 452 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_sta_get_ap_info(wifi_ap_record_t *ap_info);
# 463 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_ps(wifi_ps_type_t type);
# 474 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_ps(wifi_ps_type_t *type);
# 491 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_protocol(wifi_interface_t ifx, uint8_t protocol_bitmap);
# 506 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_protocol(wifi_interface_t ifx, uint8_t *protocol_bitmap);
# 524 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_bandwidth(wifi_interface_t ifx, wifi_bandwidth_t bw);
# 540 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_bandwidth(wifi_interface_t ifx, wifi_bandwidth_t *bw);
# 557 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_channel(uint8_t primary, wifi_second_chan_t second);
# 572 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_channel(uint8_t *primary, wifi_second_chan_t *second);
# 598 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_country(const wifi_country_t *country);
# 610 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_country(wifi_country_t *country);
# 633 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_mac(wifi_interface_t ifx, const uint8_t mac[6]);
# 647 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_mac(wifi_interface_t ifx, uint8_t mac[6]);
# 657 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
typedef void (* wifi_promiscuous_cb_t)(void *buf, wifi_promiscuous_pkt_type_t type);
# 670 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_promiscuous_rx_cb(wifi_promiscuous_cb_t cb);
# 681 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_promiscuous(
# 681 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                  _Bool 
# 681 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                       en);
# 693 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_promiscuous(
# 693 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                  _Bool 
# 693 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                       *en);
# 706 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_promiscuous_filter(const wifi_promiscuous_filter_t *filter);
# 718 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_promiscuous_filter(wifi_promiscuous_filter_t *filter);
# 731 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_promiscuous_ctrl_filter(const wifi_promiscuous_filter_t *filter);
# 743 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_promiscuous_ctrl_filter(wifi_promiscuous_filter_t *filter);
# 766 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_config(wifi_interface_t interface, wifi_config_t *conf);
# 780 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_config(wifi_interface_t interface, wifi_config_t *conf);
# 799 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_ap_get_sta_list(wifi_sta_list_t *sta);
# 814 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_storage(wifi_storage_t storage);
# 828 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_auto_connect(
# 828 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                   _Bool 
# 828 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                        en) __attribute__ ((deprecated));
# 840 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_auto_connect(
# 840 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                   _Bool 
# 840 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                        *en) __attribute__ ((deprecated));
# 850 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
typedef void (*esp_vendor_ie_cb_t) (void *ctx, wifi_vendor_ie_type_t type, const uint8_t sa[6], const vendor_ie_data_t *vnd_ie, int rssi);
# 868 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_vendor_ie(
# 868 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                _Bool 
# 868 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                     enable, wifi_vendor_ie_type_t type, wifi_vendor_ie_id_t idx, const void *vnd_ie);
# 880 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_vendor_ie_cb(esp_vendor_ie_cb_t cb, void *ctx);
# 893 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_max_tx_power(int8_t power);
# 906 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_max_tx_power(int8_t *power);
# 923 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_event_mask(uint32_t mask);
# 935 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_event_mask(uint32_t *mask);
# 962 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_80211_tx(wifi_interface_t ifx, const void *buffer, int len, 
# 962 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                                                                              _Bool 
# 962 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                                                                                   en_sys_seq);
# 973 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
typedef void (* wifi_csi_cb_t)(void *ctx, wifi_csi_info_t *data);
# 989 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_csi_rx_cb(wifi_csi_cb_t cb, void *ctx);
# 1002 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_csi_config(const wifi_csi_config_t *config);
# 1015 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_csi(
# 1015 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 3 4
                          _Bool 
# 1015 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
                               en);
# 1027 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_ant_gpio(const wifi_ant_gpio_config_t *config);
# 1039 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_ant_gpio(wifi_ant_gpio_config_t *config);
# 1052 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_set_ant(const wifi_ant_config_t *config);
# 1064 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
esp_err_t esp_wifi_get_ant(wifi_ant_config_t *config);
# 20 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 1
# 39 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h" 1
# 27 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
typedef enum {
    SC_TYPE_ESPTOUCH = 0,
    SC_TYPE_AIRKISS,
    SC_TYPE_ESPTOUCH_AIRKISS,
} smartconfig_type_t;


typedef enum {
    SC_EVENT_SCAN_DONE,
    SC_EVENT_FOUND_CHANNEL,
    SC_EVENT_GOT_SSID_PSWD,
    SC_EVENT_SEND_ACK_DONE,
} smartconfig_event_t;


extern esp_event_base_t SC_EVENT;


typedef struct {
    uint8_t ssid[32];
    uint8_t password[64];
    
# 48 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h" 3 4
   _Bool 
# 48 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
        bssid_set;
    uint8_t bssid[6];
    smartconfig_type_t type;
    uint8_t token;
    uint8_t cellphone_ip[4];
} smartconfig_event_got_ssid_pswd_t;


typedef struct {
    
# 57 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h" 3 4
   _Bool 
# 57 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
        enable_log;
} smartconfig_start_config_t;
# 70 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
const char *esp_smartconfig_get_version(void);
# 86 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
esp_err_t esp_smartconfig_start(const smartconfig_start_config_t *config);
# 98 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
esp_err_t esp_smartconfig_stop(void);
# 111 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
esp_err_t esp_esptouch_set_timeout(uint8_t time_s);
# 125 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
esp_err_t esp_smartconfig_set_type(smartconfig_type_t type);
# 140 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
esp_err_t esp_smartconfig_fast_mode(
# 140 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h" 3 4
                                   _Bool 
# 140 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_smartconfig.h"
                                        enable);
# 40 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_types.h" 1
# 26 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi_types.h"
typedef enum {
    WIFI_IOCTL_SET_STA_HT2040_COEX = 1,
    WIFI_IOCTL_GET_STA_HT2040_COEX,
    WIFI_IOCTL_MAX,
} wifi_ioctl_cmd_t;





typedef struct {
    int enable;
} wifi_ht2040_coex_t;





typedef struct {
    union {
        wifi_ht2040_coex_t ht2040_coex;
    } data;
} wifi_ioctl_config_t;
# 41 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 2





typedef struct {
    QueueHandle_t handle;
    void *storage;
} wifi_static_queue_t;





typedef enum {
    WIFI_LOG_ERROR = 0,
    WIFI_LOG_WARNING,
    WIFI_LOG_INFO,
    WIFI_LOG_DEBUG,
    WIFI_LOG_VERBOSE,
} wifi_log_level_t;





typedef enum {
    WIFI_LOG_MODULE_ALL = 0,
    WIFI_LOG_MODULE_WIFI,
    WIFI_LOG_MODULE_COEX,
    WIFI_LOG_MODULE_MESH,
} wifi_log_module_t;
# 103 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_init_internal(const wifi_init_config_t *config);
# 112 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"

# 112 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 3 4
_Bool 
# 112 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
    esp_wifi_internal_tx_is_stop(void);






void esp_wifi_internal_free_rx_buffer(void* buffer);
# 134 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
int esp_wifi_internal_tx(wifi_interface_t wifi_if, void *buffer, uint16_t len);






typedef esp_err_t (*wifi_rxcb_t)(void *buffer, uint16_t len, void *eb);
# 155 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_reg_rxcb(wifi_interface_t ifx, wifi_rxcb_t fn);
# 164 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_set_sta_ip(void);
# 184 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_set_fix_rate(wifi_interface_t ifx, 
# 184 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 3 4
                                                              _Bool 
# 184 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
                                                                   en, wifi_phy_rate_t rate);
# 200 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_smartconfig_internal_start(const smartconfig_start_config_t *config);
# 212 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_smartconfig_internal_stop(void);
# 223 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_osi_funcs_md5_check(const char *md5);
# 234 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_crypto_funcs_md5_check(const char *md5);
# 245 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_wifi_type_md5_check(const char *md5);
# 256 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_esp_wifi_md5_check(const char *md5);
# 267 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
void *wifi_malloc( size_t size );
# 279 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
void *wifi_realloc( void *ptr, size_t size );
# 291 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
void *wifi_calloc( size_t n, size_t size );
# 300 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
typedef esp_err_t (* wifi_mac_time_update_cb_t)( uint32_t time_delta );
# 309 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_update_mac_time( uint32_t time_delta );
# 320 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_set_log_level(wifi_log_level_t level);
# 338 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_set_log_mod(wifi_log_module_t module, uint32_t submodule, 
# 338 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h" 3 4
                                                                                     _Bool 
# 338 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
                                                                                          enable);
# 349 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_get_log(wifi_log_level_t *log_level, uint32_t *log_mod);
# 361 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/wifi.h"
esp_err_t esp_wifi_internal_ioctl(int cmd, wifi_ioctl_config_t *cfg);
# 21 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 1
# 31 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 60 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 73 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
vprintf_like_t esp_log_set_vprintf(vprintf_like_t func);
# 87 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 97 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 107 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));



# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log_internal.h" 1
# 19 "/home/dieter/Development/esp-idf/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 112 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2
# 22 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2

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
# 24 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
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
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 22 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 2
# 74 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "14"))) DPORT_REG_READ(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 107 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "15"))) DPORT_SEQUENCE_REG_READ(uint32_t reg)
{



    return esp_dport_access_sequence_reg_read(reg);

}
# 167 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1" "." "16"))) DPORT_READ_PERI_REG(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h" 2
# 40 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
void mmu_init(int cpu_no);
# 69 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1" "." "17"))) cache_flash_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_flash_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_flash_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 112 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
unsigned int __attribute__((section(".iram1" "." "18"))) cache_sram_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);
# 122 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "19"))) Cache_Read_Init(int cpu_no)
{
    extern void Cache_Read_Init_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Init_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 138 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "20"))) Cache_Flush(int cpu_no)
{
    extern void Cache_Flush_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Flush_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 154 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "21"))) Cache_Read_Disable(int cpu_no)
{
    extern void Cache_Read_Disable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Disable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 170 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/cache.h"
static inline void __attribute__((section(".iram1" "." "22"))) Cache_Read_Enable(int cpu_no)
{
    extern void Cache_Read_Enable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Enable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 25 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 1
# 18 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 1
# 23 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_types.h" 2
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 21 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h" 2

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
static inline void __attribute__((section(".iram1" "." "23"))) uart_tx_wait_idle(uint8_t uart_no) {
    uint32_t status;
    do {
        status = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/uart.h", 272, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C)))); });

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
# 26 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h"
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_access.h" 1
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/dport_reg.h" 2
# 27 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h"
       

# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/gpio_pins.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/include/soc/gpio_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 93 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h"
static inline void __attribute__ ((deprecated)) PIN_PULLUP_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 95, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLUP_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 100, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 105, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (7))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/io_mux_reg.h", 110, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (7))))); });
}
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
# 28 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h"
       
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/efuse_reg.h" 1
# 16 "/home/dieter/Development/esp-idf/components/soc/include/soc/efuse_periph.h" 2
# 29 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
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
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/include/soc/rtc_periph.h" 2
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
# 30 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/include/soc/timer_periph.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/timer_periph.h"
       
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/timer_group_reg.h" 1
# 17 "/home/dieter/Development/esp-idf/components/soc/include/soc/timer_periph.h" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
typedef volatile struct timg_dev_s {
    struct{
        union {
            struct {
                uint32_t reserved0: 10;
                uint32_t alarm_en: 1;
                uint32_t level_int_en: 1;
                uint32_t edge_int_en: 1;
                uint32_t divider: 16;
                uint32_t autoreload: 1;
                uint32_t increase: 1;
                uint32_t enable: 1;
            };
            uint32_t val;
        } config;
        uint32_t cnt_low;
        uint32_t cnt_high;
        uint32_t update;
        uint32_t alarm_low;
        uint32_t alarm_high;
        uint32_t load_low;
        uint32_t load_high;
        uint32_t reload;
    } hw_timer[2];
    union {
        struct {
            uint32_t reserved0: 14;
            uint32_t flashboot_mod_en: 1;
            uint32_t sys_reset_length: 3;
            uint32_t cpu_reset_length: 3;
            uint32_t level_int_en: 1;
            uint32_t edge_int_en: 1;
            uint32_t stg3: 2;
            uint32_t stg2: 2;
            uint32_t stg1: 2;
            uint32_t stg0: 2;
            uint32_t en: 1;
        };
        uint32_t val;
    } wdt_config0;
    union {
        struct {
            uint32_t reserved0: 16;
            uint32_t clk_prescale:16;
        };
        uint32_t val;
    } wdt_config1;
    uint32_t wdt_config2;
    uint32_t wdt_config3;
    uint32_t wdt_config4;
    uint32_t wdt_config5;
    uint32_t wdt_feed;
    uint32_t wdt_wprotect;
    union {
        struct {
            uint32_t reserved0: 12;
            uint32_t start_cycling: 1;
            uint32_t clk_sel: 2;
            uint32_t rdy: 1;
            uint32_t max: 15;
            uint32_t start: 1;
        };
        uint32_t val;
    } rtc_cali_cfg;
    union {
        struct {
            uint32_t reserved0: 7;
            uint32_t value:25;
        };
        uint32_t val;
    } rtc_cali_cfg1;
    union {
        struct {
            uint32_t reserved0: 7;
            uint32_t rtc_only: 1;
            uint32_t cpst_en: 1;
            uint32_t lac_en: 1;
            uint32_t alarm_en: 1;
            uint32_t level_int_en: 1;
            uint32_t edge_int_en: 1;
            uint32_t divider: 16;
            uint32_t autoreload: 1;
            uint32_t increase: 1;
            uint32_t en: 1;
        };
        uint32_t val;
    } lactconfig;
    union {
        struct {
            uint32_t reserved0: 6;
            uint32_t step_len:26;
        };
        uint32_t val;
    } lactrtc;
    uint32_t lactlo;
    uint32_t lacthi;
    uint32_t lactupdate;
    uint32_t lactalarmlo;
    uint32_t lactalarmhi;
    uint32_t lactloadlo;
    uint32_t lactloadhi;
    uint32_t lactload;
    union {
        struct {
            uint32_t t0: 1;
            uint32_t t1: 1;
            uint32_t wdt: 1;
            uint32_t lact: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t t0: 1;
            uint32_t t1: 1;
            uint32_t wdt: 1;
            uint32_t lact: 1;
            uint32_t reserved4:28;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t t0: 1;
            uint32_t t1: 1;
            uint32_t wdt: 1;
            uint32_t lact: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } int_st_timers;
    union {
        struct {
            uint32_t t0: 1;
            uint32_t t1: 1;
            uint32_t wdt: 1;
            uint32_t lact: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } int_clr_timers;
    uint32_t reserved_a8;
    uint32_t reserved_ac;
    uint32_t reserved_b0;
    uint32_t reserved_b4;
    uint32_t reserved_b8;
    uint32_t reserved_bc;
    uint32_t reserved_c0;
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
    uint32_t reserved_f0;
    uint32_t reserved_f4;
    union {
        struct {
            uint32_t date:28;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } timg_date;
    union {
        struct {
            uint32_t reserved0: 31;
            uint32_t en: 1;
        };
        uint32_t val;
    } clk;
} timg_dev_t;
extern timg_dev_t TIMERG0;
extern timg_dev_t TIMERG1;
# 17 "/home/dieter/Development/esp-idf/components/soc/include/soc/timer_periph.h" 2
# 31 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/cpu.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
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
# 32 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 1
# 14 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
       


# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 2
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
# 320 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 342 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set_fast(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 358 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_cpu_freq_t rtc_clk_cpu_freq_get(void) __attribute__((deprecated));
# 369 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cpu_freq_value(rtc_cpu_freq_t cpu_freq) __attribute__((deprecated));
# 381 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 
# 381 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 381 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_from_mhz(int cpu_freq_mhz, rtc_cpu_freq_t* out_val) __attribute__((deprecated));






 void rtc_clk_cpu_freq_to_config(rtc_cpu_freq_t cpu_freq, rtc_cpu_freq_config_t* out_config);







 
# 396 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 396 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_mhz_to_config(uint32_t freq_mhz, rtc_cpu_freq_config_t* out_config);
# 410 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config(const rtc_cpu_freq_config_t* config);
# 432 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_config_fast(const rtc_cpu_freq_config_t* config);





 void rtc_clk_cpu_freq_get_config(rtc_cpu_freq_config_t* out_config);
# 447 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
 void rtc_clk_cpu_freq_set_xtal(void);
# 462 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apb_freq_update(uint32_t apb_freq);





uint32_t rtc_clk_apb_freq_get(void);
# 485 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 494 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 503 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period);
# 512 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period);
# 525 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_get(void);
# 534 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
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
# 608 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_sleep_init(rtc_sleep_config_t cfg);







void rtc_sleep_set_wakeup_time(uint64_t t);
# 656 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt);




typedef struct rtc_config_s {
    uint32_t ck8m_wait : 8;
    uint32_t xtal_wait : 8;
    uint32_t pll_wait : 8;
    uint32_t clkctl_init : 1;
    uint32_t pwrctl_init : 1;
    uint32_t rtc_dboost_fpd : 1;
} rtc_config_t;
# 689 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_init(rtc_config_t cfg);







typedef struct rtc_vddsdio_config_s {
    uint32_t force : 1;
    uint32_t enable : 1;
    uint32_t tieh : 1;
    uint32_t drefh : 2;
    uint32_t drefm : 2;
    uint32_t drefl : 2;
} rtc_vddsdio_config_t;
# 713 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
rtc_vddsdio_config_t rtc_vddsdio_get_config(void);
# 722 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/rtc.h"
void rtc_vddsdio_set_config(rtc_vddsdio_config_t config);
# 33 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
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
# 34 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2


# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h" 1
# 37 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/xtensa_api.h"
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
# 37 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2

# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/system_internal.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/system_internal.h"
       
# 34 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/system_internal.h"
void esp_restart_noos(void) __attribute__ ((noreturn));
# 46 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_private/system_internal.h"
void esp_reset_reason_set_hint(esp_reset_reason_t hint);







esp_reset_reason_t esp_reset_reason_get_hint(void);
# 39 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h" 1
# 35 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
typedef enum {
    EFUSE_BLK0 = 0,
    EFUSE_BLK1 = 1,
    EFUSE_BLK2 = 2,
    EFUSE_BLK3 = 3
} esp_efuse_block_t;




typedef enum {
    EFUSE_CODING_SCHEME_NONE = 0,
    EFUSE_CODING_SCHEME_3_4 = 1,
    EFUSE_CODING_SCHEME_REPEAT = 2,
} esp_efuse_coding_scheme_t;




typedef struct {
    esp_efuse_block_t efuse_block: 8;
    uint8_t bit_start;
    uint16_t bit_count;
} esp_efuse_desc_t;
# 76 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_read_field_blob(const esp_efuse_desc_t* field[], void* dst, size_t dst_size_bits);
# 89 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_read_field_cnt(const esp_efuse_desc_t* field[], size_t* out_cnt);
# 108 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_write_field_blob(const esp_efuse_desc_t* field[], const void* src, size_t src_size_bits);
# 124 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_write_field_cnt(const esp_efuse_desc_t* field[], size_t cnt);
# 139 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_set_write_protect(esp_efuse_block_t blk);
# 154 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_set_read_protect(esp_efuse_block_t blk);
# 163 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
int esp_efuse_get_field_size(const esp_efuse_desc_t* field[]);
# 175 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
uint32_t esp_efuse_read_reg(esp_efuse_block_t blk, unsigned int num_reg);
# 191 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_write_reg(esp_efuse_block_t blk, unsigned int num_reg, uint32_t val);
# 201 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_efuse_coding_scheme_t esp_efuse_get_coding_scheme(esp_efuse_block_t blk);
# 216 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_read_block(esp_efuse_block_t blk, void* dst_key, size_t offset_in_bits, size_t size_bits);
# 232 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_write_block(esp_efuse_block_t blk, const void* src_key, size_t offset_in_bits, size_t size_bits);






uint8_t esp_efuse_get_chip_ver(void);






uint32_t esp_efuse_get_pkg_ver(void);
# 267 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
void esp_efuse_burn_new_values(void);
# 278 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
void esp_efuse_reset(void);
# 288 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
void esp_efuse_disable_basic_rom_console(void);
# 302 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_apply_34_encoding(const uint8_t *in_bytes, uint32_t *out_words, size_t in_bytes_len);
# 320 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
void esp_efuse_write_random_key(uint32_t blk_wdata0_reg);




uint32_t esp_efuse_read_secure_version(void);








# 333 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h" 3 4
_Bool 
# 333 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
    esp_efuse_check_secure_version(uint32_t secure_version);
# 346 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
esp_err_t esp_efuse_update_secure_version(uint32_t secure_version);
# 356 "/home/dieter/Development/esp-idf/components/efuse/include/esp_efuse.h"
void esp_efuse_init(uint32_t offset, uint32_t size);
# 40 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/efuse/esp32/include/esp_efuse_table.h" 1
# 27 "/home/dieter/Development/esp-idf/components/efuse/esp32/include/esp_efuse_table.h"
extern const esp_efuse_desc_t* ESP_EFUSE_MAC_FACTORY[];
extern const esp_efuse_desc_t* ESP_EFUSE_MAC_FACTORY_CRC[];
extern const esp_efuse_desc_t* ESP_EFUSE_MAC_CUSTOM_CRC[];
extern const esp_efuse_desc_t* ESP_EFUSE_MAC_CUSTOM[];
extern const esp_efuse_desc_t* ESP_EFUSE_MAC_CUSTOM_VER[];
extern const esp_efuse_desc_t* ESP_EFUSE_SECURE_BOOT_KEY[];
extern const esp_efuse_desc_t* ESP_EFUSE_ABS_DONE_0[];
extern const esp_efuse_desc_t* ESP_EFUSE_ENCRYPT_FLASH_KEY[];
extern const esp_efuse_desc_t* ESP_EFUSE_ENCRYPT_CONFIG[];
extern const esp_efuse_desc_t* ESP_EFUSE_DISABLE_DL_ENCRYPT[];
extern const esp_efuse_desc_t* ESP_EFUSE_DISABLE_DL_DECRYPT[];
extern const esp_efuse_desc_t* ESP_EFUSE_DISABLE_DL_CACHE[];
extern const esp_efuse_desc_t* ESP_EFUSE_DISABLE_JTAG[];
extern const esp_efuse_desc_t* ESP_EFUSE_CONSOLE_DEBUG_DISABLE[];
extern const esp_efuse_desc_t* ESP_EFUSE_FLASH_CRYPT_CNT[];
extern const esp_efuse_desc_t* ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT[];
extern const esp_efuse_desc_t* ESP_EFUSE_WR_DIS_BLK1[];
extern const esp_efuse_desc_t* ESP_EFUSE_WR_DIS_BLK2[];
extern const esp_efuse_desc_t* ESP_EFUSE_WR_DIS_BLK3[];
extern const esp_efuse_desc_t* ESP_EFUSE_RD_DIS_BLK1[];
extern const esp_efuse_desc_t* ESP_EFUSE_RD_DIS_BLK2[];
extern const esp_efuse_desc_t* ESP_EFUSE_RD_DIS_BLK3[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_VER_DIS_APP_CPU[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_VER_DIS_BT[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_VER_PKG[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_CPU_FREQ_LOW[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_CPU_FREQ_RATED[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_VER_REV1[];
extern const esp_efuse_desc_t* ESP_EFUSE_CHIP_VER_REV2[];
extern const esp_efuse_desc_t* ESP_EFUSE_XPD_SDIO_REG[];
extern const esp_efuse_desc_t* ESP_EFUSE_SDIO_TIEH[];
extern const esp_efuse_desc_t* ESP_EFUSE_SDIO_FORCE[];
extern const esp_efuse_desc_t* ESP_EFUSE_ADC_VREF_AND_SDIO_DREF[];
extern const esp_efuse_desc_t* ESP_EFUSE_ADC1_TP_LOW[];
extern const esp_efuse_desc_t* ESP_EFUSE_ADC2_TP_LOW[];
extern const esp_efuse_desc_t* ESP_EFUSE_ADC1_TP_HIGH[];
extern const esp_efuse_desc_t* ESP_EFUSE_ADC2_TP_HIGH[];
extern const esp_efuse_desc_t* ESP_EFUSE_SECURE_VERSION[];
# 41 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2
# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 1
# 18 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
       





# 1 "/home/dieter/Development/esp-idf/components/soc/include/hal/timer_types.h" 1
# 15 "/home/dieter/Development/esp-idf/components/soc/include/hal/timer_types.h"
       
# 29 "/home/dieter/Development/esp-idf/components/soc/include/hal/timer_types.h"
typedef enum {
    TIMER_0 = 0,
    TIMER_1 = 1,
    TIMER_MAX,
} timer_idx_t;




typedef enum {
    TIMER_PAUSE = 0,
    TIMER_START = 1,
} timer_start_t;





typedef enum {
    TIMER_INTR_T0 = (1UL << (0)),
    TIMER_INTR_T1 = (1UL << (1)),
    TIMER_INTR_WDT = (1UL << (2)),
} timer_intr_t;






typedef enum {
    TIMER_WDT_OFF = 0,
    TIMER_WDT_INT = 1,
    TIMER_WDT_RESET_CPU = 2,
    TIMER_WDT_RESET_SYSTEM = 3,
} timer_wdt_behavior_t;
# 25 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 2







_Static_assert(TIMER_INTR_T0 == ((1UL << (0))), "Add mapping to LL interrupt handling, since it's no longer naturally compatible with the timer_intr_t");
_Static_assert(TIMER_INTR_T1 == ((1UL << (1))), "Add mapping to LL interrupt handling, since it's no longer naturally compatible with the timer_intr_t");
_Static_assert(TIMER_INTR_WDT == ((1UL << (2))), "Add mapping to LL interrupt handling, since it's no longer naturally compatible with the timer_intr_t");
# 44 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_intr_enable(timg_dev_t *hw, timer_intr_t intr_mask)
{
    hw->int_ena.val |= intr_mask;
}
# 57 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_intr_disable(timg_dev_t *hw, timer_intr_t intr_mask)
{
    hw->int_ena.val &= (~intr_mask);
}
# 69 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline timer_intr_t timer_ll_intr_status_get(timg_dev_t *hw)
{
    return hw->int_raw.val;
}
# 82 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_intr_status_clear(timg_dev_t *hw, timer_intr_t intr_mask)
{
    hw->int_clr_timers.val = intr_mask;
}
# 96 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_get_counter_value(timg_dev_t *hw, timer_idx_t timer_num, uint64_t *timer_val)
{
    hw->hw_timer[timer_num].update = 1;
    *timer_val = ((uint64_t) hw->hw_timer[timer_num].cnt_high << 32) | (hw->hw_timer[timer_num].cnt_low);
}
# 111 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_set_counter_enable(timg_dev_t *hw, timer_idx_t timer_num, timer_start_t counter_en)
{
    hw->hw_timer[timer_num].config.enable = counter_en;
}
# 125 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline 
# 125 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
             _Bool 
# 125 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                  timer_ll_get_auto_reload(timg_dev_t *hw, timer_idx_t timer_num)
{
    return hw->hw_timer[timer_num].config.autoreload;
}
# 139 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_set_alarm_value(timg_dev_t *hw, timer_idx_t timer_num, uint64_t alarm_value)
{
    hw->hw_timer[timer_num].alarm_high = (uint32_t) (alarm_value >> 32);
    hw->hw_timer[timer_num].alarm_low = (uint32_t) alarm_value;
}
# 154 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_get_alarm_value(timg_dev_t *hw, timer_idx_t timer_num, uint64_t *alarm_value)
{
    *alarm_value = ((uint64_t) hw->hw_timer[timer_num].alarm_high << 32) | (hw->hw_timer[timer_num].alarm_low);
}
# 168 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_set_alarm_enable(timg_dev_t *hw, timer_idx_t timer_num, 
# 168 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
                                                                                   _Bool 
# 168 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                                                                                        alarm_en)
{
    hw->hw_timer[timer_num].config.alarm_en = alarm_en;
}
# 182 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline void timer_ll_get_alarm_enable(timg_dev_t *hw, timer_idx_t timer_num, 
# 182 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
                                                                                   _Bool 
# 182 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                                                                                        *alarm_en)
{
    *alarm_en = hw->hw_timer[timer_num].config.alarm_en;
}
# 196 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline __attribute__((always_inline)) void timer_ll_wdt_set_protect(timg_dev_t* hw, 
# 196 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
                                                               _Bool 
# 196 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                                                                    protect)
{
    hw->wdt_wprotect=(protect? 0: 0x50D83AA1);
}
# 208 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
static inline __attribute__((always_inline)) void timer_ll_wdt_init(timg_dev_t* hw)
{
    hw->wdt_config0.sys_reset_length=7;
    hw->wdt_config0.cpu_reset_length=7;

    hw->wdt_config0.level_int_en = 1;
    hw->wdt_config0.edge_int_en = 0;
}

static inline __attribute__((always_inline)) void timer_ll_wdt_set_tick(timg_dev_t* hw, int tick_time_us)
{
    hw->wdt_config1.clk_prescale=80*tick_time_us;
}

static inline __attribute__((always_inline)) void timer_ll_wdt_feed(timg_dev_t* hw)
{
    hw->wdt_feed = 1;
}

static inline __attribute__((always_inline)) void timer_ll_wdt_set_timeout(timg_dev_t* hw, int stage, uint32_t timeout_tick)
{
    switch (stage) {
    case 0:
        hw->wdt_config2=timeout_tick;
        break;
    case 1:
        hw->wdt_config3=timeout_tick;
        break;
    case 2:
        hw->wdt_config4=timeout_tick;
        break;
    case 3:
        hw->wdt_config5=timeout_tick;
        break;
    default:
        abort();
    }
}

_Static_assert(TIMER_WDT_OFF == 0, "Add mapping to LL watchdog timeout behavior, since it's no longer naturally compatible with the timer_wdt_behavior_t");
_Static_assert(TIMER_WDT_INT == 1, "Add mapping to LL watchdog timeout behavior, since it's no longer naturally compatible with the timer_wdt_behavior_t");
_Static_assert(TIMER_WDT_RESET_CPU == 2, "Add mapping to LL watchdog timeout behavior, since it's no longer naturally compatible with the timer_wdt_behavior_t");
_Static_assert(TIMER_WDT_RESET_SYSTEM == 3, "Add mapping to LL watchdog timeout behavior, since it's no longer naturally compatible with the timer_wdt_behavior_t");

static inline __attribute__((always_inline)) void timer_ll_wdt_set_timeout_behavior(timg_dev_t* hw, int stage, timer_wdt_behavior_t behavior)
{
    switch (stage) {
    case 0:
        hw->wdt_config0.stg0 = behavior;
        break;
    case 1:
        hw->wdt_config0.stg1 = behavior;
        break;
    case 2:
        hw->wdt_config0.stg2 = behavior;
        break;
    case 3:
        hw->wdt_config0.stg3 = behavior;
        break;
    default:
        abort();
    }
}

static inline __attribute__((always_inline)) void timer_ll_wdt_set_enable(timg_dev_t* hw, 
# 272 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
                                                              _Bool 
# 272 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                                                                   enable)
{
    hw->wdt_config0.en = enable;
}

static inline __attribute__((always_inline)) void timer_ll_wdt_flashboot_en(timg_dev_t* hw, 
# 277 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h" 3 4
                                                                _Bool 
# 277 "/home/dieter/Development/esp-idf/components/soc/esp32/include/hal/timer_ll.h"
                                                                     enable)
{
    hw->wdt_config0.flashboot_mod_en = enable;
}
# 42 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 2

static const char* TAG = "system_api";

static uint8_t base_mac_addr[6] = { 0 };


static shutdown_handler_t shutdown_handlers[2];

void system_init(void)
{
}

esp_err_t esp_base_mac_addr_set(uint8_t *mac)
{
    if (mac == 
# 56 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
              ((void *)0)
# 56 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                  ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Base MAC address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Base MAC address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Base MAC address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Base MAC address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Base MAC address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        abort();
    }

    memcpy(base_mac_addr, mac, 6);

    return 0;
}

esp_err_t esp_base_mac_addr_get(uint8_t *mac)
{
    uint8_t null_mac[6] = {0};

    if (memcmp(base_mac_addr, null_mac, 6) == 0) {
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Base MAC address is not set, read default base MAC address from BLK0 of EFUSE" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Base MAC address is not set, read default base MAC address from BLK0 of EFUSE" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Base MAC address is not set, read default base MAC address from BLK0 of EFUSE" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Base MAC address is not set, read default base MAC address from BLK0 of EFUSE" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Base MAC address is not set, read default base MAC address from BLK0 of EFUSE" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x10B;
    }

    memcpy(mac, base_mac_addr, 6);

    return 0;
}

esp_err_t esp_efuse_mac_get_custom(uint8_t *mac)
{
    uint8_t version;
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM_VER, &version, 8);
    if (version != 1) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Base MAC address from BLK3 of EFUSE version error, version = %d" "\033[0m" "\n", esp_log_timestamp(), TAG, version); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Base MAC address from BLK3 of EFUSE version error, version = %d" "\033[0m" "\n", esp_log_timestamp(), TAG, version); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Base MAC address from BLK3 of EFUSE version error, version = %d" "\033[0m" "\n", esp_log_timestamp(), TAG, version); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Base MAC address from BLK3 of EFUSE version error, version = %d" "\033[0m" "\n", esp_log_timestamp(), TAG, version); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Base MAC address from BLK3 of EFUSE version error, version = %d" "\033[0m" "\n", esp_log_timestamp(), TAG, version); } } while(0); } while(0);
        return 0x10A;
    }

    uint8_t efuse_crc;
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM, mac, 48);
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_CUSTOM_CRC, &efuse_crc, 8);
    uint8_t calc_crc = esp_crc8(mac, 6);

    if (efuse_crc != calc_crc) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } } while(0); } while(0);
        return 0x109;
    }
    return 0;
}

esp_err_t esp_efuse_mac_get_default(uint8_t* mac)
{
    uint8_t efuse_crc;
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY, mac, 48);
    esp_efuse_read_field_blob(ESP_EFUSE_MAC_FACTORY_CRC, &efuse_crc, 8);
    uint8_t calc_crc = esp_crc8(mac, 6);

    if (efuse_crc != calc_crc) {


        uint32_t mac_high = ((uint32_t)mac[0] << 8) | mac[1];
        if ((mac_high & 0xFFFF) == 0x18fe) {
            uint32_t mac_low = ((uint32_t)mac[2] << 24) | ((uint32_t)mac[3] << 16) | ((uint32_t)mac[4] << 8) | mac[5];
            if ((mac_low >= 0x346a85c7) && (mac_low <= 0x346a85f8)) {
                return 0;
            }
        } else {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_crc, calc_crc); } } while(0); } while(0);
            abort();
        }
    }
    return 0;
}

esp_err_t system_efuse_read_mac(uint8_t *mac) __attribute__((alias("esp_efuse_mac_get_default")));
esp_err_t esp_efuse_read_mac(uint8_t *mac) __attribute__((alias("esp_efuse_mac_get_default")));

esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac)
{
    uint8_t idx;

    if (local_mac == 
# 132 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                    ((void *)0) 
# 132 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                         || universal_mac == 
# 132 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                             ((void *)0)
# 132 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                                 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x102;
    }

    memcpy(local_mac, universal_mac, 6);
    for (idx = 0; idx < 64; idx++) {
        local_mac[0] = universal_mac[0] | 0x02;
        local_mac[0] ^= idx << 2;

        if (memcmp(local_mac, universal_mac, 6)) {
            break;
        }
    }

    return 0;
}

esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type)
{
    uint8_t efuse_mac[6];

    if (mac == 
# 154 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
              ((void *)0)
# 154 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                  ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "mac address param is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x102;
    }

    if (type < ESP_MAC_WIFI_STA || type > ESP_MAC_ETH) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "mac type is incorrect" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "mac type is incorrect" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "mac type is incorrect" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "mac type is incorrect" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "mac type is incorrect" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x102;
    }

    _Static_assert(4 == 4
            || 4 == 2,
            "incorrect NUM_MAC_ADDRESS_FROM_EFUSE value");

    if (esp_base_mac_addr_get(efuse_mac) != 0) {
        esp_efuse_mac_get_default(efuse_mac);
    }

    switch (type) {
    case ESP_MAC_WIFI_STA:
        memcpy(mac, efuse_mac, 6);
        break;
    case ESP_MAC_WIFI_SOFTAP:
        if (4 == 4) {
            memcpy(mac, efuse_mac, 6);
            mac[5] += 1;
        }
        else if (4 == 2) {
            esp_derive_local_mac(mac, efuse_mac);
        }
        break;
    case ESP_MAC_BT:
        memcpy(mac, efuse_mac, 6);
        if (4 == 4) {
            mac[5] += 2;
        }
        else if (4 == 2) {
            mac[5] += 1;
        }
        break;
    case ESP_MAC_ETH:
        if (4 == 4) {
            memcpy(mac, efuse_mac, 6);
            mac[5] += 3;
        }
        else if (4 == 2) {
            efuse_mac[5] += 1;
            esp_derive_local_mac(mac, efuse_mac);
        }
        break;
    default:
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "incorrect mac type" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "incorrect mac type" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "incorrect mac type" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "incorrect mac type" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "incorrect mac type" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        break;
    }

    return 0;
}

esp_err_t esp_register_shutdown_handler(shutdown_handler_t handler)
{
    for (int i = 0; i < 2; i++) {
        if (shutdown_handlers[i] == handler) {
            return 0x103;
        } else if (shutdown_handlers[i] == 
# 217 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                          ((void *)0)
# 217 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                              ) {
            shutdown_handlers[i] = handler;
            return 0;
        }
    }
    return 0x101;
}

esp_err_t esp_unregister_shutdown_handler(shutdown_handler_t handler)
{
    for (int i = 0; i < 2; i++) {
        if (shutdown_handlers[i] == handler) {
            shutdown_handlers[i] = 
# 229 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                  ((void *)0)
# 229 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                      ;
            return 0;
        }
    }
    return 0x103;
}

void esp_restart_noos(void) __attribute__ ((noreturn));

void __attribute__((section(".iram1" "." "24"))) esp_restart(void)
{
     int i;
     for (i = 0; i < 2; i++) {
   if (shutdown_handlers[i]) {
        shutdown_handlers[i]();
   }
     }


    vTaskSuspendAll();

    esp_restart_noos();
}





void __attribute__((section(".iram1" "." "25"))) esp_restart_noos(void)
{

    xt_ints_off(0xFFFFFFFF);


    rtc_wdt_protect_off();
    rtc_wdt_disable();
    rtc_wdt_set_stage(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_RESET_RTC);
    rtc_wdt_set_stage(RTC_WDT_STAGE1, RTC_WDT_STAGE_ACTION_RESET_SYSTEM);
    rtc_wdt_set_length_of_reset_signal(RTC_WDT_SYS_RESET_SIG, RTC_WDT_LENGTH_200ns);
    rtc_wdt_set_length_of_reset_signal(RTC_WDT_CPU_RESET_SIG, RTC_WDT_LENGTH_200ns);
    rtc_wdt_set_time(RTC_WDT_STAGE0, 1000);
    rtc_wdt_flashboot_mode_enable();





    const uint32_t core_id = xPortGetCoreID();
    const uint32_t other_core_id = (core_id == 0) ? 1 : 0;
    esp_cpu_reset(other_core_id);
    esp_cpu_stall(other_core_id);


    esp_dport_access_int_abort();


    timer_ll_wdt_set_protect(&TIMERG0, 
# 285 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                      0
# 285 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                           );
    timer_ll_wdt_set_enable(&TIMERG0, 
# 286 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                     0
# 286 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                          );
    timer_ll_wdt_set_protect(&TIMERG0, 
# 287 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                      1
# 287 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                          );

    timer_ll_wdt_set_protect(&TIMERG1, 
# 289 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                      0
# 289 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                           );
    timer_ll_wdt_set_enable(&TIMERG1, 
# 290 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                     0
# 290 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                          );
    timer_ll_wdt_set_protect(&TIMERG1, 
# 291 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
                                      1
# 291 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
                                          );


    uart_tx_wait_idle(0);
    uart_tx_wait_idle(1);
    uart_tx_wait_idle(2);


    Cache_Read_Disable(0);
    Cache_Read_Disable(1);



    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0130))) >= 0x3ff00000) && (((0x3ff44000 + 0x0130))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0130))) >= 0x3ff00000) && (((0x3ff44000 + 0x0130))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x0130))) >= 0x3ff00000) && (((0x3ff44000 + 0x0130))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 304, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x0130))) >= 0x3ff00000) && (((0x3ff44000 + 0x0130))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0130)))) = (uint32_t)(0x30); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0134))) >= 0x3ff00000) && (((0x3ff44000 + 0x0134))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0134))) >= 0x3ff00000) && (((0x3ff44000 + 0x0134))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x0134))) >= 0x3ff00000) && (((0x3ff44000 + 0x0134))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 305, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x0134))) >= 0x3ff00000) && (((0x3ff44000 + 0x0134))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0134)))) = (uint32_t)(0x30); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0138))) >= 0x3ff00000) && (((0x3ff44000 + 0x0138))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0138))) >= 0x3ff00000) && (((0x3ff44000 + 0x0138))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x0138))) >= 0x3ff00000) && (((0x3ff44000 + 0x0138))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 306, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x0138))) >= 0x3ff00000) && (((0x3ff44000 + 0x0138))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0138)))) = (uint32_t)(0x30); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x013c))) >= 0x3ff00000) && (((0x3ff44000 + 0x013c))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x013c))) >= 0x3ff00000) && (((0x3ff44000 + 0x013c))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x013c))) >= 0x3ff00000) && (((0x3ff44000 + 0x013c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 307, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x013c))) >= 0x3ff00000) && (((0x3ff44000 + 0x013c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x013c)))) = (uint32_t)(0x30); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0140))) >= 0x3ff00000) && (((0x3ff44000 + 0x0140))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0140))) >= 0x3ff00000) && (((0x3ff44000 + 0x0140))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x0140))) >= 0x3ff00000) && (((0x3ff44000 + 0x0140))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 308, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x0140))) >= 0x3ff00000) && (((0x3ff44000 + 0x0140))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0140)))) = (uint32_t)(0x30); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0144))) >= 0x3ff00000) && (((0x3ff44000 + 0x0144))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0144))) >= 0x3ff00000) && (((0x3ff44000 + 0x0144))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x3ff44000 + 0x0144))) >= 0x3ff00000) && (((0x3ff44000 + 0x0144))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 309, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x3ff44000 + 0x0144))) >= 0x3ff00000) && (((0x3ff44000 + 0x0144))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0144)))) = (uint32_t)(0x30); });


    (*((volatile uint32_t *)((((0x3ff00000 + 0x0D0)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0D0))|(((1UL << (0))) | ((1UL << (1))) | ((1UL << (2))) | ((1UL << (3))) | ((1UL << (4))) | ((1UL << (5))) | ((1UL << (6))) | ((1UL << (7))) | ((1UL << (8))) | ((1UL << (9))) | ((1UL << (10)))))))



                                                ;
    (*(volatile uint32_t *)(((0x3ff00000 + 0x0D0)))) = ((0));


    (*((volatile uint32_t *)((((0x3ff00000 + 0x0C4)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0C4))|(((1UL << (0))) | ((1UL << (1))) | ((1UL << (2))) | ((1UL << (5))) | ((1UL << (23)))))))
                                                                                                    ;
    (*(volatile uint32_t *)(((0x3ff00000 + 0x0C4)))) = ((0));


    rtc_clk_cpu_freq_set_xtal();


    (*(volatile uint32_t *)(((0x3ff00000 + 0x038)))) = ((0));


    if (core_id == 0) {

        esp_cpu_reset(1);
        esp_cpu_reset(0);
    } else {


        esp_cpu_reset(0);
        esp_cpu_unstall(0);
        esp_cpu_reset(1);
    }
    while(
# 342 "/home/dieter/Development/esp-idf/components/esp32/system_api.c" 3 4
         1
# 342 "/home/dieter/Development/esp-idf/components/esp32/system_api.c"
             ) {
        ;
    }
}

void system_restart(void) __attribute__((alias("esp_restart")));

uint32_t esp_get_free_heap_size( void )
{
    return heap_caps_get_free_size( (1<<12) );
}

uint32_t esp_get_minimum_free_heap_size( void )
{
    return heap_caps_get_minimum_free_size( (1<<12) );
}

uint32_t system_get_free_heap_size(void) __attribute__((alias("esp_get_free_heap_size")));

const char* system_get_sdk_version(void)
{
    return "master";
}

const char* esp_get_idf_version(void)
{
    return "v4.1-dev-58-g02c7c3885-dirty";
}

void esp_chip_info(esp_chip_info_t* out_info)
{
    uint32_t efuse_rd3 = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("/home/dieter/Development/esp-idf/components/esp32/system_api.c", 373, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x00c))); });
    memset(out_info, 0, sizeof(*out_info));

    out_info->model = CHIP_ESP32;
    out_info->revision = esp_efuse_get_chip_ver();

    if ((efuse_rd3 & ((1UL << (0)))) == 0) {
        out_info->cores = 2;
    } else {
        out_info->cores = 1;
    }
    out_info->features = (1UL << (1));
    if ((efuse_rd3 & ((1UL << (1)))) == 0) {
        out_info->features |= (1UL << (5)) | (1UL << (4));
    }
    int package = (efuse_rd3 & ((0x7)<<(9))) >> 9;
    if (package == 2 ||
        package == 4 ||
        package == 5) {
        out_info->features |= (1UL << (0));
    }
}
