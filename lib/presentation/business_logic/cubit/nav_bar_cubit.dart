import 'package:bloc/bloc.dart';

class TabIndexCubit extends Cubit<int> {
  TabIndexCubit() : super(0);

  void setTabIndex(int index) {
    emit(index);
  }
}