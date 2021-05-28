part of "widgets.dart";

class HorizontalSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Divider(
            thickness: 2,
            color: Color.fromRGBO(234, 238, 242, 1),
          )),
    );
  }
}

class VerticalSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        width: 2,
        color: Color.fromRGBO(234, 238, 242, 1),
      ),
    );
  }
}
