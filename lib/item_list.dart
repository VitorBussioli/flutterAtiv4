import 'package:flutter/material.dart';
import 'package:flutter_app/item_model.dart';

class ItemListPage extends StatefulWidget {
  final ItemModel? newItem; // Permite passar um novo item da tela de formulário

  const ItemListPage({super.key, this.newItem});

  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  List<ItemModel> _items = [];

  @override
  void initState() {
    super.initState();
    if (widget.newItem != null) {
      _items.add(widget.newItem!);
    }
  }

  // ... (implementar funções para editar e remover itens)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Itens')),
      body: ListView.builder(
          // ...
          ),
    );
  }
}
