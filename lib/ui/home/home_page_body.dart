import 'package:flutter/material.dart';
import 'package:planets_app/ui/common/planet_summery.dart';
import 'package:planets_app/model/planets.dart';

class HomePageBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Container(
      color: new Color(0xFF736AB7),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            sliver: new SliverFixedExtentList(
              itemExtent: 152.0,
              delegate: new SliverChildBuilderDelegate(
                  (context, index) => new PlanetSummary(planets[index]),
                  childCount: planets.length),
            ),
          )
        ],
      ),
    ));
  }
}

// return new Expanded(
//         child: ListView.builder(
//             itemBuilder: (context, index) => new PlanetRow(planets[index]),
//             itemCount: planets.length,
//             padding: new EdgeInsets.symmetric(vertical: 16.0)));
//   }
