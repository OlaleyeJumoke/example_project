import 'dart:convert';

MemeData memeDataFromJson(String str) => MemeData.fromJson(json.decode(str));

String memeDataToJson(MemeData data) => json.encode(data.toJson());

class MemeData {
    MemeData({
        this.success = false,
       required this.data,
    });

    bool? success;
    Data data;

    factory MemeData.fromJson(Map<String, dynamic> json) => MemeData(
        success: json["success"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
    };
}

class Data {
    Data({
      required  this.memes,
    });

    List<Meme> memes;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        memes: List<Meme>.from(json["memes"].map((x) => Meme.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "memes": List<dynamic>.from(memes.map((x) => x.toJson())),
    };
}

class Meme {
    Meme({
        this.id = "",
        this.name = "",
        this.url = "",
        this.width = 0,
        this.height = 0,
        this.boxCount = 0,
    });

    String id;
    String name;
    String url;
    int width;
    int height;
    int boxCount;

    factory Meme.fromJson(Map<String, dynamic> json) => Meme(
        id: json["id"],
        name: json["name"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
        boxCount: json["box_count"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
        "width": width,
        "height": height,
        "box_count": boxCount,
    };
}
