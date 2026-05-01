import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              _buildHeroSection(context),
              _buildServicesSection(context),
              _buildWhyUsSection(context),
              const SizedBox(height: 100), // Padding for bottom nav
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
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary, width: 2),
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBvMBSKwWhfyBK3GGXtT6M8xMNsyzpwO_DajyV_eSDOEtPsePEJ4EG151Yw3Hhe5MvWMrG1cu2b27cps-oRnMntVEJk247HhKa9uFdpP8J-WvpYk6ThO_lm6bo23jqtIPxiIC7BCyPvy0UxCWbT2WTHo3H7_zSVG8owdPeUwmLLM1uO0_--veLqkDFOCuEApwDu6LrEmsb6trDHP22Y4BywBfxJvkSuWbIu4YNfF-G-VzSqiuSO_LlZP-usd9a9KP-eaMnmFdEtdjU',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.person),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'DR PS MAWISA',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: AppColors.primary),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.outline.withValues(alpha: 0.3)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'NEW PATIENTS WELCOME',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Trusted Doctor in\nKhayelitsha',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: AppColors.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Expert care. Family first. Modern medicine.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    foregroundColor: AppColors.onSecondary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 8,
                    shadowColor: AppColors.secondary.withValues(alpha: 0.5),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Book Now', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                    side: const BorderSide(color: AppColors.primary, width: 2),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
                      SizedBox(width: 8),
                      Text('Emergency', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.outline.withValues(alpha: 0.2)),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: CachedNetworkImage(
                    imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBxuf64ylbMaeRQAfq-5hAChpexDNC9YqCDEFEe0DnYj3EHPLxdrGFM1t8CLpQrxJ4wX0XsidE6GMMl8pKsFls3Y4GtB0NCSrJ31oHfTXkhho7OHsgXX1RoX-3n477D7Ql0KeHsoTD8xeuq2-A6SXWKFcFaenfSWrHyMGYr120HO9sLjZ2n2yMZbcw78PQzk3zyWZOT76vRBGfC_Zr1eLy4GKdrd9DbpVRascudw9QJDLMEl2BRbXzkIRGWzoefuNcKy6WrnxNF9no',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainerHigh.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.verified, color: AppColors.primary, size: 28),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '15+ Years',
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 20),
                            ),
                            Text(
                              'Trusted Care',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.displayMedium,
              children: const [
                TextSpan(text: 'Our ', style: TextStyle(color: AppColors.primary)),
                TextSpan(text: 'Services', style: TextStyle(color: AppColors.onSurface)),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildServiceCard(context, 'Checkups', 'Daily health monitoring.', 'https://lh3.googleusercontent.com/aida-public/AB6AXuAqoUpGFEFEu3NJm03L_WXpm8W6p_lIPqEHvSEuCPON9DJxHlrwBsG75GsbFsRHWFyTCHWjpiABYpYBRjrynVr48kPZi91VhesP0Cddq5LcxRfTGS-bkYrVgizRg3hQ9SRhWJ9_GoAMq6FPcA6IG3JB-jhGcbTr7zUZUig619lBGKfyI8KbShvn44YV5Xt1UZ5F24hiI5mNvEW7mZqyddGEgVeBah-1QWteZV9rTD8tr8qzoZYvMJRbA9uiFWcNRrGcGwCwJgbYH80'),
          const SizedBox(height: 16),
          _buildServiceCard(context, 'Pediatrics', 'Care for kids.', 'https://lh3.googleusercontent.com/aida-public/AB6AXuArhVC85mmqihvz4fHml6j4DEKSj2Hy0SPUceKF15x9XRdCxwVEb7BDe7PKOpmpIIWmuQS2XLvLFXWszaRpzCVcUCziMP7NTyR0mj3oAkY1s_NX-p9a7zXdUH3W_vla3-VAnByUILKMwNzf_HLpLkOBR90R81_OW8vMnp1xHuymClJqdyu0MPns6taAV5IjOAiNIQQrtSY2IoNUhQmuUN4tbfCFKpirtqyk3hWIWjFzJ3gwGEamNBWLY_WI4ZXWz5PjRG_mnirzc_g'),
          const SizedBox(height: 16),
          _buildServiceCard(context, 'Chronic Care', 'Long-term health.', 'https://lh3.googleusercontent.com/aida-public/AB6AXuBkcSiYDQpLuQin5Foym-qDoATOjDTWUOAXjEF_x6e-PXwx2vPjNiEoS-IlyRRTOy2usIphOqWi5jRhjhHp6nhlzGsry1pZb0RJLb2GKoCqUglongc6M0yAtoVxYP6SQlPi-8mxCwJvGywT79V_rb6fxJFFRyjlwnCdBzE-CoaZXyRlmkvLcNphA7kZ0BVLXWSZZQXlzH09lrgF6ap2ZosWf1L9Z9puVdPjntiDRvsPR48SFmH2URMxUtEISTwe8xV6iOTbcYqFvHo'),
        ],
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context, String title, String subtitle, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.outline.withValues(alpha: 0.2)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(height: 8),
                Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhyUsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.displayMedium,
              children: const [
                TextSpan(text: 'Why ', style: TextStyle(color: AppColors.primary)),
                TextSpan(text: 'Us', style: TextStyle(color: AppColors.onSurface)),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: _buildFeatureItem(context, Icons.timer, 'Fast', 'No long waits.', isPrimary: true)),
              const SizedBox(width: 16),
              Expanded(child: _buildFeatureItem(context, Icons.medical_services, 'Expert', 'Top-tier doctors.', isPrimary: false)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildFeatureItem(context, Icons.location_on, 'Local', 'Right in Khayelitsha.', isPrimary: true)),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, IconData icon, String title, String subtitle, {required bool isPrimary}) {
    final color = isPrimary ? AppColors.primary : AppColors.secondary;
    
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.outline.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(height: 16),
          Text(title, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 20)),
          const SizedBox(height: 8),
          Text(
            subtitle, 
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
