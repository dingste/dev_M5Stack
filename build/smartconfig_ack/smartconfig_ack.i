# 1 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
# 1 "/home/dieter/Development/ProjektEi/build/smartconfig_ack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
# 20 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
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


# 21 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h" 1 3 4
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2
# 92 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
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
# 93 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOS.h" 2






# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "/home/dieter/Development/ProjektEi/build/include/sdkconfig.h" 1




       
# 74 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
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




# 120 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 1
# 19 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdbool.h" 1 3 4
# 20 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h" 2





# 1 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 1
# 20 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 1
# 17 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 1
# 19 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h"
       



# 1 "/home/dieter/Development/esp-idf/components/newlib/include/assert.h" 1
# 39 "/home/dieter/Development/esp-idf/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "/home/dieter/Development/esp-idf/components/newlib/platform_include/assert.h" 2
# 18 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_assert.h" 2
# 21 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2


# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_bit_defs.h"
       
# 24 "/home/dieter/Development/esp-idf/components/soc/esp32/include/soc/soc.h" 2
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
       
# 43 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h"
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

# 44 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h" 1
# 14 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
       
# 24 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
typedef int32_t esp_err_t;
# 59 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 77 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _esp_error_check_failed_without_abort(esp_err_t rc, const char *file, int line, const char *function, const char *expression);
# 45 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_timer.h" 2
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
       






# 1 "/home/dieter/Development/esp-idf/components/esp32/include/esp_attr.h" 1
# 23 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h" 2
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
# 1 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h" 1
# 23 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_system.h"
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
# 127 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portable.h" 2
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
# 22 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
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
# 23 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 1
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
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
# 38 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
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
# 39 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h" 2
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 1
# 77 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h"
# 1 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/queue.h" 1
# 78 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 40 "/home/dieter/Development/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h" 2
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
# 43 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/poll.h" 1
# 34 "/home/dieter/Development/esp-idf/components/newlib/platform_include/sys/poll.h"
struct pollfd {
    int fd;
    short events;
    short revents;
};

typedef unsigned int nfds_t;

int poll(struct pollfd *fds, nfds_t nfds, int timeout);
# 44 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2


# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h" 1
# 41 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
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
# 47 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h" 1
# 44 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/err.h" 1
# 53 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;






typedef s8_t err_t;







extern const char *lwip_strerr(err_t err);





int err_to_errno(err_t err);
# 45 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h" 2




# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h" 1
# 89 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
typedef enum {



  PBUF_TRANSPORT = 0 + (14 + 0) + 40 + 20,



  PBUF_IP = 0 + (14 + 0) + 40,




  PBUF_LINK = 0 + (14 + 0),





  PBUF_RAW_TX = 0,


  PBUF_RAW = 0
} pbuf_layer;
# 145 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
typedef enum {






  PBUF_RAM = (0x0200 | 0x80 | 0x00),



  PBUF_ROM = 0x01,



  PBUF_REF = (0x40 | 0x01),






  PBUF_POOL = (0x0100 | 0x80 | 0x02)
} pbuf_type;
# 186 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 200 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;




  u8_t type_internal;


  u8_t flags;






  u8_t ref;


  u8_t if_idx;


 

  struct netif *l2_owner;
  void *l2_buf;

};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};



typedef void (*pbuf_free_custom_fn)(struct pbuf *p);


struct pbuf_custom {

  struct pbuf pbuf;

  pbuf_free_custom_fn custom_free_function;
};
# 279 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);
struct pbuf *pbuf_alloc_reference(void *payload, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size);



