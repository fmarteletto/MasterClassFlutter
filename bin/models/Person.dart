class Person {
  String Name;
  String LastName;
  double Weight;
  double Height;

  Person.base(this.Name, this.LastName, this.Weight, this.Height);

  String getFullName() {
    return '$Name $LastName';
  }

  double imc() {
    return Weight / (Height * Height);
  }
}
