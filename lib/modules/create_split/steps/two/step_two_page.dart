import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/person_tile.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Com quem",
          subtitle: "\nvocê quer dividir?",
        ),
        StepInputTextWidget(
          hintText: "Nome da pessoa",
          onChange: (value) {},
        ),
        SizedBox(
          height: 35,
        ),
        PersonTileWidget(name: "Gabriel")
      ],
    );
  }
}
