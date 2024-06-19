class Category {
  String? sId;
  String? name;
  String? slug;
  String? image;

  Category({
    this.sId,
    this.name,
    this.slug,
    this.image,
  });

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;

    return data;
  }
}
