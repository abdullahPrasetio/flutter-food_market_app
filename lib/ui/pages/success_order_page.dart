part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You’ve Made Order",
        subtitle: "Just stay at home while we are \n preparing your best foods",
        picturePath: "assets/success_order.png",
        buttonTitle1: "Order Other Foods",
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTitle2: "View My Order",
        buttonTap2: () {
          Get.offAll(MainPage(
            initialPage: 1,
          ));
        },
      ),
    );
  }
}
