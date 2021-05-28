part of "widgets.dart";

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kTopPadding),
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                RetoColors.gradient1,
                RetoColors.gradient2,
                RetoColors.gradient3,
                RetoColors.gradient4,
                RetoColors.gradient5,
              ])),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You did it! here you can manage your alarm, change time and other things',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Image(
                image: AssetImage("assets/imagen1.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
