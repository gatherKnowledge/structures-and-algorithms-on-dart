void main() {
  print(getFactorial(0));
}

int getFactorial(int integer) {
  if (integer < 0) {
    return throw  UnimplementedError('Cannot be supplied under zero');
  } else if (integer == 0) {
    return 1;
  } else {
    return integer * getFactorial(integer - 1);
  }
}
