
import 'IAudioBook.dart';

class AudioBook implements IAudioBook {

  @override
  String libraryId;

  @override
  String title;

  @override
  DateTime? borrowDate;

  @override
  String? borrowerNumber;

  @override
  int? checkOutDurationInDays;

  AudioBook(this.libraryId, this.title);

  @override
  void checkIn() => borrowerNumber = '';

  @override
  void checkOut(String borrowerNumber) {
    this.borrowerNumber = borrowerNumber;
    borrowDate = DateTime.now();
  }

  @override
  DateTime? getDueDate() => borrowDate?.add(Duration(days: checkOutDurationInDays?? 0));

  @override
  int? runtimeInMinutes;
}