import 'package:mobx/mobx.dart';
part 'search_mobx.g.dart';

class Search = _SearchBase with _$Search;

abstract class _SearchBase with Store {
  @observable
  bool tapForm = false;

  @action
  changeTapForm() {
    tapForm = true;
  }

  @action
  changeTapOutsideForm() {
    tapForm = false;
  }
}
