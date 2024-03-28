import 'package:joljol/presentation/screen/home/s_home.dart';

import 'utilities/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      child: GetMaterialApp(
          getPages: router,
          theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
          home: const HomeScreen()),
    );
  }
}
