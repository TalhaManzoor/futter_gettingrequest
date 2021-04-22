import 'package:flutter/material.dart';
import 'package:flutter_gettingrequest/Services/Network_helper.dart';
import 'package:flutter_gettingrequest/Widgets/Rowtext.dart';
import 'package:flutter_gettingrequest/Widgets/gridview.dart';
import 'package:flutter_gettingrequest/constants/constant.dart';

class Profile_screen extends StatefulWidget {
  @override
  _Profile_screenState createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  List image = [
    {"url": 'https://reqres.in/img/faces/2-image.jpg'},
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
    {
      "url":
          'https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg'
    },
  ];

  var profiledata;
  String Firstname;
  String LastName;
  String imgurl;

  getting_profile_data() async {
    Network_helper network_helper =
        Network_helper('https://reqres.in/api/users/2');
    profiledata = await network_helper.getData();
    Firstname = profiledata['data']['first_name'];
    LastName = profiledata['data']['last_name'];
    imgurl = profiledata['data']['avatar'];
    print(Firstname);
    print(LastName);
    print(imgurl);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getting_profile_data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined,
                color: Colors.black87, size: 20.0),
            onPressed: () {}),
        backgroundColor: Color(0xFFFFFFFF),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(Icons.menu, color: Colors.black87,size: 30.0,),
                  onPressed: () {})),
        ],
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: CircleAvatar(
                      maxRadius: 30.0,
                      backgroundImage: NetworkImage('$imgurl'),
                    ),
                    elevation: 18.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '${Firstname} ${LastName}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Must go faster.Must go faster...go,go,go,go,go! \n I was part of something speacial.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.0,
                    wordSpacing: 1.0),
                textAlign: TextAlign.center,
              ),
              dividerwithpadding(),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rowtext(
                    uppertext: '338',
                    lowertext: 'Post',
                  ),
                  Rowtext(
                    uppertext: '298',
                    lowertext: 'Following',
                  ),
                  Rowtext(
                    uppertext: '321K',
                    lowertext: 'Followers',
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              dividerwithpadding(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    color: Color(0xFF6979f8),
                    padding:
                        EdgeInsets.symmetric(horizontal: 55.0, vertical: 20.0),
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    onPressed: () async {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Message',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300)),
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: BorderSide(color: Color(0xFF6979f8), width: 1)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Photos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.list,
                            color: Colors.grey[500],
                            size: 20.0,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.grid_view,
                            color: Colors.grey[500],
                            size: 20.0,
                          ),
                          onPressed: () {}),
                    ],
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.3,
                padding: EdgeInsets.all(5.0),
                child: gridview(image: image),
              )
            ],
          ),
        ),
      ),
    );
  }


}




