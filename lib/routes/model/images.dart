class PropImages {
  final int post;
  final string;

  PropImages({this.post, this.string});

  factory PropImages.fromJson(Map<String, dynamic> json) {
    return PropImages(
      post: json['post'],
      string: json['source_url'],
    );
  }
}