u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
u8_t pbuf_add_header(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_add_header_force(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_remove_header(struct pbuf *p, size_t header_size);
struct pbuf *pbuf_free_header(struct pbuf *q, u16_t size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
void *pbuf_get_contiguous(const struct pbuf *p, void *buffer, size_t bufsize, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
struct pbuf *pbuf_clone(pbuf_layer l, pbuf_type type, struct pbuf *p);
# 318 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 50 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/stats.h" 1
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/stats.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/mem.h" 1
# 50 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
typedef size_t mem_size_t;
# 72 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/stats.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h" 1
# 49 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"











# 63 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"










# 89 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"

































# 133 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"


# 50 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h" 2


typedef enum {

# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,
# 63 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"
MEMP_FRAG_PBUF,



MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 89 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,




MEMP_ARP_QUEUE,



MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,






MEMP_ND6_QUEUE,



MEMP_IP6_REASSDATA,



MEMP_MLD6_GROUP,
# 133 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 55 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h" 1
# 48 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h"
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/mem_priv.h" 1
# 49 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h" 2
# 108 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h"
struct memp_desc {


  const char *desc;







  u16_t size;
# 131 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h"
};
# 147 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 59 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/stats.h" 1
# 60 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 141 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/stats.h" 2
# 51 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h" 2
# 118 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
enum lwip_internal_netif_client_data_index
{


   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,







   LWIP_NETIF_CLIENT_DATA_INDEX_MLD6,


   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 157 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);
# 183 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 194 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 207 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_output_ip6_fn)(struct netif *netif, struct pbuf *p,
       const ip6_addr_t *ipaddr);
# 217 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);



typedef err_t (*netif_mld_mac_filter_fn)(struct netif *netif,
       const ip6_addr_t *group, enum netif_mac_filter_action action);
# 249 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef u8_t netif_addr_idx_t;
# 264 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef void (*dhcp_event_fn)(void);





struct netif {


  struct netif *next;




  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;



  ip_addr_t ip6_addr[3];


  u8_t ip6_addr_state[3];




  u32_t ip6_addr_valid_life[3];
  u32_t ip6_addr_pref_life[3];


  void (*ipv6_addr_cb)(struct netif* netif, u8_t ip_idex);




  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;





  netif_output_ip6_fn output_ip6;
# 336 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 0];



  struct udp_pcb *dhcps_pcb;
  dhcp_event_fn dhcp_event;




  const char* hostname;





  u16_t mtu;


  u16_t mtu6;


  u8_t hwaddr[6U];

  u8_t hwaddr_len;

  u8_t flags;

  char name[2];


  u8_t num;


  u8_t ip6_autoconfig_enabled;



  u8_t rs_count;
# 391 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;




  netif_mld_mac_filter_fn mld_mac_filter;






  struct pbuf *loop_first;
  struct pbuf *loop_last;

  u16_t loop_cnt_current;



  void (*l2_buffer_free_notify)(void *user_buf);
  ip_addr_t last_ip_addr;

};
# 427 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
extern struct netif *netif_list;



extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add_noaddr(struct netif *netif, void *state, netif_init_fn init, netif_input_fn input);


struct netif *netif_add(struct netif *netif,
                            const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,
                            void *state, netif_init_fn init, netif_input_fn input);
void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);





void netif_set_garp_flag(struct netif *netif);


void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);
# 483 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);
# 497 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
# 527 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
err_t netif_loop_output(struct netif *netif, struct pbuf *p);
void netif_poll(struct netif *netif);





err_t netif_input(struct pbuf *p, struct netif *inp);






void netif_ip6_addr_set(struct netif *netif, s8_t addr_idx, const ip6_addr_t *addr6);
void netif_ip6_addr_set_parts(struct netif *netif, s8_t addr_idx, u32_t i0, u32_t i1, u32_t i2, u32_t i3);

void netif_ip6_addr_set_state(struct netif* netif, s8_t addr_idx, u8_t state);
s8_t netif_get_ip6_addr_match(struct netif *netif, const ip6_addr_t *ip6addr);
void netif_create_ip6_linklocal_address(struct netif *netif, u8_t from_mac_48bit);
err_t netif_add_ip6_address(struct netif *netif, const ip6_addr_t *ip6addr, s8_t *chosen_idx);
# 578 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
u8_t netif_name_to_index(const char *name);
char * netif_index_to_name(u8_t idx, char *name);
struct netif* netif_get_by_index(u8_t idx);
# 591 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef u16_t netif_nsc_reason_t;
# 621 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef union
{

  struct link_changed_s
  {

    u8_t state;
  } link_changed;

  struct status_changed_s
  {

    u8_t state;
  } status_changed;

  struct ipv4_changed_s
  {

    const ip_addr_t* old_address;
    const ip_addr_t* old_netmask;
    const ip_addr_t* old_gw;
  } ipv4_changed;

  struct ipv6_set_s
  {

    s8_t addr_index;

    const ip_addr_t* old_address;
  } ipv6_set;

  struct ipv6_addr_state_changed_s
  {

    s8_t addr_index;

    u8_t old_state;

    const ip_addr_t* address;
  } ipv6_addr_state_changed;
} netif_ext_callback_args_t;
# 671 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
typedef void (*netif_ext_callback_fn)(struct netif* netif, netif_nsc_reason_t reason, const netif_ext_callback_args_t* args);
# 48 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2

# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/inet.h" 1
# 55 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
typedef u32_t in_addr_t;


struct in_addr {
  in_addr_t s_addr;
};

struct in6_addr {
  union {
    u32_t u32_addr[4];
    u8_t u8_addr[16];
  } un;

};
# 86 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
extern const struct in6_addr in6addr_any;
# 50 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/errno.h" 1
# 51 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h" 2
# 61 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
typedef u8_t sa_family_t;




typedef u16_t in_port_t;




struct sockaddr_in {
  u8_t sin_len;
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;

  char sin_zero[8];
};



struct sockaddr_in6 {
  u8_t sin6_len;
  sa_family_t sin6_family;
  in_port_t sin6_port;
  u32_t sin6_flowinfo;
  struct in6_addr sin6_addr;
  u32_t sin6_scope_id;
};


struct sockaddr {
  u8_t sa_len;
  sa_family_t sa_family;
  char sa_data[14];
};

struct sockaddr_storage {
  u8_t s2_len;
  sa_family_t ss_family;
  char s2_data1[2];
  u32_t s2_data2[3];

  u32_t s2_data3[3];

};




typedef u32_t socklen_t;
# 121 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
struct iovec {
  void *iov_base;
  size_t iov_len;
};


struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;
  struct iovec *msg_iov;
  int msg_iovlen;
  void *msg_control;
  socklen_t msg_controllen;
  int msg_flags;
};






struct cmsghdr {
  socklen_t cmsg_len;
  int cmsg_level;
  int cmsg_type;
};
# 183 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
struct ifreq {
  char ifr_name[6];
};
# 226 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
struct linger {
  int l_onoff;
  int l_linger;
};
# 319 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
typedef struct ip_mreq {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
} ip_mreq;



struct in_pktinfo {
  unsigned int ipi_ifindex;
  struct in_addr ipi_addr;
};
# 347 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
typedef struct ipv6_mreq {
  struct in6_addr ipv6mr_multiaddr;
  unsigned int ipv6mr_interface;
} ipv6_mreq;
# 537 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
void lwip_socket_thread_init(void);
void lwip_socket_thread_cleanup(void);
# 584 "/home/dieter/Development/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
ssize_t lwip_recv(int s, void *mem, size_t len, int flags);
ssize_t lwip_read(int s, void *mem, size_t len);
ssize_t lwip_readv(int s, const struct iovec *iov, int iovcnt);
ssize_t lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
ssize_t lwip_recvmsg(int s, struct msghdr *message, int flags);
ssize_t lwip_send(int s, const void *dataptr, size_t size, int flags);
ssize_t lwip_sendmsg(int s, const struct msghdr *message, int flags);
ssize_t lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
ssize_t lwip_write(int s, const void *dataptr, size_t size);
ssize_t lwip_writev(int s, const struct iovec *iov, int iovcnt);

int lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
                struct timeval *timeout);


