part of "widgets.dart";

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: Theme.of(context).cardTheme.color,
        ),
        child: _Body());
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          DisplayAlarm(),
          HorizontalSeparator(),
          DisplayToBed(),
        ],
      ),
    );
  }
}

class DisplayAlarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Alarm',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        CupertinoSwitch(
            activeColor: RetoColors.icons,
            value: true,
            onChanged: (bool value) {})
      ],
    );
  }
}

class DisplayToBed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          child: Column(
        children: [
          _Item1(),
          Expanded(child: VerticalSeparator()),
          _Item2(),
          Expanded(child: VerticalSeparator()),
          _Item3()
        ],
      )),
    );
  }
}

class _Item1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 65,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.cloudMoon,
            size: kiconSize,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('To Bed'),
              Text(
                '23:30',
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Item2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 60,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.bed,
            size: kiconSize,
          ),
          SizedBox(width: 20),
          Text('8 Hours Sleep'),
          Spacer(),
          IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded), onPressed: () {}),
        ],
      ),
    );
  }
}

class _Item3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 65,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.cloudSun,
            size: kiconSize,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '07:30',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text('Wake Up')
            ],
          )
        ],
      ),
    );
  }
}
