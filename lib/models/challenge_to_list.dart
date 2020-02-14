class ChallengeToShow {
  final String photo;
  final String name;
  final int length;
  final double difficulty;
  final String description;
  final String benefits;
  final List tags;
  final List hasLiked;
  final List participants;
  final bool isPublic;
  final int likeCount;
  final int participantCount;
  final String city;
  final DateTime createdAt;
  final DateTime updatedAt;

  ChallengeToShow(
      {this.photo,
      this.name,
      this.length,
      this.difficulty,
      this.description,
      this.benefits,
      this.tags,
      this.hasLiked,
      this.participants,
      this.isPublic,
      this.likeCount,
      this.participantCount,
      this.city,
      this.createdAt,
      this.updatedAt});
}
