import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: Theme.of(context).textTheme.displaySmall),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get in Touch',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'We are here to help you. Reach out to us for any inquiries or emergencies.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.onSurfaceVariant),
              ),
              const SizedBox(height: 32),
              _buildContactCard(
                context,
                icon: Icons.location_on,
                title: 'Address',
                content: '123 Health Ave, Khayelitsha,\nCape Town, 7784',
              ),
              const SizedBox(height: 16),
              _buildContactCard(
                context,
                icon: Icons.phone,
                title: 'Phone',
                content: '+27 (0) 21 555 1234\nEmergency: +27 (0) 82 555 9999',
              ),
              const SizedBox(height: 16),
              _buildContactCard(
                context,
                icon: Icons.email,
                title: 'Email',
                content: 'info@drpsmawisa.co.za',
              ),
              const SizedBox(height: 32),
              Text(
                'Operating Hours',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 16),
              _buildHoursCard(context),
              const SizedBox(height: 100), // Padding for bottom nav
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard(BuildContext context, {required IconData icon, required String title, required String content}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 20)),
                const SizedBox(height: 8),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHoursCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        children: [
          _buildHourRow(context, 'Monday - Friday', '08:00 - 17:00'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(color: Colors.white10),
          ),
          _buildHourRow(context, 'Saturday', '09:00 - 13:00'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(color: Colors.white10),
          ),
          _buildHourRow(context, 'Sunday & Public Holidays', 'Closed', isClosed: true),
        ],
      ),
    );
  }

  Widget _buildHourRow(BuildContext context, String day, String hours, {bool isClosed = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurface),
        ),
        Text(
          hours,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: isClosed ? AppColors.error : AppColors.primary,
            fontWeight: isClosed ? FontWeight.w400 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
