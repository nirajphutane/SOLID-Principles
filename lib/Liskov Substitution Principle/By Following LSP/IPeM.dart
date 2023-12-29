
import 'IEmployee.dart';

abstract interface class IPeM {
  late IEmployee manager;

  set assignManager(IEmployee manager);
}