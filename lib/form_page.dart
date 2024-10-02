import 'package:flutter/material.dart';
import 'package:flutter_app/item_list_page.dart';
import 'package:flutter_app/item_model.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage>   
 {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController   
 _titleController = TextEditingController();

  void _submitForm() {
    // Valida o formulário
    if (_formKey.currentState!.validate()) {
      // Cria um novo item
      ItemModel newItem = ItemModel(_titleController.text);

      // Passa o novo item para a tela de lista
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemListPage(newItem: newItem),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulário')),
      body: Form(
        key: _formKey,
        child:   
 Column(
          children: [
            // Campos do formulário
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Adicionar Item'),
            ),
          ],
        ),
      ),
    );
  }
}