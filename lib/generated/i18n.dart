import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get agreement_register1 => "회원가입 시 ";
  String get agreement_register2 => "에 동의합니다.";
  String get agreements => "이용약관";
  String get appName => "DEAL";
  String get intro_get_started => "OK, I got it!";
  String get location_information_agreements => "위치기반서비스 이용약관";
  String get login_email_hint => "email address";
  String get login_password_hint => "password";
  String get login_password_retry_hint => "password again";
  String get login_with_email => "Sign in with email";
  String get login_with_google => "Sign in with google";
  String get personal_information_agreements => "개인정보 처리방침";
  String get prompt2_forgot_password => "비밀번호를 재설정하려는 계정을 입력해주세요.\n입력하신 이메일로 비밀번호를 재설정 할 수 있는 링크를 보내드립니다.";
  String get prompt_double_tab => "'뒤로' 버튼을 한번 더 누르시면 종료됩니다.";
  String get prompt_forgot_password => "Forget your password?";
  String get prompt_login => "Sign in";
  String get prompt_phone_auth => "DEAL 서비스를 이용하기 위해서는\n최초 1회 본인인증이 필요합니다.";
  String get prompt_phone_auth_button => "( 여기를 눌러 본인인증을 진행해주세요 )";
  String get register => "Sign up";
  String get send_email => "send email";
  String get title_agreements => "약관 확인";
  String get title_auth_with_self_phone => "본인인증";
  String get title_forgot_password => "reset password";
  String get title_login_with_email => "Sign in with email";
  String get title_login_with_google => "Sign in with google account";
  String get title_preferences => "Settings";
  String get title_register_with_email => "sign-up with email address";
}

class $ko extends S {
  const $ko();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get intro_get_started => "시작하기";
  @override
  String get title_login_with_google => "구글 계정으로 로그인";
  @override
  String get login_with_email => "이메일로 로그인하기";
  @override
  String get personal_information_agreements => "개인정보 처리방침";
  @override
  String get title_forgot_password => "비밀번호 재설정";
  @override
  String get login_email_hint => "이메일 아이디를 입력해주세요";
  @override
  String get prompt_forgot_password => "비밀번호를 잊어버리셨나요?";
  @override
  String get title_register_with_email => "이메일로 회원가입";
  @override
  String get title_preferences => "설정";
  @override
  String get prompt_phone_auth_button => "( 여기를 눌러 본인인증을 진행해주세요 )";
  @override
  String get location_information_agreements => "위치기반서비스 이용약관";
  @override
  String get prompt_double_tab => "'뒤로' 버튼을 한번 더 누르시면 종료됩니다.";
  @override
  String get prompt_phone_auth => "DEAL 서비스를 이용하기 위해서는\n최초 1회 본인인증이 필요합니다.";
  @override
  String get login_password_hint => "비밀번호를 입력해주세요";
  @override
  String get title_login_with_email => "이메일로 로그인";
  @override
  String get title_agreements => "약관 확인";
  @override
  String get appName => "DEAL";
  @override
  String get title_auth_with_self_phone => "본인인증";
  @override
  String get agreements => "이용약관";
  @override
  String get send_email => "이메일 발송";
  @override
  String get prompt_login => "로그인";
  @override
  String get prompt2_forgot_password => "비밀번호를 재설정하려는 계정을 입력해주세요.\n입력하신 이메일로 비밀번호를 재설정 할 수 있는 링크를 보내드립니다.";
  @override
  String get login_with_google => "구글계정으로 시작하기";
  @override
  String get login_password_retry_hint => "비밀번호를 다시 입력해주세요";
  @override
  String get agreement_register1 => "회원가입 시 ";
  @override
  String get agreement_register2 => "에 동의합니다.";
  @override
  String get register => "회원가입";
}

class $en extends S {
  const $en();
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("ko", ""),
      Locale("en", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "ko":
          S.current = const $ko();
          return SynchronousFuture<S>(S.current);
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        default:
          // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
