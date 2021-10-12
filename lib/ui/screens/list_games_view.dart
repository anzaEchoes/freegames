import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/provider/featuresapicall_provider.dart';
import 'package:freegames/ui/screens/shared_widgets/game_item.dart';

class ListGameView extends ConsumerWidget {
  final List<VideoGame> vieogames;

  const ListGameView({
    Key? key,
    required this.vieogames,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Consumer(builder: (context, watch, _) {
      final ctrlscroll = watch(ctrlProvider).state;
      return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: AnimationLimiter(
          child: NotificationListener<ScrollEndNotification>(
            child: GridView.count(
                controller: ctrlscroll,
                crossAxisCount: 1,
                children: datatowidgets(vieogames)),
            onNotification: (notification) {
              if (ctrlscroll.position.userScrollDirection ==
                  ScrollDirection.reverse) {
                context.read(sectionCategoriesColProvider).state = 0;
              }
              if (ctrlscroll.position.pixels < 100) {
                context.read(sectionCategoriesColProvider).state = 1;
              }
              return true;
            },
          ),
        ),
      );

/*     return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),

        child: Column(children: datatowidgets(widget.vieogames))); */
    });
  }

  List<Widget> datatowidgets(List<VideoGame> vieogames) {
    List<Widget> listw = [];
    int index = 0;
    int columnCount = 4;

    for (var item in vieogames) {
      listw.add(AnimationConfiguration.staggeredGrid(
        position: index,
        duration: const Duration(milliseconds: 1000),
        columnCount: columnCount,
        child: ScaleAnimation(
          child: GameItem(
            vd: item,
          ),
        ),
      ));
    }
    return listw;
  }
}
