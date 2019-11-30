class ListChildren {
  List<Examp> examp;

  ListChildren({this.examp});

  ListChildren.fromJson(Map<String, dynamic> json) {
    if (json['examp'] != null) {
      examp = new List<Examp>();
      json['examp'].forEach((v) {
        examp.add(new Examp.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.examp != null) {
      data['examp'] = this.examp.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Examp {
  String image;
  String title;
  String numberposts;

  Examp({this.image, this.title, this.numberposts});

  Examp.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    numberposts = json['numberposts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['numberposts'] = this.numberposts;
    return data;
  }
}