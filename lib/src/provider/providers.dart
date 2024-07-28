import 'package:empowered/src/provider/table2_notifier.dart';
import 'package:provider/provider.dart';
import 'package:empowered/src/provider/loadingProvider.dart';
import 'package:empowered/src/provider/rowProvider.dart';

class MyProviderList {
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<LoadingProvider>(create: (context) => LoadingProvider()),
    ChangeNotifierProvider<RowDataProvider>(
        create: (context) => RowDataProvider()),
    ChangeNotifierProvider<TableDataNotifier>(
      create: (context) => TableDataNotifier(),
    ),
  ];
}
