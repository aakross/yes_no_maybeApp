import 'package:flutter/material.dart';
import 'package:yes_no_app2/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app2/presentation/widgets/chat/my_message_bubble.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              },
            )),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
