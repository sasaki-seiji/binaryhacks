#include "a.h"
Tax::Tax() : consumption_tax_(1.05) {}

int Tax::tax(int price){
	return price * consumption_tax_;
}
