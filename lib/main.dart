import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/routes/routes.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  String env = Config.useConfigDotenvFile(Config.APP_PACKAGE_NAME);
  await dotenv.load(fileName: env);
  // init Hive
  // final document = await getApplicationDocumentsDirectory();
  // Logger().d('App document dir: ${document.path}');
  await GetStorage.init();
  runApp(const ChnqooSoulMobile());
}

outPrintln() {
  print("Build command line params: ");
  print("--> " + Config.APP_PACKAGE_NAME);
  print("--> " + Config.APP_NAME);
  print("--> " + dotenv.get("ENV"));
}

class ChnqooSoulMobile extends StatefulWidget {
  const ChnqooSoulMobile({super.key});

  @override
  State<ChnqooSoulMobile> createState() => ChnqooSoulMobileState();
}

class ChnqooSoulMobileState extends State<ChnqooSoulMobile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 667));
    return GetMaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
        snackBarTheme: SnackBarThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // 设置圆角半径为10
          ),
        ),
      ),
      locale: Locale('zh'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh'),
        const Locale('en'),
      ],
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        Widget newWidget = Container();
        if (child == null) {
        } else {
          newWidget = MediaQuery(
            data: data.copyWith(textScaler: TextScaler.linear(1.0)),
            child: child,
          );
        }
        return newWidget;
      },
      initialRoute: RoutesClass.APP,
      getPages: RoutesClass.routes,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 360),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var stores = Get.put(GetStores());
    // ever(stores.user, (value) {});
    // Get.updateLocale(Locale('zh', 'CN'));
  }

  @override
  void didUpdateWidget(covariant ChnqooSoulMobile oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
}
