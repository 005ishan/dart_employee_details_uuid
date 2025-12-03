import 'package:flutter/material.dart';
import 'package:flutter_for_college/models/student_model.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key, required this.lstStudents});

  final List<StudentModel> lstStudents;

  @override
  Widget build(BuildContext context) {
    return lstStudents.isNotEmpty
        ? ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lstStudents.length,
            itemBuilder: (context, index) {
              final student = lstStudents[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(student.fname[0].toUpperCase()),
                  ),
                  title: Text('${student.fname} ${student.lname}'),
                  subtitle: Text(student.city),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      IconButton(
                        onPressed: () {
                          // setState(() {
                          //   lstStudents.removeAt(index);
                          // });
                        },
                        icon: const Icon(Icons.delete, color: Colors.red),
                      ),
                      IconButton(
                        onPressed: () {
                          //
                        },
                        icon: const Icon(Icons.edit, color: Color.fromARGB(255, 60, 54, 244)),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        : const Center(
            child: Text(
              'No students available.',
              style: TextStyle(fontSize: 18),
            ),
          );
  }
}