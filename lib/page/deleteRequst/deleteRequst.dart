// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:privacy_policy_web/page/deleteRequst/widgets/deletePopup.dart';

class DeleteRequestPage extends StatefulWidget {
  const DeleteRequestPage({super.key});

  @override
  _DeleteRequestPageState createState() => _DeleteRequestPageState();
}

class _DeleteRequestPageState extends State<DeleteRequestPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedReason;
  String? _selectedFrequency;
  bool _isConfirmed = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Account'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We’re sorry to see you go! Please fill out this form to help us improve.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your name' : null,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Reason for leaving',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    'Privacy concerns',
                    'App features missing',
                    'Switching to a competitor',
                    'No longer needed',
                    'Other',
                  ]
                      .map((reason) => DropdownMenuItem<String>(
                            value: reason,
                            child: Text(reason),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedReason = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a reason' : null,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _feedbackController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Additional Feedback',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'How often did you use Zerbee?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  children: ['Daily', 'Weekly', 'Monthly', 'Rarely']
                      .map((frequency) => RadioListTile<String>(
                            title: Text(frequency),
                            value: frequency,
                            groupValue: _selectedFrequency,
                            onChanged: (value) {
                              setState(() {
                                _selectedFrequency = value;
                              });
                            },
                          ))
                      .toList(),
                ),
                SizedBox(height: 16),
                CheckboxListTile(
                  title: Text(
                      'I understand that my account and all associated data will be permanently deleted.'),
                  value: _isConfirmed,
                  onChanged: (value) {
                    setState(() {
                      _isConfirmed = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && _isConfirmed) {

                     showDialog(
                     context: context,
                     builder: (context) => DeleteRequestPopup(
                      name: _nameController.text,
                      email: _emailController.text,
                      feedback: _feedbackController.text,
                      frequency: _selectedFrequency!,
                      reason: _selectedReason!,
                     ),
                    );
                    
                    } else if (!_isConfirmed) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Please confirm that you understand the account deletion.'),
                        ),
                      );
                    }
                  },
                  child: Text('Submit Request'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
