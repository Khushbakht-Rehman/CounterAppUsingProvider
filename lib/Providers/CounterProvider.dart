import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier
{
  int count=0;


   increment()
  {
    count++;
    notifyListeners();

  }

}