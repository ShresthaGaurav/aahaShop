class Packages {
  final int id;
  final DateTime date;
  final String modified;
  final String slug;
  final String status;
  final String type;
  final String title;
  final String content;
  final int media;

  Packages(
      {this.id,
      this.date,
      this.modified,
      this.slug,
      this.status,
      this.type,
      this.title,
      this.content,
      this.media});

  factory Packages.fromJson(Map<String, dynamic> json) {
    return Packages(
      id: json['id'],
      title: json['title']['rendered'],
      media: json['featured_media'],
      content: json['description']
    );

  }
}
