import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  void LoadLange(BuildContext context) {
    final savedlang = context.locale;
    emit(LocalizationChanged(savedlang));
  }

  void changeLange(BuildContext context) {
    final currntLang = state.locale;
    final newLocal;
    if (currntLang.languageCode == "en") {
      newLocal = Locale("ar");
    } else {
      newLocal = Locale("en");
    }
    emit(LocalizationChanged(newLocal));
    context.setLocale(newLocal);
  }
}
