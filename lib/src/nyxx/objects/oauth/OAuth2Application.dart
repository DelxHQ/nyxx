part of nyxx;

/// An OAuth2 application.
class OAuth2Application {
  /// The app's description.
  String description;

  /// The app's icon hash.
  String icon;

  /// The app's ID.
  Snowflake id;

  /// The app's name.
  String name;

  /// The app's RPC origins.
  List<String> rpcOrigins;

  /// A timestamp for when the app was created.
  DateTime createdAt;

  OAuth2Application._new(Map<String, dynamic> raw) {
    this.description = raw['description'] as String;
    this.icon = raw['icon'] as String;
    this.id = Snowflake(raw['id'] as String);
    this.name = raw['name'] as String;
    this.rpcOrigins = raw['rpcOrigins'] as List<String>;
    this.createdAt = id.timestamp;
  }

  String iconUrl({String format = "png", int size = 512}) => icon == null
      ? null
      : "https://cdn.discordapp.com/app-icons/${this.id}/$icon.$format?size=$size";

  /// Returns a string representation of this object.
  @override
  String toString() => this.name;
}
