// signleton-nolock.h
#include <boost/utility.hpp>

class Singleton : private boost::noncopyable {
public:
	static Singleton *instance(); // 唯一のインスタンスを得る
	static int count_;
private:
	Singleton(); // innstance 関数以外からのオブジェクトの生成を禁止する
	static Singleton *instance_; // 唯一のインスタンスへのポインタ(最初はNULL)
};

