import 'package:flutter/material.dart';


class ContentPrac extends StatelessWidget {
  //const ContentPrac({super.key});
  final animation = AlwaysStoppedAnimation(0.65); // For animated text example

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header Part
      appBar: AppBar(
        title:Text('Class Action Button '),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Text
            Text('1. Basic Text Widget'),
            SizedBox(height: 10),
            Text('Hello, Flutter!'),
            Divider(height: 30),

            // Styled Text
            Text('2. Styled Text'),
            SizedBox(height: 10),
            Text(
              'Styled Text Example',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
                backgroundColor: Colors.yellow,
                shadows: [
                  Shadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            Divider(height: 30),

            // Text Alignment
            Text('3. Text Alignment'),
            SizedBox(height: 10),
            Text(
              'This text is center aligned',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Divider(height: 30),

            // Text Overflow
            Text('4. Text Overflow Handling'),
            SizedBox(height: 10),
            Container(
              width: 150,
              child: Text(
                'This is a very long text that demonstrates overflow handling',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Divider(height: 30),

            // Rich Text
            Text('5. Rich Text (Multiple Styles)'),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: 'Hello ',
                style: TextStyle(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(text: ' and '),
                  TextSpan(
                    text: 'colored',
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' text!'),
                ],
              ),
            ),
            Divider(height: 30),

            // Theme Text
            Text('6. Text Using Theme'),
            SizedBox(height: 10),
            Text(
              'This text uses the theme style',
              //style: Theme.of(context).textTheme.headline6,
            ),
            Divider(height: 30),

            // Selectable Text
            Text('7. Selectable Text'),
            SizedBox(height: 10),
            SelectableText(
              'This text can be selected and copied',
              style: TextStyle(fontSize: 18),
            ),
            Divider(height: 30),

            // Gradient Text
            Text('8. Gradient Text'),
            SizedBox(height: 10),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.blue, Colors.purple],
              ).createShader(bounds),
              child: Text(
                'Gradient Text Effect',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(height: 30),

            // Animated Text
            Text('9. Animated Text'),
            SizedBox(height: 10),
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: animation.value * 40,
                color: Color.lerp(Colors.red, Colors.blue, animation.value),
                fontWeight: FontWeight.bold,
              ),
              child: Text('Animated Text Example'),
            ),
          ],
        ),
      ),
    );
  }
}