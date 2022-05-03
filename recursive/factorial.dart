const int intMaxValue = 9223372036854775807;
void main() {
  int inputInteger = 20;
  print(getFactorial(inputInteger));
  print(getFactorialByLoop(inputInteger));
  // int inputInteger = 21;
  // print(getFactorial(inputInteger));
  // print(getFactorialByLoop(inputInteger));
}

int getFactorial(int integer) {
  if (integer < 0) {
    return throw UnimplementedError('Cannot be supplied under zero');
  } else if (integer == 0) {
    return 1;
  } else {
    int multipled = integer * getFactorial(integer - 1);
    if (intMaxValue < multipled)
      throw UnimplementedError('overflow');
    else if (multipled < 1) throw UnimplementedError('overflow');
    return multipled;
  }
}

int getFactorialByLoop(int integer) {
  int multipled = 1;
  if (integer == 0)
    return multipled;
  else if (integer < 0)
    throw UnimplementedError('Cannot be supplied under zero');
  for (var i = integer; i > 0; i--) {
    multipled *= i;
    if (intMaxValue < multipled)
      throw UnimplementedError('overflow');
    else if (multipled < 1) throw UnimplementedError('overflow');
  }
  return multipled;
}
