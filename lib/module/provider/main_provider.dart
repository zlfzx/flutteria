import 'package:belajar_flutter/module/provider/app_color.dart';
import 'package:belajar_flutter/module/provider/counter.dart';
import 'package:belajar_flutter/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppColor(),
        ),
        ChangeNotifierProvider(
          create: (context) => Counter(),
        )
      ],
      child: Scaffold(
        appBar: HomeAppbar('Provider'),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Consumer<Counter>(
              builder: (context, counter, _) => FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  counter.decrement();
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Consumer<Counter>(
              builder: (context, counter, _) => FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  counter.increment();
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<AppColor>(
                builder: (context, appColor, _) => Consumer<Counter>(
                  builder: (context, counter, _) => AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 100,
                    height: 100,
                    color: appColor.randomColor(counter.count),
                    child: Center(
                      child: Text(
                        counter.count.toString(),
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Amber'),
                  Consumer<AppColor>(
                      builder: (context, appColor, _) => Switch(
                          value: appColor.isLightBlue,
                          onChanged: (value) {
                            appColor.isLightBlue = value;
                          })),
                  Text('Light Blue'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