int lwip_poll(struct pollfd *fds, nfds_t nfds, int timeout);

int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);
const char *lwip_inet_ntop(int af, const void *src, char *dst, socklen_t size);
int lwip_inet_pton(int af, const char *src, void *dst);





static inline int accept(int s,struct sockaddr *addr,socklen_t *addrlen)
{ return lwip_accept(s,addr,addrlen); }
static inline int bind(int s,const struct sockaddr *name, socklen_t namelen)
{ return lwip_bind(s,name,namelen); }
static inline int shutdown(int s,int how)
{ return lwip_shutdown(s,how); }
static inline int getpeername(int s,struct sockaddr *name,socklen_t *namelen)
{ return lwip_getpeername(s,name,namelen); }
static inline int getsockname(int s,struct sockaddr *name,socklen_t *namelen)
{ return lwip_getsockname(s,name,namelen); }
static inline int setsockopt(int s,int level,int optname,const void *opval,socklen_t optlen)
{ return lwip_setsockopt(s,level,optname,opval,optlen); }
static inline int getsockopt(int s,int level,int optname,void *opval,socklen_t *optlen)
{ return lwip_getsockopt(s,level,optname,opval,optlen); }
static inline int closesocket(int s)
{ return lwip_close(s); }
static inline int connect(int s,const struct sockaddr *name,socklen_t namelen)
{ return lwip_connect(s,name,namelen); }
static inline int listen(int s,int backlog)
{ return lwip_listen(s,backlog); }
static inline ssize_t recvmsg(int sockfd, struct msghdr *msg, int flags)
{ return lwip_recvmsg(sockfd, msg, flags); }
static inline ssize_t recv(int s,void *mem,size_t len,int flags)
{ return lwip_recv(s,mem,len,flags); }
static inline ssize_t recvfrom(int s,void *mem,size_t len,int flags,struct sockaddr *from,socklen_t *fromlen)
{ return lwip_recvfrom(s,mem,len,flags,from,fromlen); }
static inline ssize_t send(int s,const void *dataptr,size_t size,int flags)
{ return lwip_send(s,dataptr,size,flags); }
static inline ssize_t sendmsg(int s,const struct msghdr *message,int flags)
{ return lwip_sendmsg(s,message,flags); }
static inline ssize_t sendto(int s,const void *dataptr,size_t size,int flags,const struct sockaddr *to,socklen_t tolen)
{ return lwip_sendto(s,dataptr,size,flags,to,tolen); }
static inline int socket(int domain,int type,int protocol)
{ return lwip_socket(domain,type,protocol); }




