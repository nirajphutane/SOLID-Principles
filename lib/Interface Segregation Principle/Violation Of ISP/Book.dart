
import 'ILibraryItem.dart';

class Book implements ILibraryItem {

  @override
  String libraryId;

  @override
  String title;

  @override
  String? author;

  @override
  DateTime? borrowDate;

  @override
  String? borrowerNumber;

  @override
  int? checkOutDurationInDays;

  @override
  int? pages;

  Book(this.libraryId, this.title);

  @override
  void checkIn() => borrowerNumber = '';

  @override
  void checkOut(String borrowerNumber) {
    this.borrowerNumber = borrowerNumber;
    borrowDate = DateTime.now();
  }

  @override
  DateTime? getDueDate() => borrowDate?.add(Duration(days: checkOutDurationInDays?? 0));
}