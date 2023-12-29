
import 'IBook.dart';

class ReferenceBook implements IBook {

  @override
  String libraryId;

  @override
  String title;

  @override
  String? author;

  @override
  int? pages;

  ReferenceBook(this.libraryId, this.title);
}