part of 'widgets.dart';

class ListMenuItem extends StatelessWidget {
  final String label;
  final Function onTap;

  ListMenuItem({this.label, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: blackFontStyle3,
          ),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/ic_next.png'))),
          )
        ],
      ),
    );
  }
}
