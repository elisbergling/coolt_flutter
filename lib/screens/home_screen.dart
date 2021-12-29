import 'package:coolt_flutter/constants/colors.dart';
import 'package:coolt_flutter/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: Column(
              children: [
                Flexible(
                  flex: 4,
                  child: Row(
                    children: [
                      PatiensActivity(),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            SmallTile(),
                            SmallTile(),
                            SmallTile(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                LatestPatiensData(),
                Flexible(
                  flex: 4,
                  child: Row(
                    children: [
                      CovidInformation(),
                      PatiensByGender(),
                      PatiensByGroup(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          PatiensInformation(),
        ],
      ),
    );
  }
}

class PatiensInformation extends StatelessWidget {
  const PatiensInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Text(
                  'Patines Information',
                  style: TextStyle(color: white, fontWeight: FontWeight.w600),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20),
            AvatarBox(
              name: 'Bird',
              image: 'kelly-sikkema-JN0SUcTOig0-unsplash-min.jpg',
              size: 125.0,
            ),
            const SizedBox(height: 20),
            PatiensInformationInformation('Name', 'Babis Gaber'),
            PatiensInformationInformation('Age', '55'),
            PatiensInformationInformation('Sex', 'Sigma Male'),
            PatiensInformationInformation('Country', 'Greece'),
            PatiensInformationInformation('Case Type', 'Emergency'),
            PatiensInformationInformation('Old Records', 'See All'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    backgroundColor: black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Some text',
                            style: TextStyle(color: white),
                          ),
                          ElevatedButton(
                            onPressed: Navigator.of(context).pop,
                            child: Text('close'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Show Full Inforamtion'),
                    Transform.rotate(
                      angle: 3 * pi / 2,
                      child: Icon(Icons.arrow_circle_down),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calender',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'manage',
                  style: TextStyle(color: Colors.white38),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('21 Jan 2021', style: TextStyle(color: Colors.white54)),
                Spacer(),
              ],
            ),
            const SizedBox(height: 5),
            DateTimeContainerRow(),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Patients Appointments',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AvatarBox(
                  name: 'Rick',
                  image:
                      'assets/christopher-campbell-rDEOVtE7vOs-unsplash-min.jpg',
                ),
                AvatarBox(
                  name: 'Morty',
                  image: 'assets/craig-mckay-jmURdhtm7Ng-unsplash-min.jpg',
                ),
                AvatarBox(
                  name: 'Bird',
                  image: 'assets/houcine-ncib-B4TjXnI0Y2c-unsplash-min.jpg',
                ),
                AvatarBox(
                  name: 'Person',
                  image: 'assets/jonas-kakaroto-mjRwhvqEC0U-unsplash-min.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimeContainerRow extends HookWidget {
  const DateTimeContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DateTimeContainer(
          index: 0,
          day: 'Mon',
          dayNumber: '20',
        ),
        DateTimeContainer(
          index: 1,
          day: 'Tus',
          dayNumber: '21',
        ),
        DateTimeContainer(
          index: 2,
          day: 'Wen',
          dayNumber: '22',
        ),
        DateTimeContainer(
          index: 3,
          day: 'Thu',
          dayNumber: '23',
        ),
        DateTimeContainer(
          index: 4,
          day: 'Fri',
          dayNumber: '24',
        ),
        DateTimeContainer(
          index: 5,
          day: 'Sut',
          dayNumber: '25',
        ),
      ],
    );
  }
}

class AvatarBox extends StatelessWidget {
  const AvatarBox({
    Key? key,
    required this.name,
    required this.image,
    this.size = 70,
  }) : super(key: key);

  final String name;
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(size / 14),
          child: Image(
            height: size,
            width: size,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        if (size == 70)
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              name,
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ),
      ],
    );
  }
}

class DateTimeContainer extends HookWidget {
  const DateTimeContainer({
    required this.index,
    required this.day,
    required this.dayNumber,
    Key? key,
  }) : super(key: key);

  final int index;
  final String day;
  final String dayNumber;

  @override
  Widget build(BuildContext context) {
    final dateIndex = useProvider(dateIndexProvider);
    return GestureDetector(
      onTap: () {
        context.read(dateIndexProvider).state = index;
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
        height: 65,
        width: 40,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: dateIndex.state != index
              ? Border.all(color: Colors.white38)
              : null,
          color: dateIndex.state == index ? Colors.blue : null,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                day,
                style: TextStyle(
                  color:
                      dateIndex.state != index ? Colors.white38 : Colors.white,
                ),
              ),
              Text(
                dayNumber,
                style: TextStyle(
                  color:
                      dateIndex.state != index ? Colors.white38 : Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PatiensInformationInformation extends StatelessWidget {
  const PatiensInformationInformation(
    this.text1,
    this.text2, {
    Key? key,
  }) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                child: Text(
                  text1,
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              Text(
                '-',
                style: TextStyle(color: Colors.white38),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Text(
            text2,
            style: TextStyle(
              color: text2 != 'Emergency' ? Colors.white : Colors.redAccent,
              decoration: text2 == 'See All' ? TextDecoration.underline : null,
            ),
          ),
        ],
      ),
    );
  }
}

class PatiensActivity extends StatelessWidget {
  const PatiensActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer(
      flex: 3,
    );
  }
}

class LatestPatiensData extends StatelessWidget {
  const LatestPatiensData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer(
      flex: 3,
    );
  }
}

class CovidInformation extends StatelessWidget {
  const CovidInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer();
  }
}

class PatiensByGender extends StatelessWidget {
  const PatiensByGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer();
  }
}

class PatiensByGroup extends StatelessWidget {
  const PatiensByGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer();
  }
}

class SmallTile extends StatelessWidget {
  const SmallTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexContainer();
  }
}

class FlexContainer extends StatelessWidget {
  const FlexContainer({
    Key? key,
    this.child,
    this.flex,
  }) : super(key: key);
  final Widget? child;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex ?? 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: grey,
        ),
        margin: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
