import 'package:animation_test/Video.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

List<String> videoThumbnails = [
  'assets/Images/Homepage/video1.png',
  'assets/Images/Homepage/video2.png',
  'assets/Images/Homepage/video3.png',
  'assets/Images/Homepage/video4.png',
  'assets/Images/Homepage/video5.png',
];

List<int> videoNumber = [0, 1, 2, 3, 4];
List<int> blogNumber = [0, 1, 2, 3];
List<String> newsThumbnails = [
  'assets/Images/Homepage/news 1.png',
  'assets/Images/Homepage/news 2.png',
  'assets/Images/Homepage/news 3.png',
  'assets/Images/Homepage/news 4.png',
];
List<String> sponserThumbnails = ['assets/Images/Homepage/sponser1.png'];

List<String> blogThumbnails = [
  'assets/Images/Homepage/Blog1.png',
  'assets/Images/Homepage/Blog2.png',
  'assets/Images/Homepage/Blog3.png',
  'assets/Images/Homepage/Blog4.png',
];

class _HomepageState extends State<Homepage> {
  // CollectionReference user =
  //     FirebaseFirestore.instance.collection('VideoThumbnails');
  // void inistate() {
  //   user.doc('video1').get().then((DocumentSnapshot snapshot) {
  //     if (snapshot.exists) {
  //       thumbnails = snapshot.data()['thumbnails'];
  //     }
  //   });
  //   print(thumbnails);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text('news and announcements'),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newsThumbnails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        color: Colors.transparent,
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset(
                          newsThumbnails[index],
                          height: 90,
                        ),
                        shape: CircleBorder(),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Videos'),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: videoThumbnails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 5),
                      index != 4
                          ? FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              color: Colors.transparent,
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                print(index);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Videoplayer()));
                              },
                              child: Image.asset(
                                videoThumbnails[index],
                                height: MediaQuery.of(context).size.height / 3,
                              ),
                            )
                          : FlatButton(
                              textColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoSlider()));
                              },
                              child: Text('See more'),
                            ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text('Sponsors'),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sponserThumbnails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        color: Colors.transparent,
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset(
                          sponserThumbnails[index],
                          height: MediaQuery.of(context).size.height / 8,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Blogs'),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: blogThumbnails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(width: 20),
                      index != 3
                          ? FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              color: Colors.transparent,
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {},
                              child: Image.asset(
                                blogThumbnails[index],
                                height: MediaQuery.of(context).size.height / 8,
                              ),
                            )
                          : FlatButton(
                              textColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlogSlider()));
                              },
                              child: Text('See more'),
                            ),
                      SizedBox(
                        width: 0,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoSlider extends StatefulWidget {
  @override
  _VideoSliderState createState() => _VideoSliderState();
}

class _VideoSliderState extends State<VideoSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: videoThumbnails.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(width: 5),
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {},
                  child: Image.asset(
                    videoThumbnails[index],
                    height: MediaQuery.of(context).size.width - 100,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class BlogSlider extends StatefulWidget {
  @override
  _BlogSliderState createState() => _BlogSliderState();
}

class _BlogSliderState extends State<BlogSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: blogThumbnails.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(width: 5),
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {},
                  child: Image.asset(
                    blogThumbnails[index],
                    height: MediaQuery.of(context).size.width - 100,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
