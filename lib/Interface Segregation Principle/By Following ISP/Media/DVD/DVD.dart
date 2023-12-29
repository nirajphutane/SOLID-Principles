
import 'IDVD.dart';

class DVD implements IDVD {

  @override
  String libraryId;

  @override
  String title;

  @override
  List<String> actors = [];

  @override
  int? runtimeInMinutes;

  DVD(this.libraryId, this.title);
}