import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color pencet = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mission 1")),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.blue[200], Colors.white])),
            ),
            Column(
              children: <Widget>[
                Flexible(
                    flex: 2,
                    child: Container(
                      child: Image.network(
                          "https://media.iceportal.com/87010/photos/61055088_L.jpg"),
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(image: NetworkImage("https://jenishotel.info/wp-content/uploads/2016/01/hotel-bintang-5-Jogja.jpg"),
                                fit: BoxFit.fill
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(image: NetworkImage("https://jenishotel.info/wp-content/uploads/2016/03/hotel-murah-dan-bagus-di-lombok.jpg"),
                                fit: BoxFit.fill
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(image: NetworkImage("https://jenishotel.info/wp-content/uploads/2016/01/hotel-bintang-2-di-kuta.jpg"),
                                fit: BoxFit.fill
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(image: NetworkImage("https://jenishotel.info/wp-content/uploads/2016/02/hotel-bintang-5-di-kuta.jpg"),
                                fit: BoxFit.fill
                                ),
                              ),
                            ))
                      ],
                    )),
                Flexible(
                  flex: 4,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Text("Welcome To Golden Tulip Holland Batu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      Flexible(
                        flex: 9,
                        child: Container(
                          margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                          child: ListView(
                            children: [
                              Text(
                                "Our resort, with its 260 rooms & villas, is located in a greenery overview with fresh cool mountain air. All our rooms & villas provide a private balcony where you can choose a city or a mountain view.",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "A frequent host to Batu’s most elegant events, the Golden Tulip Holland Resort effortlessly combines all essential elements to bring even the most magnificent event to life.",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide.",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Food and beverage is an important part of life. This is why we want each and every meal to be a culinary experience regardless if you are travelling or just popping in at a nearby hotel for breakfast, brunch, lunch or dinner! Hanging in the bar should be fun and easy, or simply relaxing. Enjoy your dining experiences at Golden Tulip Holland Resort Batu.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey[100],
                  onPressed: () {
                    setState(() {
                      if (pencet == Colors.grey) {
                        pencet = Colors.red;
                      } else if (pencet == Colors.red) {
                        pencet = Colors.grey;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: pencet,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
