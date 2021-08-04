import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/layout/home_layout.dart';
import 'package:todo_app/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeLayout(),
    );
  }
}

// class Counter extends StatelessWidget {
//   const Counter({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => CounterCubit(),
//       child: BlocConsumer<CounterCubit, CounterStates>(
//           listener: (context, CounterStates states) {},
//           builder: (context, CounterStates states) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: Text('Counter App'),
//                 centerTitle: true,
//               ),
//               body: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         CounterCubit.get(context).Minus();
//                       },
//                       child: Text('Minus'),
//                     ),
//                     Text('${CounterCubit.get(context).counter}'),
//                     TextButton(
//                         onPressed: () {
//                           CounterCubit.get(context).Plus();
//                         },
//                         child: Text('Plus')),
//                   ],
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
