// signleton-tls.h
#include <boost/utility.hpp>
#include "../h36/static_mutex.hpp"

class Singleton : private boost::noncopyable {
public:
	static Singleton *instance(); // 唯一のインスタンスを得る
	static int count_;
private:
	Singleton(); // instance() 関数以外からのオブジェクトの生成を禁止する
	static Singleton *do_instance();
	static Singleton *instance_; // 唯一のインスタンスへのポインタ(最初はNULL)
	static static_mutex m_;
};

