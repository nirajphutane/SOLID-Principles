
class Employee {

  final String firstName, lastName, emailId;
  String? clientEmailId;
  late bool isManager = false;
  late bool isExecutive = false;

  Employee(this.firstName, this.lastName, this.emailId);

  @override
  String toString() => '\nEmployee:\nFirstName: $firstName\nLastName: $lastName\nEmailId: $emailId'
      '\nIsManager: $isManager\nIsExecutive: $isExecutive\nClientEmailId: $clientEmailId';
}