part of nyxx;

/// Ban object. Has attached reason of ban and user who was banned.
class Ban {
  /// Reason of ban
  String reason;

  /// Banned user
  User user;

  Ban._new(Map<String, dynamic> raw, Nyxx client) {
    this.reason = raw['reason'] as String;

    var userFlake = Snowflake(raw['user']['id'] as String);
    if (client.users.findOne((m) => m.id == userFlake) != null)
      this.user = client.users[userFlake];
    else
      this.user = User._new(raw['user'] as Map<String, dynamic>, client);
  }
}
