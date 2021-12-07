import 'package:get_it/get_it.dart';
import 'package:surfers/modals/app_modal.dart';

var locator = GetIt.instance;

void setUpData() {
  locator.registerSingleton(AppData());
}
