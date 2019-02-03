import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Mc());

class Mc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: McApp(),
    );
  }
}

class McApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<McApp> {
  void playSoundMC() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('yash_audio.ogg');
    });
  }

  void playSoundBB() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Yash_BB.ogg');
    });
  }

  void playSoundAN() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Ajay_audio.mp4');
    });
  }

  void playSoundNJ() {
    setState(() {
      AudioCache player = new AudioCache();
      player.play('Anvay_ninda.ogg');
    });
  }

  void changeScreen() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MC App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("An empty Drawer"),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("Hello List"),
              onTap: changeScreen,
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        children: <Widget>[
          RaisedButton(
            child: Text("Press me :)"),
            color: Colors.lightBlue,
            highlightElevation: 10,
            onPressed: playSoundMC,
          ),
          RaisedButton(
            child: Text("Press me too :)"),
            onPressed: playSoundBB,
          ),
          RaisedButton(
            child: Text("Njay Aath"),
            onPressed: playSoundAN,
          ),
          RaisedButton(
            child: Text("Kadi Ninda"),
            onPressed: playSoundNJ,
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multi Page Application Page-2"),
      ),
      body: Center(
        child: Text("Another Page...!!!!!!"),
      ),
    );
  }
}
