import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme/app_colors.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                const SizedBox(height: 32),
                _buildHeroSection(context),
                const SizedBox(height: 32),
                _buildConsultationsCard(context),
                const SizedBox(height: 16),
                _buildProceduresCard(context),
                const SizedBox(height: 16),
                _buildChronicManagementCard(context),
                const SizedBox(height: 16),
                _buildFamilyHealthCard(context),
                const SizedBox(height: 100), // Padding for bottom nav
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'MedCore',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_outlined, color: AppColors.primary),
              onPressed: () {},
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
              ),
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBD41VgA-6BQQhElkLDe84LAQGH_DiihmHV8T6pUn8c9G92qW6NGXkpE7Y8EdcVqWQks4l31MA4sqBllkGCnKe4Awh_SxXvIZ4yUXsN6dGURLiIEDyjnSnrgbi1cMuYKLIG0kAQoBPu1dikZ4mmRQl-w0Z40AJGYDPtysKY8uhb3f8CcDKg8Om9VJ2loUtrd8IDjWmxW4xpjSdigqfwm7nt2UlAa_fKxdWElRJWAVNYmP7wXKIY4nlOFX5Vj16UQ0ukC9XXK--h83c',
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.person),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: CachedNetworkImage(
              imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCfc3PkO_M5MYSRUMOcyrrCzhu6804K6LjWgHSRAEbgjCtz4YNgZY4GoK-Hnx-6A43mYtG_m2CcxHsrwFa8oLLMMCItW6heKTsNGnsEGWCDZAs1pp8ijlCDOHh7ht1vk_XxIdqCqZY6BO4Upi3UMlFx6g3zugZaoKl_Fa-028CLNP3JOrZpgixv-icelKrRKCOGeRPlI1XHCXxrUY-o-V2Rf7EaoQPBQvtx47_ay3T5AOguPzOy8kYdlSeF1GBmB4DgrKZPKJZYRTc',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.background,
                  AppColors.background.withValues(alpha: 0.5),
                  Colors.transparent,
                ],
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceContainerHigh.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.monitor_heart, color: AppColors.primary, size: 16),
                      const SizedBox(width: 8),
                      Text(
                        'Expert Care',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.onSurface),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 40),
                    children: const [
                      TextSpan(text: 'Your Health,\n'),
                      TextSpan(text: 'Our Priority.', style: TextStyle(color: AppColors.primary)),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Comprehensive, professional medical services.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConsultationsCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuA5D2N7hnMD7zlfx6r5NuR2fkBsBgvhA25RGt4rSyW9Db8cqR__p96lWRfoDYzfEOmeN8H9SNM7x1LsEBWZ9rXLM-i2vfyxbtR3uhamEQRTD81R0t1jBKUFiiJuEvYRQv2lpk6jdLc7ozPuy31Sc9SFAV2nxPHFgaO-c8qEs6oAEGvjg90ZNISKZnmhw2Cfulrz9w-FR5SptwiMk2Fl6vYyAprdZyQQldpjzpsmh5LB0btbdquRC82VcglfReFfPkJ00KFL36j197E',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.health_and_safety, color: AppColors.primary),
                ),
                const SizedBox(height: 16),
                Text('Consultations', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 28)),
                const SizedBox(height: 8),
                Text('Acute and chronic care evaluations.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.check, color: AppColors.primary, size: 16),
                    const SizedBox(width: 8),
                    Text('Routine Exams', style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.check, color: AppColors.primary, size: 16),
                    const SizedBox(width: 8),
                    Text('Diagnostics', style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProceduresCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuChrzhvl7Gl8xm0ZaKE6cFcUOFzDM3YMPibQDDhDcSVKzDJCjAp90sSwKdH5wb-sZvdz05aQoyHdLZ9YyrIG_gv2wmIc0uISC-dSWyppJp_L4SLxdlCSDKl7aq-2Dfw1qd84oVWsfRWqa-0Z_SxI8_7izTMY3YFFi9NM8R7gfrOIcgrufNIYU8JeD1VoFfJ9UOAoLJvzGNir7I2-QYAA3dlD0ol-gzmDpREfD1eKK0tvxLhufCpFYEgxYVSifqklxB9q29Xe-znh0Q',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.content_cut, color: AppColors.primary),
                ),
                const SizedBox(height: 16),
                Text('Procedures', style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(height: 8),
                Text('Safe in-clinic interventions.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceVariant,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('Suturing', style: Theme.of(context).textTheme.labelSmall),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceVariant,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('Wound Care', style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChronicManagementCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.monitor_heart, color: AppColors.primary),
                ),
                const SizedBox(height: 16),
                Text('Chronic Management', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 28)),
                const SizedBox(height: 8),
                Text('Proactive health monitoring.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceVariant.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.water_drop, color: AppColors.secondary, size: 16),
                          const SizedBox(width: 8),
                          Text('Diabetes', style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceVariant.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.bloodtype, color: AppColors.secondary, size: 16),
                          const SizedBox(width: 8),
                          Text('BP', style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCbRv5m6txyH-EXpeXPRoNCooFhPQ8aU30MqPLMXdWV4mJHbyerRI6FYUfETs8BsAJC3u64LL3xWjKSKgcyGPnY7sv7R-dOmW4Ia1wzA9bbXmrd6U-hIF1EZkuZIk-aR1j3poV0OgyVra3MvnsCqnxoEPFuGt_fPcRwoNAVYJinFwFzGD-UyCLeARsxWXEhxzpmGi9zF3u7avT_ewxD4BU0izGOkMRN0fmmHkVI6APBM3trx2LLuiMLBACVpwhpyzMACM8gPISt21I',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFamilyHealthCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CachedNetworkImage(
                  imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBFZCIpi1-MlX47niVbVrTPfrLGiQUyv0xh_KMA4nbaFqA70_GmsP0AK4IAMFMKQC8VC89A4XI6tEaxnxBFhSOXV2F65KSVmsS-TexnKTyzMZusb82WTgIJhSLujAVL3WRA9DtIwTbMI1ZKK2AfXi4HGRWqKwyy3H9a-s3_Qyjt4nX7CabHDE3Jbt0KjoxyiyUL8AFWe91I52SNo1TmCNez8BeUReGF2j9YaG1VMb8-4dJKnn_otv6O5hGzNtkp6uZvbzdjOmehn_w',
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColors.surfaceContainer,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.family_restroom, color: AppColors.primary),
                ),
                const SizedBox(height: 16),
                Text('Family Health', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 28)),
                const SizedBox(height: 8),
                Text('Holistic care for all ages.', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.onPrimary,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Register', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
