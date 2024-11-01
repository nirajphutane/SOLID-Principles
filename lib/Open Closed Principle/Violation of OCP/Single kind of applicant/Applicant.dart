
class Applicant {

  final String firstName, lastName;

  Applicant(this.firstName, this.lastName);

  @override
  String toString() => '\nApplicant:\nFirstName: $firstName\nLastName: $lastName';
}