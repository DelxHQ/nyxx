import '../../objects.dart';

/// The client's OAuth2 app, if the client is a bot.
class ClientOAuth2Application {
  /// The app's description.
  String description;

  /// The app's icon hash.
  String icon;

  /// The app's ID.
  String id;

  /// The app's name.
  String name;

  /// The app's RPC origins.
  List<String> rpcOrigins;

  /// The app's flags.
  int flags;

  /// The app's owner.
  User owner;

  /// A timestamp for when the app was created
  double createdAt;

  /// Constructs a new [ClientOAuth2Application].
  ClientOAuth2Application(Map<String, dynamic> data) {
    this.description = data['description'];
    this.icon = data['icon'];
    this.id = data['id'];
    this.name = data['name'];
    this.rpcOrigins = data['rpcOrigins'];
    this.flags = data['flags'];
    this.owner = new User(data['owner']);
    this.createdAt = (int.parse(this.id) / 4194304) + 1420070400000;
  }
}