#include <iostream>
#include "a.h"
int main(){
	Tax tax;
	int apple_price = 100;
	std::cout << "apple: " << tax.tax(apple_price) << std::endl;
	return 0;
}