static inline int ioctlsocket(int s,long cmd,void *argp)
{ return lwip_ioctl(s,cmd,argp); }
# 24 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 1
# 19 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
# 1 "/home/dieter/Development/esp-idf/components/newlib/include/sys/queue.h" 1
# 20 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 1
# 19 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h" 1
# 22 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_private/esp_wifi_types_private.h"
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
# 21 "/home/dieter/Development/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h" 2




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
# 25 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 1
# 19 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
# 1 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 1 3 4
# 98 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4

# 98 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h" 2
# 31 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"

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
# 26 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 1
# 63 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi_types.h" 1
# 64 "/home/dieter/Development/esp-idf/components/esp_wifi/include/esp_wifi.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 1
# 25 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h"
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_base.h" 1
# 26 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event.h" 2
# 1 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h" 1
# 15 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
       
# 29 "/home/dieter/Development/esp-idf/components/esp_event/include/esp_event_legacy.h"
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
# 27 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2

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
# 29 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 1 "/home/dieter/Development/esp-idf/components/smartconfig_ack/include/smartconfig_ack.h" 1
# 34 "/home/dieter/Development/esp-idf/components/smartconfig_ack/include/smartconfig_ack.h"
esp_err_t sc_send_ack_start(smartconfig_type_t type, uint8_t token, uint8_t *cellphone_ip);




void sc_send_ack_stop(void);
# 30 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 2
# 45 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
typedef struct sc_ack {
    smartconfig_type_t type;
    struct {
        uint8_t token;
        uint8_t mac[6];
        uint8_t ip[4];
    } ctx;
} sc_ack_t;

static const char *TAG = "smartconfig";


static 
# 57 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
      _Bool 
# 57 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
           s_sc_ack_send = 
# 57 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                           0
# 57 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                                ;

static int sc_ack_send_get_errno(int fd)
{
    int sock_errno = 0;
    u32_t optlen = sizeof(sock_errno);

    getsockopt(fd, 0xfff, 0x1007, &sock_errno, &optlen);

    return sock_errno;
}

