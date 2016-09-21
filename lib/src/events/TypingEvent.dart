import '../../objects.dart';
import '../client.dart';

/// Sent when a user starts typing.
class TypingEvent {
  /// The channel that the user is typing in.
  GuildChannel channel;

  /// The user that is typing.
  User user;

  /// Constructs a new [TypingEvent].
  TypingEvent(Client client, Map<String, dynamic> json) {
    if (client.ready) {
      this.channel = client.channels[json['d']['channel_id']];
      this.user = client.users[json['d']['user_id']];
      client.emit('typing', this);
    }
  }
}