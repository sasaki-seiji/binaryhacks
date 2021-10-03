//
// gcd.cpp
//
//#include <boost/math/common_factor.hpp>
#include <boost/integer/common_factor.hpp> // 2021.10.03 modify
#include "gcd.h"

extern "C" {
	int gcd(int v1, int v2) {
		//return boost::math::gcd(v1, v2);
		return boost::integer::gcd(v1, v2); // 2021.10.03 modify
	}
}
