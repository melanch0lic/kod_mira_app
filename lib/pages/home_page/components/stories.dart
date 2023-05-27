import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class Stories extends StatefulWidget {
  const Stories({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final StoryController controller = StoryController();
  final List<dynamic> _items = List.empty(growable: true);
  late final TransformerPageController pageController;

  @override
  void initState() {
    _items.addAll([
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
      [customImageItem('https://i.imgur.com/peFRcQo.png')],
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
      [customImageItem('https://i.imgur.com/cCuSSuQ.png')],
    ]);
    pageController = TransformerPageController(initialPage: widget.index, itemCount: _items.length);
    super.initState();
  }

  @override
  void dispose() {
    controller.pause();
    controller.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransformerPageView(
        pageController: pageController,
        transformer: ThreeDTransformer(),
        itemCount: _items.length,
        itemBuilder: (context, i) {
          return Stack(
            children: [
              StoryView(
                storyItems: _items[i],
                controller: controller,
                onComplete: () {
                  if (i == _items.length - 1) {
                    Navigator.of(context).pop();
                    return;
                  }
                  pageController.animateToPage(i + 1,
                      duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                },
                onVerticalSwipeComplete: (direction) {
                  if (direction == Direction.up) {
                    Navigator.of(context).pop();
                  }
                },
              ),
              Positioned(
                top: 54,
                right: 0,
                child: IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 15.0, color: Color.fromARGB(112, 0, 0, 0))],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  StoryItem customImageItem(String url) => StoryItem(
        ColoredBox(
          color: Colors.black,
          child: SafeArea(child: StoryImage.url(url, controller: controller, key: GlobalKey(debugLabel: url))),
        ),
        duration: const Duration(seconds: 10),
      );
}

class ThreeDTransformer extends PageTransformer {
  @override
  Widget transform(Widget child, TransformInfo info) {
    final double position = info.position!;
    final double height = info.height!;
    final double width = info.width!;
    double pivotX = 0.0;
    if (position < 0 && position >= -1) {
      pivotX = width;
    }
    return Transform(
      transform: Matrix4.identity()..rotate(vector.Vector3(0.0, 2.0, 0.0), position * 1.5),
      origin: Offset(pivotX, height / 2),
      child: child,
    );
  }
}

class _ImageItem {
  final String url;

  _ImageItem(this.url);
}

class _VideoItem {
  final List<String> urls;

  _VideoItem(this.urls);
}
