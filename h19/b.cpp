class Tax {
public:
	int deduct(int income);
	Tax();
private:
	double deduction_rate_;
};

Tax::Tax() : deduction_rate_(0.1){}

int Tax::deduct(int income){
	return int(income * (1.0 - deduction_rate_));
}
