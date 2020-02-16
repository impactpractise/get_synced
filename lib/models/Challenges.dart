class Challenge {
  String photo;
  String name;
  int length;
  String difficulty;
  String description;
  String benefits;
  List tags;
  List hasLiked;
  List participants;
  bool isPublic;
  int likeCount;
  int participantCount;
  String city;
  String createdAt;
  String updatedAt;

  Challenge({
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

  Challenge.fromJson(Map<String, dynamic> json) {
    photo = json['photo'];
    name = json['name'];
    length = json['length'];
    difficulty = json['difficulty'];
    description = json['description'];
    benefits = json['benefits'];
    tags = json['tags'];
    hasLiked = json['hasLiked'];
    participants = json['participants'];
    isPublic = json['isPublic'];
    likeCount = json['likeCount'];
    participantCount = json['participantCount'];
    city = json['city'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}
