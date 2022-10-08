import 'package:code_projects/test/add_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestProvider extends StatelessWidget {
  TestProvider({Key? key}) : super(key: key);
  //Provider.of<AddProvider>(context,listen:false).
  @override
  Widget build(BuildContext context) {
    return Consumer<AddProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${Provider.of<AddProvider>(context,listen: false).index}',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //D:\Android flutter\flutter\.pub-cache\hosted\pub.dartlang.org\\lib
                    Text(
                      '${context.watch<AddProvider>().index}',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${provider.index}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              context.read<AddProvider>().add();
            },
            child: Icon(Icons.add),
          ),
        );
      }
    );
  }
}
