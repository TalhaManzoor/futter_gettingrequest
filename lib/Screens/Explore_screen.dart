import 'package:flutter/material.dart';
import 'package:flutter_gettingrequest/Services/Network_helper.dart';
import '';

class Explore_screen extends StatefulWidget {
  @override
  _Explore_screenState createState() => _Explore_screenState();
}

class _Explore_screenState extends State<Explore_screen> {
  var postdata;

  getting_Explore_data() async {
    Network_helper network_helper =
        Network_helper('https://jsonplaceholder.typicode.com/posts');
    postdata = await network_helper.getData();
    print(postdata);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getting_Explore_data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text('Explore',style: TextStyle(color: Colors.black),),centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black87,
            size: 20.0), onPressed: (){}),
        backgroundColor: Color(0xFFFFFFFF),
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.search,color: Colors.black87,size: 30.0,), onPressed: (){}),
            // child: Icon(Icons.search,color: Colors.black87,),
          ),
        ],

        elevation: 0.0,
      ),
      body: postdata != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    height: MediaQuery.of(context).size.height / 1.1,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Column(
                            children: [
                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.network(
                                          'https://reqres.in/img/faces/2-image.jpg',
                                          width: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Kristin jones',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 0.5),
                                            ),
                                            Text('20 minutes ago',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    color: Colors.grey[400]))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.menu),
                                      color: Colors.grey[400],
                                      onPressed: () {})
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                            Icons.chat_bubble_outline,
                                            color: Colors.grey[400],
                                          ),
                                          onPressed: () {}),
                                      Text(
                                        '254',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey[400]),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Interview: ${postdata[index]["title"]}'),
                                  )
                                ],
                              ),
                              Row(
                                children: [

                                  Column(
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.red[200],
                                          ),
                                          onPressed: () {}),
                                      Text(
                                        '3456',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey[400]),
                                      )
                                    ],

                                  ),

                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network("https://cdn.britannica.com/14/75514-120-05A119F2/K2-district-Karakoram-Range-portion-Gilgit-Baltistan-region.jpg",
                                        fit: BoxFit.fill,
                                      ),


                                    ),
                                  ),
                                  SizedBox(height: 10,),

                                ],
                              ),
                            ],
                          ),


                        );
                      },
                      itemCount: postdata.length,
                    ),
                  )
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
// title: Text(postdata[index]["title"]),
// subtitle: Text(postdata[index]["body"]),