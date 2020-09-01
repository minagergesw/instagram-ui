import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';
class Feed extends StatelessWidget {
    List<Story> stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=women-s-white-and-black-button-up-collared-shirt-774909.jpg&fm=jpg",
        "Emma"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=adult-beard-boy-casual-220453.jpg&fm=jpg",
        "Noah"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?cs=srgb&dl=woman-wearing-round-black-framed-eyeglasses-1845534.jpg&fm=jpg",
        "Isabella"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?cs=srgb&dl=man-in-red-jacket-1681010.jpg&fm=jpg",
        "Oliver"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=adult-attractive-beautiful-beauty-415829.jpg&fm=jpg",
        "Sophia"),
    Story(
        "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Amelia"),
    Story(
        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=portrait-photo-of-smiling-man-with-his-arms-crossed-standing-2379004.jpg&fm=jpg",
        "Benjamin"),

    // "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?cs=srgb&dl=closeup-photo-of-smiling-woman-wearing-blue-denim-jacket-1130626.jpg&fm=jpg",
    // "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?cs=srgb&dl=woman-holding-disposable-cup-712513.jpg&fm=jpg",
    // "https://images.pexels.com/photos/1707828/pexels-photo-1707828.jpeg?cs=srgb&dl=woman-holding-her-lips-during-night-time-1707828.jpg&fm=jpg",
    // "https://images.pexels.com/photos/1102341/pexels-photo-1102341.jpeg?cs=srgb&dl=woman-smiling-1102341.jpg&fm=jpg",
    // "https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?cs=srgb&dl=woman-wearing-yellow-button-up-long-sleeved-dress-shirt-774095.jpg&fm=jpg"
  ];

  List<Post> posts = [
    Post(
        userImage:
            'https://bidunart.com/wp-content/uploads/2019/12/Portrait197a-1280x640.jpg',
        userName: 'Emma',
        postImage: 'https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg',
        caption: 'my house turned into horror house'),
    Post(
        userImage:
            'https://www.onportraits.com/wp-content/uploads/2018/04/girl-portrait-lead-300-300.jpg',
        userName: 'Isabella',
        postImage:
            'https://i.insider.com/5e2ef209ab49fd373f6ba714?width=1136&format=jpeg',
        caption: 'Lovely Cat'),
    Post(
        userImage:
            'https://webneel.com/daily/sites/default/files/images/daily/05-2018/portrait-photography-by-dennis-drozhzhin.jpg',
        userName: 'Sophia',
        postImage:
            'https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/dogs_1280p_0.jpg?itok=cnRk0HYq',
        caption: 'Dogs play'),
    Post(
        userImage:
            'https://i.pinimg.com/originals/72/b9/1f/72b91fb5f98aae05a6e3f937dddfc062.jpg',
        userName: 'Amelia',
        postImage:
            'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202004/Screenshot_2020-04-11_at_11.37-770x433.png?gYtcqCzCx9lWsGWYPLMBFV4HxSKhvNa1',
        caption: 'New Phone'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            text: 'Stories',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Show Stories');
                              })
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            text: 'Watch All',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Watch All');
                              })
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: stories.map((story) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              color: Color(0xFF8e44ad),
                              width: 3,
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image(
                                image: NetworkImage(story.link),
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(story.name),
                      ],
                    );
                  }).toList(),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image:
                                          NetworkImage(posts[index].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(posts[index].userName),
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                        FadeInImage(
                          image: NetworkImage(posts[index].postImage),
                          width: MediaQuery.of(context).size.width,
                          placeholder: AssetImage("assets/placeholder.png"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                  
                                  },
                                  icon:Icon(FontAwesome.heart_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.comment_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.send_o),
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.bookmark_o),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Liked By ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: 'Scarlett,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Jackson,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Grayson,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: ' and',
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                              TextSpan(
                                text: ' 1246 others',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                        )

                        // caprion
                        ,
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(children: [
                              TextSpan(
                                text: "${posts[index].userName}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " ${posts[index].caption}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),
                        ), //post Date
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'February 10',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      );
    
  }
}