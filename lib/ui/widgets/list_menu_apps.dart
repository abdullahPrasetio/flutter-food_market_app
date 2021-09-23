part of 'widgets.dart';

class ListMenuApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListMenuItem(
          label: "Rate App",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Help Center",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Privacy & Policy",
          onTap: () {},
        ),
        ListMenuItem(
          label: "Terms & Conditions",
          onTap: () {},
        ),
      ],
    );
  }
}
