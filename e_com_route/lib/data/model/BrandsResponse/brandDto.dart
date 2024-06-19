import 'package:e_com_route/domain/model/brand.dart';

class BrandDto {
  String? sId;
  String? name;
  String? slug;
  String? image;
  BrandDto({
    this.sId,
    this.name,
    this.slug,
    this.image,
  });

  BrandDto.fromJson(Map<String, dynamic> json) {
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

  Brand toBrand() {
    return Brand(
      sId: sId,
      slug: slug,
      image: image,
      name: name,
    );
  }
}
