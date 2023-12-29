
abstract interface class IBorrower {

  String? borrowerNumber;
  DateTime? borrowDate;
  int? checkOutDurationInDays;

  void checkIn();
  void checkOut(String borrower);
  DateTime? getDueDate();
}