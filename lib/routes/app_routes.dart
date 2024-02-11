import 'package:marianus_aland_gian_s_application1/presentation/qris_scan_two_screen/qris_scan_two_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/qris_scan_two_screen/binding/qris_scan_two_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_one_screen/spash_screen_one_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_one_screen/binding/spash_screen_one_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_two_screen/spash_screen_two_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_two_screen/binding/spash_screen_two_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_three_screen/spash_screen_three_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/spash_screen_three_screen/binding/spash_screen_three_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/login_screen/login_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/canteen_screen/canteen_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/canteen_screen/binding/canteen_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/keinginan_screen/keinginan_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/keinginan_screen/binding/keinginan_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/konfirmasi_screen/konfirmasi_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/konfirmasi_screen/binding/konfirmasi_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_toko_tab_container_screen/detail_toko_tab_container_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/detail_toko_tab_container_screen/binding/detail_toko_tab_container_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/done_screen/done_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/done_screen/binding/done_binding.dart';
import 'package:marianus_aland_gian_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:marianus_aland_gian_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String qrisScanTwoScreen = '/qris_scan_two_screen';

  static const String spashScreenOneScreen = '/spash_screen_one_screen';

  static const String spashScreenTwoScreen = '/spash_screen_two_screen';

  static const String spashScreenThreeScreen = '/spash_screen_three_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String canteenScreen = '/canteen_screen';

  static const String keinginanScreen = '/keinginan_screen';

  static const String produkPage = '/produk_page';

  static const String konfirmasiScreen = '/konfirmasi_screen';

  static const String tokoPage = '/toko_page';

  static const String detailTokoPage = '/detail_toko_page';

  static const String detailTokoTabContainerScreen =
      '/detail_toko_tab_container_screen';

  static const String doneScreen = '/done_screen';

  static const String riwayatPembayaranPage = '/riwayat_pembayaran_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: qrisScanTwoScreen,
      page: () => QrisScanTwoScreen(),
      bindings: [
        QrisScanTwoBinding(),
      ],
    ),
    GetPage(
      name: spashScreenOneScreen,
      page: () => SpashScreenOneScreen(),
      bindings: [
        SpashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: spashScreenTwoScreen,
      page: () => SpashScreenTwoScreen(),
      bindings: [
        SpashScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: spashScreenThreeScreen,
      page: () => SpashScreenThreeScreen(),
      bindings: [
        SpashScreenThreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: canteenScreen,
      page: () => CanteenScreen(),
      bindings: [
        CanteenBinding(),
      ],
    ),
    GetPage(
      name: keinginanScreen,
      page: () => KeinginanScreen(),
      bindings: [
        KeinginanBinding(),
      ],
    ),
    GetPage(
      name: konfirmasiScreen,
      page: () => KonfirmasiScreen(),
      bindings: [
        KonfirmasiBinding(),
      ],
    ),
    GetPage(
      name: detailTokoTabContainerScreen,
      page: () => DetailTokoTabContainerScreen(),
      bindings: [
        DetailTokoTabContainerBinding(),
      ],
    ),
    GetPage(
      name: doneScreen,
      page: () => DoneScreen(),
      bindings: [
        DoneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => QrisScanTwoScreen(),
      bindings: [
        QrisScanTwoBinding(),
      ],
    )
  ];
}
