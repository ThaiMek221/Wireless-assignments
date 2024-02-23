import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(Uwu());
}

class Uwu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'UwU',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      //home: MyChatBot(title: 'Advisor Chatbot'),
      home: Home(),
    );
  }
}

// class MyChatBot extends StatelessWidget{
//   MyChatBot({Key? key, required this.title}):  super(key: key);
//   final String title; 

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(title, style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.pink,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         children: <Widget> [
//           Container(
//             height: 90,
//             width: 90,
//             child: Image.network('https://www.pinclipart.com/picdir/big/496-4960292_nerd-transparent-svg-nerd-emoji-twitter-clipart.png'),
//             padding: EdgeInsets.all(5)
//           ),
//           Center(child: Text('Pet Guru')),
//           Reply(word: 'Greeting! How can I help you today?'),
//           ChatBox(word: 'How do I take care of pet rock?'),
//           Reply(word: 'Great question! Here are some simple steps you can follow:\n 1.Keep your pet rock clean\n 2.Keep your pet rock dry\n 3.Give your pet rock a comfortable home\n 4.Play with your pet rock\n 5.Protect your pet rock'),
//           ChatBox(word: 'Thanks!')
//         ]
//       ),
//       bottomSheet: Container(
//         padding: EdgeInsets.all(2),
//         height: 50,
//         child:  Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               'type something ',
//               style:TextStyle(color: Colors.grey)
//             ),
//             ElevatedButton(
//               style: const ButtonStyle(
//                 backgroundColor: MaterialStatePropertyAll<Color>(Colors.pinkAccent),
//               ),
//               child: Text('Ask',style:TextStyle(color: Colors.white)),
//               onPressed:null,
//             )
//           ]
//         ) 
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
            
//             icon: Icon(Icons.question_answer),
//             label: 'Ask',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'About us',
//           )
//         ],
//         currentIndex: 1,
//         selectedItemColor: Colors.white,
//         backgroundColor: Colors.pink,
//       )
//     );
//   }
// }

class ChatBox extends StatelessWidget{
  ChatBox({Key? key, required this.word}) : super(key: key);

  final String word;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Card(child:Container(padding:EdgeInsets.all(10), child: Text(word)),color: Colors.white,),]
      ) 
    );
  }
}

class Reply extends StatelessWidget{
  Reply({Key? key, required this.word}) : super(key: key);

  final String word;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Card(child:Container(padding:EdgeInsets.all(10), child: Text(word,style: TextStyle(color: Colors.white),),),color: Colors.pinkAccent,)]
      ) 
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle textStyleH2 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 170, 89, 89));

  static const TextStyle textStyleH1 = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.normal,
      color: Color.fromARGB(255, 100, 50, 50));

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(textStyleH1: textStyleH1, textStyleH2: textStyleH2),
    ChatbotPage(username: 'Garry',),
    AboutUsPage(optionStyle: textStyleH2),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UWU', style: textStyleH2),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'Chatbot Trainer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark_rounded),
            label: 'About Us',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.textStyleH1,
    required this.textStyleH2,
  });

  final TextStyle textStyleH1;
  final TextStyle textStyleH2;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var showcasePetList = ['assets/images/hibernatingcat.jpg', 'assets/images/drunkcat.jpg'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'Adopt your dream pet online',
                style: widget.textStyleH1,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Cats')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Dogs')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Others'))
                ],
              ),
              SizedBox(
                height: 50,
              ),

              // reference:
              // https://pub.dev/packages/carousel_slider
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: showcasePetList.map((assetUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                          // width: MediaQuery.of(context).size.width,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage(assetUrl),
                          )
                          );
                    },
                  );
                }).toList(),
              ),

              SizedBox(
                height: 200,
              ),
              Column(
                children: [
                  Text(
                    'Looking for something more specific?',
                    style: widget.textStyleH2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchAnchor(builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                      );
                    }, suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Search')),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Column(
                children: [
                  Text(
                    'Pets you\'ve browsed before',
                    style: widget.textStyleH2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BookmarkedPet(
                              name: 'john',
                              assetUrl: 'assets/images/hibernatingcat.jpg'),
                          BookmarkedPet(
                              name: 'john', assetUrl: 'assets/images/drunkcat.jpg'),
                          BookmarkedPet(
                              name: 'john',
                              assetUrl: 'assets/images/hibernatingcat.jpg'),
                          BookmarkedPet(
                              name: 'john', assetUrl: 'assets/images/drunkcat.jpg'),
                          BookmarkedPet(
                              name: 'john',
                              assetUrl: 'assets/images/hibernatingcat.jpg'),
                          BookmarkedPet(
                              name: 'john', assetUrl: 'assets/images/drunkcat.jpg'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Text('Copyright 2024 @ UWU Co. Ltd. All Rights Reserved')
            ],
          ),
        ),
      ),
    );
  }
}

class BookmarkedPet extends StatelessWidget {
  final String assetUrl;
  final String name;
  const BookmarkedPet({
    super.key,
    required this.assetUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(assetUrl),
            radius: 60,
          ),
          Text(name)
        ],
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    super.key,
    required this.optionStyle,
  });

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'About Us Page: under construction',
      style: optionStyle,
    );
  }
}

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({
    super.key,
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget> [
          Container(
            height: 90,
            width: 90,
            child: Image.network('https://www.pinclipart.com/picdir/big/496-4960292_nerd-transparent-svg-nerd-emoji-twitter-clipart.png'),
            padding: EdgeInsets.all(5)
          ),
          Center(child: Text('Pet Guru')),
          Reply(word: 'Greeting $username! How can I help you today?'),
          ChatBox(word: 'How do I take care of pet rock?'),
          Reply(word: 'Great question! Here are some simple steps you can follow:\n 1.Keep your pet rock clean\n 2.Keep your pet rock dry\n 3.Give your pet rock a comfortable home\n 4.Play with your pet rock\n 5.Protect your pet rock'),
          ChatBox(word: 'Thanks!')
        ]
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(2),
        height: 50,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'type something ',
              style:TextStyle(color: Colors.grey)
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pinkAccent),
              ),
              child: Text('Ask',style:TextStyle(color: Colors.white)),
              onPressed:null,
            )
          ]
        ) 
      ),
    );
  }
}