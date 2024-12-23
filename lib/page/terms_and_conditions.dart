import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
   TermsAndConditionsPage({super.key});

  // List of terms and conditions sections
  final List<Map<String, dynamic>> termsSections = [
    {
      'title': 'Terms and Conditions',
      'content':
          'The Zerbee mobile application (“Platform”) is made available to you by its developers and service providers (“we”, “us”, or “our”). '
              'The terms “Zerbee”, “Platform”, “we”, “us”, and “our” refer to the owners and operators of the Zerbee application. The terms “you”, “your”, and “user” refer to any individual accessing or using the Platform.\n\n'
              'By accessing or using the Zerbee Platform, which facilitates booking appointments at salons, beauty parlors, and other grooming service providers, you agree to the following Terms and Conditions:',
    },
    {
      'title': 'Acceptance of Terms',
      'content': '• By registering for or using the Platform, you agree to be bound by these Terms and Conditions. '
          'If you do not agree to any part of these Terms, you may not access or use the Platform.',
    },
    {
      'title': 'Account Registration and Security',
      'content': '• You must provide accurate, current, and complete information during registration.\n'
          '• You are responsible for maintaining the confidentiality of your account credentials and are liable for all activities conducted through your account. '
          'Notify us immediately if you suspect unauthorized access or use of your account.',
    },
    {
      'title': 'Permissible Use',
      'content': '• You may use the Platform only for lawful purposes and as intended to facilitate service bookings.\n'
          '• You agree not to:\n'
          '  • Interfere with the operation of the Platform.\n'
          '  • Use the Platform for any fraudulent, abusive, or illegal purposes.\n\n'
          '• We reserve the right to suspend or terminate your access if misuse is detected.',
    },
    {
      'title': 'Service Fees and Payments',
      'content': '• The Platform may require payment for certain bookings or services. Any fees will be clearly communicated during the booking process.\n'
          '• Payments must be made in accordance with the terms specified at the time of booking. We are not responsible for issues arising from payment processing errors or declined transactions.',
    },
    {
      'title': 'Booking Management',
      'content': '• The Platform enables users to book appointments with service providers. The accuracy, reliability, and quality of the services booked are the responsibility of the respective service providers.\n'
          '• We do not guarantee availability or performance of services by third-party providers.',
    },
    {
      'title': 'Cancellation Policy',
      'content': '• User Delays: If you are delayed and cannot attend the appointment on time, it is your responsibility. '
          'The platform is not liable for such cancellations.\n'
          '• Provider Responsibility: Service providers have the discretion to accommodate delayed users based on their availability, but this is not guaranteed.\n'
          '• No Platform Liability: Zerbee is not responsible for cancellations or rescheduling caused by user delays.',
    },
    {
      'title': 'Intellectual Property Rights',
      'content': '• All content on the Platform, including logos, text, graphics, and software, is owned by us or our licensors and is protected by applicable intellectual property laws.\n'
          '• You may not reproduce, modify, or distribute any content from the Platform without our prior written consent.',
    },
    {
      'title': 'Confidentiality',
      'content': '• You agree to keep any non-public information accessed through the Platform confidential and not disclose it for unauthorized purposes.',
    },
    {
      'title': 'Privacy and Data Protection',
      'content': '• Personal data collected through the Platform will be handled in accordance with our Privacy Policy.\n'
          '• You are responsible for ensuring that your use of the Platform complies with applicable data protection laws.',
    },
    {
      'title': 'Prohibited Linking',
      'content': '• You may not create a link to our Platform from another website or document without prior written consent.',
    },
    {
      'title': 'Disclaimer of Warranties',
      'content': '• The Platform is provided on an “as-is” basis. We do not guarantee uninterrupted, error-free, or secure access to the Platform.\n'
          '• To the fullest extent permitted by law, we disclaim liability for indirect, incidental, or consequential damages arising from your use of the Platform.',
    },
    {
      'title': 'Indemnification',
      'content': '• You agree to indemnify and hold harmless the Platform’s owners, developers, affiliates, and their representatives from any claims, liabilities, damages, or expenses resulting from your use of the Platform or breach of these Terms.',
    },
    {
      'title': 'Modifications to Terms',
      'content': '• We reserve the right to modify these Terms and Conditions at any time. Any changes will be effective immediately upon posting on the Platform. '
          'Continued use of the Platform after such changes constitutes your acceptance of the updated Terms.',
    },
    {
      'title':'Contact Information',
      'content': 'If you have any questions or concerns about these Terms, please contact us at:\n\n'
          'Zerbee Support\nEmail: [zerbeepvt@gmail.com]',
    },
  ];

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms and Conditions')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: termsSections
                .map((section) =>
                    _buildSection(section['title'] as String, section['content'] as String))
                .toList(),
          ),
        ),
      ),
    );
  }
}
