import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient:LinearGradient(
              colors: [Colors.blueAccent,Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight
              )

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back", style: TextStyle(fontSize: 32.6, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(height: 10.0,),
              Text('Explore the new features', style: TextStyle(fontSize: 20.0, color: Colors.white70),),
              SizedBox(height: 20.0,),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You Tasks", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                      SizedBox(height: 10.0,),
                      ListTile(
                        leading: Icon(Icons.check_circle, color:Colors.green),
                        title: Text("Complete the Flutter project"),
                      ), ListTile(
                        leading: Icon(Icons.check_circle, color:Colors.orange),
                        title: Text(" Review pull requests"),
                      ), ListTile(
                        leading: Icon(Icons.check_circle, color:Colors.red),
                        title: Text(" Team meeting at 3 PM"),
                      )

                    ],
                  ),
                ),


              ),
              SizedBox(height: 20.0,),
              Card(
                  color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Project Deadline", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                          SizedBox(height: 10.0,),
                          Text("Flutter App - June 30, 2024", style: TextStyle(fontSize: 16.0, color: Colors.black87),),
                        ],
                      ),
                      CircularProgressIndicator(
                        value: 1,
                        backgroundColor: Colors.grey[200],
                      )

                    ],

                  ),
                
                ),

              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  backgroundColor: Colors.white,

                ),
                onPressed: (){}, 
                child: Text("View More", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)),

            ],

          ),

        ),

      ),
      

    );
  }
}