int sumup(int from, int to)
{
	int sum = 0;
	int i;
	for (i = from; i <= to; i++){
		sum += i;
	}
	return sum;
}

int main()
{
	int sum = sumup(10, 100);
	return sum;
}
