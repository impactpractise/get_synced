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

  const ChallengeToShow({
    this.photo,
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
    this.updatedAt,
  });

  factory ChallengeToShow.fromMap(Map<String, dynamic> map) {
    return new ChallengeToShow(
      photo: map['photo'] as String,
      name: map['name'] as String,
      length: map['length'] as int,
      difficulty: map['difficulty'] as double,
      description: map['description'] as String,
      benefits: map['benefits'] as String,
      tags: map['tags'] as List,
      hasLiked: map['hasLiked'] as List,
      participants: map['participants'] as List,
      isPublic: map['isPublic'] as bool,
      likeCount: map['likeCount'] as int,
      participantCount: map['participantCount'] as int,
      city: map['city'] as String,
      createdAt: map['createdAt'] as DateTime,
      updatedAt: map['updatedAt'] as DateTime,
    );
  }
}
