import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key? key}) : super(key: key);

  @override
  State<MyFormValidation> createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  FocusNode nameFocusNode = FocusNode();
  final nameController = TextEditingController();

  @override
  void initState() {
    nameFocusNode;
    super.initState();
  }

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return '공백은 허용되지 않습니다';
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Scaffold.of(_formKey.currentContext!)
                          .showSnackBar(const SnackBar(content: Text('처리중')));
                    }
                  },
                  child: const Text('완료'),
                ),
              ),
              TextField(
                controller: nameController,
                onChanged: (text) {
                  if (kDebugMode) {
                    print(text);
                  }
                },
                focusNode: nameFocusNode,
                decoration: const InputDecoration(
                    hintText: '이름을 입력해 주세요',
                    border: InputBorder.none,
                    labelText: '이름'),
                autofocus: true,
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(nameFocusNode);
                },
                child: const Text('포커스'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(nameController.text);
                  }
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(nameController.text),
                      );
                    },
                  );
                },
                child: const Text('TextField 값 확인'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
