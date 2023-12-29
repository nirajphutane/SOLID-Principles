
abstract interface class ILibraryItem {

  late String libraryId;
  late String title;
  String? author;
  String? borrowerNumber;
  DateTime? borrowDate;
  int? checkOutDurationInDays;
  int? pages;

  void checkIn();
  void checkOut(String borrower);
  DateTime? getDueDate();
}