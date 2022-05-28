// ignore_for_file: unnecessary_overrides

import 'package:deep_linking_test/Router.dart';
import 'package:deep_linking_test/home.dart';
import 'package:deep_linking_test/payment_successful_page.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: '/router',
        page: () => const Router(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/',
        page: () => const HomePage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/payment-successful',
        page: () => const PaymentSuccessfulPage(),
        middlewares: [MyMiddleware()],
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }
}
