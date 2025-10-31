class OfferModel {
  final String title;
  final String subtitle;
  final String imagePath;
  final String? backgroundImage;
  const OfferModel({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.backgroundImage,
  });
}
