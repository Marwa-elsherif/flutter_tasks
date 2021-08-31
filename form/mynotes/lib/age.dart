class AgeCalculator {
  static var age;
  AgeCalculator(int birthY) {
    int birthYear = birthY;
    age = DateTime.now().year - birthYear;
    print("your Age is $age years old ");
  }
}
