import 'package:empowered/src/provider/table2_notifier.dart';
import 'package:provider/provider.dart';
import 'package:empowered/src/provider/loadingProvider.dart';
import 'package:empowered/src/provider/rowProvider.dart';

class MyProviderList {
  static List<ChangeNotifiempoweredrovider> providers = [
    ChangeNotifiempoweredrovider<LoadingProvider>(
        create: (context) => LoadingProvider()),
    ChangeNotifiempoweredrovider<RowDataProvider>(
        create: (context) => RowDataProvider()),
    ChangeNotifiempoweredrovider<TableDataNotifier>(
      create: (context) => TableDataNotifier(),
    ),
  ];
}
