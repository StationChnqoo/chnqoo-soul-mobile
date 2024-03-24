import 'package:get/get.dart';
import 'package:soul/pages/app.dart';

class RoutesClass {
  static String APP = "/app";
  static String HOME = "/";
  static String PERMISSION = "/permission";
  static String SMS = "/sms";
  static String LOGIN = "/login";
  static String EDIT_ANNIVERSARY = "/edit/anniversary";
  static String EDIT_DIARY = "/edit/diary";
  static String EDIT_MOTION = "/edit/motion";
  static String EDIT_NOTE = "/edit/note";
  static String EDIT_TODO = "/edit/todo";
  static String LIST_ANNIVERSARY = "/list/anniversary";
  static String LIST_DIARY = "/list/diary";
  static String LIST_MOTION = "/list/motion";
  static String LIST_NOTE = "/list/note";
  static String LIST_TODO = "/list/todo";

  static List<GetPage> routes = [
    GetPage(name: APP, page: () => App()),
    // GetPage(name: HOME, page: () => const HomePage()),
  ];
}
