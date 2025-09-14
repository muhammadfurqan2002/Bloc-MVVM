import 'package:bloc_practice/bloc/switch_bloc/switch_bloc.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_bloc.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_event.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switchers"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications", style: TextStyle(fontSize: 26),),
                BlocBuilder<SwitchBloc, SwitchState>(
                  builder: (context, state) {
                    return Switch(value: state.switcher, onChanged: (val) {
                      if (val) {
                        context.read<SwitchBloc>().add(OnSwitch(true));
                      } else {
                        context.read<SwitchBloc>().add(OffSwitch(false));
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 20,),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.red.withOpacity(state.slider),
                );
              },
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Slider(value: state.slider, onChanged: (val) {
                  context.read<SwitchBloc>().add(SliderEvent(val));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
