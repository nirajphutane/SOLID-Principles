
import 'ILibraryItem.dart';

class ReferenceBook implements ILibraryItem {

  @override
  String libraryId;

  @override
  String title;

  @override
  String? author;

  @override
  DateTime? borrowDate;   // Do not have this param

  @override
  String? borrowerNumber;   // Do not have this param

  @override
  int? checkOutDurationInDays;    // Do not have this param

  @override
  int? pages;

  ReferenceBook(this.libraryId, this.title);

  @override
  void checkIn() => throw UnimplementedError('Reference Book do not have Check In entry');

  @override
  void checkOut(String borrowerNumber) => throw UnimplementedError('Reference Book do not have Check Out entry');

  @override
  DateTime? getDueDate() => throw UnimplementedError('Reference Book do not have Due date');
}