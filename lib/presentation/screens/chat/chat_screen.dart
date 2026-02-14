import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app2/domain/entities/message.dart';
import 'package:yes_no_app2/main.dart';
import 'package:yes_no_app2/presentation/providers/chat_provider.dart';
import 'package:yes_no_app2/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app2/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app2/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://dbl-discord.usercontent.prism.gg/avatars/1207005842113564722/a_309b09ea5adfe7e01bdd3ba802f42e77.png?size=256'),
          ),
        ),
        title: const Text("Mi Amor <3"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messagelist.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messagelist[index];
                // final mensaje = chatProvider.herReply();
                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            )),
            //Caja de texto de mensajes
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
