// syngleton-threadsafe-statics.cpp

class Singleton {
public:
	static Singleton *instance( ) ;
private:
	Singleton( ) ;
} ;

Singleton::Singleton( ) { }

Singleton *Singleton::instance() {
	static Singleton instance_ ;
	return &instance_ ;
}


