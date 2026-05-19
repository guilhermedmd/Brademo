import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final boxTheme = await Hive.openBox("theme");
    
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  late Box boxTheme;
  bool darkTheme = false;
  @override
  void initState(){
    super.initState();
    boxTheme = Hive.box("theme");
    darkTheme = boxTheme.get("dark");
    
  }
  void changeTheme(){
   setState(() {
       setState(() {

    darkTheme = !darkTheme;
  });

  boxTheme.put("dark", darkTheme);

  print(darkTheme);
   });
  }
  
  Widget build(BuildContext context){
    
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      
       darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
        backgroundColor: Colors.grey,
        ),
      ),
      themeMode: darkTheme ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
      body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){changeTheme();}, child: Text("Modo Foco")),
                   Text("Fusce mattis purus at varius semper. Ut at ipsum eu dui porta dapibus a et neque. In vulputate sem vitae ligula vehicula, sit amet ornare lectus tempor. Mauris rutrum mi sollicitudin, egestas neque id, hendrerit nunc. Pellentesque pellentesque, libero eget elementum consequat, nulla mi egestas nisl, at mollis neque orci et tellus. Donec dictum vel nulla nec porttitor. Nulla facilisi. Curabitur ut feugiat tortor, id tincidunt neque.")
              ],
            )
          )
      )
    );
  }
}

