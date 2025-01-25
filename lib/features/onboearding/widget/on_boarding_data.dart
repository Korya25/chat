// core/data/onboarding_data.dart
class OnboardingData {
  final String title;
  final String description;
  final String imagePathLight;
  final String imagePathDark;

  OnboardingData(
      {required this.title,
      required this.description,
      required this.imagePathLight,
      required this.imagePathDark});

  static List<OnboardingData> get onboardingScreens => [
        OnboardingData(
          title: 'Group Chatting',
          description: 'Connect with multiple members\nin group chats',
          imagePathDark:
              'assets/svgs/onboreading/dark/on_borading_dark_step_1.svg',
          imagePathLight:
              'assets/svgs/onboreading/light/on_borading_ligh_step_1.svg',
        ),
        OnboardingData(
          title: 'Video And Voice Calls',
          description: 'Instantly connect via video and voice calls',
          imagePathDark:
              'assets/svgs/onboreading/dark/on_borading_dark_step_2.svg',
          imagePathLight:
              'assets/svgs/onboreading/light/on_borading_light_step_2.svg',
        ),
        OnboardingData(
          title: 'Message Encryption',
          description: 'Ensure privacy with encrypted messages',
          imagePathDark:
              'assets/svgs/onboreading/dark/on_borading_dark_step_3.svg',
          imagePathLight:
              'assets/svgs/onboreading/light/on_borading_ligh_step_3.svg',
        ),
        OnboardingData(
          title: 'Cross-Platform\nCompatibility',
          description: 'Access chats on any device seamlessly',
          imagePathDark:
              'assets/svgs/onboreading/dark/on_borading_dark_step_4.svg',
          imagePathLight:
              'assets/svgs/onboreading/light/on_borading_ligh_step_4.svg',
        ),
      ];
}
