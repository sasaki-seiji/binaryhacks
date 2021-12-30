#define NUM_THREADS 100
#define JOIN_WAIT_SEC 10

extern void need_to_sync(int no) ;
extern void do_something(int no) ;
extern void delay(int count);

extern int lock_errors[];
extern int unlock_errors[];
