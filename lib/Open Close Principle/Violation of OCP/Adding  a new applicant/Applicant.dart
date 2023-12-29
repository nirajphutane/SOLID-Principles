
class Applicant {

  final String firstName, lastName;
  bool isManager = false;

  Applicant(this.firstName, this.lastName, {this.isManager = false});

  @override
  String toString() => '\nApplicant:\nFirstName: $firstName\nLastName: $lastName\nIsManager:$isManager';
}