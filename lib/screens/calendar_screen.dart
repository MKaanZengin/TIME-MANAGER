import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = context.watch<TaskProvider>().tasks;
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: ListView(
        children: tasks
            .map((task) => ListTile(
                  title: Text(task.title),
                  subtitle: Text('Due: ${task.dueDate.toLocal().toString().split(' ')[0]}'),
                ))
            .toList(),
      ),
    );
  }
}
