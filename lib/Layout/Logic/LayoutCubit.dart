
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onsite/Features/Chat/Presentation/View/ChatScreen.dart';
import 'package:onsite/Features/Home/Presentation/view/HomeScreen.dart';

import 'LayoutStates.dart';


class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutHome());
  List<Widget> screens = const [
      HomeScreen(),
      ChatScreen(),
      
  ];
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeLayout(int index) {
    currentIndex = index;
    emit(LayoutHome());
  }
}
