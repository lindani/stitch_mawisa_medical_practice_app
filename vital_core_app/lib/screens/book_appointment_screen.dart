import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme/app_colors.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              _buildHeaderImage(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    _buildDirectActionBanner(context),
                    const SizedBox(height: 24),
                    _buildAppointmentFormCard(context),
                    const SizedBox(height: 100), // Padding for bottom nav
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.surfaceContainer,
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCwHgrv8-RgSdu6pbT520aNU73jBQs9LmK-kKFKwoisxYcDhRfxhrxm8MxF-gRZi4Luy9ZdWTuDBzXoUmxvG3ROGUYjF60uL4iLyQxvyouGdJ2-fEsU-mcUhAEweGKnSXMSKwAsw8Tl_J7tMsff3Rub7fJ6zuQCBJoMoepNwqALYp4Jck8pnxx4rA2x4LLmj4N4jWuQr0R4GcSM-UW857tEcxW8ALdQdIJ2734fRvSNAqFSIl-2ts-ZMueKgi9Jt2mwmGl5xwni9hw',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'MedCore',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.grey),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildHeaderImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: CachedNetworkImage(
              imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAt1vT23OhUD6gPTBdofn7qQqhtyOu3GY0x0Gidr75DA0EEFIIUdKlGvGav4gk8MnPdGRCumN8xU4lHmAvgivwxntOMmG3SEhhATHVCO46-9XU0r3R1TETHlvGZFPYZxw_gR4VZ0lzUTpsRqsE_WHu_FQ__IZjGWhbHt2HWysStTY31I7fty8LfHZg6zVYWf6Lalv40PG1BjD3nRMUhlCwy0IXfIVKIgBduoOAQ2lmQmk4D9EROpi6BbOxEqdVPl3G9dj3LTVYKk0Q',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.background,
                  AppColors.background.withOpacity(0.4),
                  Colors.transparent,
                ],
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Visit',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColors.onBackground),
                ),
                const SizedBox(height: 4),
                Text(
                  'Secure your appointment quickly.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectActionBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.secondary.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.call, color: AppColors.secondary),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Need help?', style: Theme.of(context).textTheme.displaySmall),
                  Text('Call us directly.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
                ],
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondary,
              foregroundColor: AppColors.onSecondary,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            icon: const Icon(Icons.phone_in_talk, size: 18),
            label: const Text('Call Now', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildAppointmentFormCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 24,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInputGroup(context, 'Full Name', 'Jane Doe', TextInputType.name),
          const SizedBox(height: 16),
          _buildInputGroup(context, 'Phone Number', '(555) 123-4567', TextInputType.phone),
          const SizedBox(height: 16),
          _buildInputGroup(context, 'Email Address', 'jane@example.com', TextInputType.emailAddress),
          const SizedBox(height: 16),
          const Divider(color: Colors.white10),
          const SizedBox(height: 16),
          _buildInputGroup(context, 'Preferred Date', 'Select Date', TextInputType.datetime, suffixIcon: Icons.calendar_today),
          const SizedBox(height: 16),
          _buildDropdownGroup(context, 'Preferred Time', 'Select Time Slot'),
          const SizedBox(height: 16),
          _buildInputGroup(context, 'Reason for Visit', 'Briefly describe your symptoms...', TextInputType.multiline, maxLines: 3),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.onPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 8,
                shadowColor: AppColors.primary.withOpacity(0.3),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Book Now', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputGroup(BuildContext context, String label, String hint, TextInputType keyboardType, {IconData? suffixIcon, int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.onSurfaceVariant),
        ),
        const SizedBox(height: 4),
        TextField(
          keyboardType: keyboardType,
          maxLines: maxLines,
          style: const TextStyle(color: AppColors.onBackground),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.onSurfaceVariant.withOpacity(0.5)),
            filled: true,
            fillColor: AppColors.surfaceDim,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.outlineVariant),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.outlineVariant),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primary),
            ),
            suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: AppColors.onSurfaceVariant) : null,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownGroup(BuildContext context, String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.onSurfaceVariant),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.surfaceDim,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.outlineVariant),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(hint, style: TextStyle(color: AppColors.onSurfaceVariant.withOpacity(0.5))),
              dropdownColor: AppColors.surfaceContainerHigh,
              icon: const Icon(Icons.arrow_drop_down, color: AppColors.onSurfaceVariant),
              items: const [],
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
