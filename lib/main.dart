import 'package:flutter/material.dart';
import 'package:teklifimgelsin_flutter_task/presentation/pages/search_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: SearchPage());
  }
}
