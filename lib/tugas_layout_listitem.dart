import 'package:flutter/material.dart';
abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),

      ),
      );
  }
  @override
  Widget buildSubTitle(BuildContext context) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubTitle(BuildContext context) => Text(body);

}

class TugasLayoutListitem extends StatelessWidget {
  const TugasLayoutListitem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
      20,
      (i) => i % 5 == 0
      ? HeadingItem('Heading $i')
      : MessageItem('Sender $i', 'Messagge body $i'),
    );

  return Scaffold(
    appBar: AppBar(title: const Text("List dengan Berbagai Item")),
    body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item =items[index];
        return ListTile(
          title: item.buildTitle(context),
          subtitle: item.buildSubTitle(context),
        );
      }
    ),
  );
  }
}