static void sc_ack_send_task(void *pvParameters)
{
    sc_ack_t *ack = (sc_ack_t *)pvParameters;
    tcpip_adapter_ip_info_t local_ip;
    uint8_t remote_ip[4];
    memcpy(remote_ip, ack->ctx.ip, sizeof(remote_ip));
    int remote_port = (ack->type == SC_TYPE_ESPTOUCH) ? 18266 : 10000;
    struct sockaddr_in server_addr;
    socklen_t sin_size = sizeof(server_addr);
    int send_sock = -1;
    int optval = 1;
    int sendlen;
    int ack_len = (ack->type == SC_TYPE_ESPTOUCH) ? 11 : 7;
    uint8_t packet_count = 1;
    int err;
    int ret;

    bzero(&server_addr, sizeof(struct sockaddr_in));
    server_addr.sin_family = 2;
    server_addr.sin_addr.s_addr = ipaddr_addr((const char*)remote_ip);
    server_addr.sin_port = lwip_htons(remote_port);

    esp_wifi_get_mac(ESP_IF_WIFI_STA, ack->ctx.mac);

    vTaskDelay(200 / ( ( TickType_t ) 1000 / ( 1000 ) ));

    while (s_sc_ack_send) {

        ret = tcpip_adapter_get_ip_info(TCPIP_ADAPTER_IF_STA, &local_ip);
        if ((0 == ret) && (local_ip.ip.addr != ((u32_t)0x00000000UL))) {

            if (ack->type == SC_TYPE_ESPTOUCH) {
                memcpy(ack->ctx.ip, &local_ip.ip.addr, 4);
            }


            send_sock = socket(2, 2, 0);
            if ((send_sock < (64 - 10)) || (send_sock > (64 - 1))) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Creat udp socket failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Creat udp socket failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Creat udp socket failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Creat udp socket failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Creat udp socket failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
                goto _end;
            }

            setsockopt(send_sock, 0xfff, 0x0020 | 0x0004, &optval, sizeof(int));

            while (s_sc_ack_send) {

                vTaskDelay(100 / ( ( TickType_t ) 1000 / ( 1000 ) ));

                sendlen = sendto(send_sock, &ack->ctx, ack_len, 0, (struct sockaddr*) &server_addr, sin_size);
                if (sendlen > 0) {

                    if (packet_count++ >= 30) {
                        esp_event_post(SC_EVENT, SC_EVENT_SEND_ACK_DONE, 
# 121 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                                                                        ((void *)0)
# 121 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                                                                            , 0, ( TickType_t ) 0xffffffffUL);
                        goto _end;
                    }
                }
                else {
                    err = sc_ack_send_get_errno(send_sock);
                    if (err == 12 || err == 11) {
                        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
                        continue;
                    }
                    do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "send failed, errno %d" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
                    goto _end;
                }
            }
        }
        else {
            vTaskDelay((TickType_t)(100 / ( ( TickType_t ) 1000 / ( 1000 ) )));
        }
    }

_end:
    if ((send_sock >= (64 - 10)) && (send_sock <= (64 - 1))) {
        close(send_sock);
    }
    free(ack);
    vTaskDelete(
# 146 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
               ((void *)0)
# 146 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                   );
}

esp_err_t sc_send_ack_start(smartconfig_type_t type, uint8_t token, uint8_t *cellphone_ip)
{
    sc_ack_t *ack = 
# 151 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                   ((void *)0)
# 151 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                       ;

    if (cellphone_ip == 
# 153 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                       ((void *)0)
# 153 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                           ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Cellphone IP address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Cellphone IP address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Cellphone IP address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Cellphone IP address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Cellphone IP address is NULL" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x102;
    }

    ack = malloc(sizeof(sc_ack_t));
    if (ack == 
# 159 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
              ((void *)0)
# 159 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                  ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "ACK parameter malloc fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "ACK parameter malloc fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "ACK parameter malloc fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "ACK parameter malloc fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "ACK parameter malloc fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x101;
    }
    ack->type = type;
    ack->ctx.token = token;
    memcpy(ack->ctx.ip, cellphone_ip, 4);

    s_sc_ack_send = 
# 167 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                   1
# 167 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                       ;

    if (xTaskCreate(sc_ack_send_task, "sc_ack_send_task", 2048, ack, 2, 
# 169 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                                                                                                            ((void *)0)
# 169 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                                                                                                                ) != ( ( ( BaseType_t ) 1 ) )) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Create sending smartconfig ACK task fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Create sending smartconfig ACK task fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Create sending smartconfig ACK task fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Create sending smartconfig ACK task fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Create sending smartconfig ACK task fail" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        free(ack);
        return 0x101;
    }

    return 0;
}

void sc_send_ack_stop(void)
{
    s_sc_ack_send = 
# 180 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c" 3 4
                   0
# 180 "/home/dieter/Development/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
                        ;
}