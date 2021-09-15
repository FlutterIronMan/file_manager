import 'package:file_manager/models/file_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FileModel> files = [
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
    FileModel(name: 'name', size: '15 МБ', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('File Manager'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            SizedBox(
              height: 250,
            ),
            Text('Local files'),
            SizedBox(
              height: 10,
            ),
            Text('Remote files'),
            SizedBox(
              height: 10,
            ),
            Text('FTP'),
            SizedBox(
              height: 10,
            ),
            Text('SSH'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: files.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(
                    Icons.description,
                    color: Colors.grey,
                  ),
                  title: Text(
                    files[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(files[index].size),
                  trailing: const Icon(
                    Icons.info,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
