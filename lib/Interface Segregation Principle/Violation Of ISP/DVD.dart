
import 'ILibraryItem.dart';

class DVD implements ILibraryItem {

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

  List<String> actors = [];   // Additional property

  int runtimeInMinutes = 0;   // Additional property

  @override
   int? pages = -1;   // Do not have this param

  DVD(this.libraryId, this.title);

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