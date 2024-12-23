import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeleteRequestPopup extends StatelessWidget {
  final String name;
  final String email;
  final String reason;
  final String frequency;
  final String feedback;
   const DeleteRequestPopup({super.key, required this.name, required this.email, required this.reason, required this.frequency, required this.feedback});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Delete Account Request',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thank you for sharing your feedback with Zerbee. Here's what will happen next:",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            "1. Our team will contact you by email within 24 hours.\n"
            "2. Once we receive your confirmation, your account and all associated data will be permanently deleted.",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 16),
          Text(
            "If you have any questions or concerns, feel free to reach out to us.",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the popup
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.red),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            // Handle delete account request submission
            final FirebaseFirestore _firestore = FirebaseFirestore.instance;
          await  _firestore.collection('delete_requests').add({
              'name': name,
              'email': email,
              'reason': reason,
              'frequency': frequency,
              'feedback': feedback,
            });


            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Your request has been submitted."),
              ),
            );
          },
          child: Text('Submit Request'),
        ),
      ],
    );
  }
}