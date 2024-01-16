import 'package:flutter/material.dart';
import 'package:homework/feed/feed.dart';
import 'package:homework/feed/feed_item.dart';

class FeedList extends StatelessWidget {
  const FeedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...feeds.map((e) => FeedItem(feed: e)).toList(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Image.network(
            'https://media.gcflearnfree.org/ctassets/topics/246/share_flower_fullsize.jpg',
            height: 300,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}

final feeds = <Feed>[
  Feed(
    title: 'Test',
    content: 'Hello world',
    imageUrl:
        "https://cc-prod.scene7.com/is/image/CCProdAuthor/adobe-firefly-marquee-text-to-image-0-mobile-600x600?\$pjpeg\$&jpegSize=100&wid=600",
    minuteLeft: 12,
  ),
  Feed(
    title: 'Header',
    content: 'My name is Hoang',
    imageUrl:
        "https://cc-prod.scene7.com/is/image/CCProdAuthor/adobe-firefly-marquee-text-to-image-0-mobile-600x600?\$pjpeg\$&jpegSize=100&wid=600",
    minuteLeft: 12,
  ),
  Feed(
    title: 'Test',
    content: 'Hello world',
    imageUrl:
        "https://cc-prod.scene7.com/is/image/CCProdAuthor/adobe-firefly-marquee-text-to-image-0-mobile-600x600?\$pjpeg\$&jpegSize=100&wid=600",
    minuteLeft: 12,
  ),
  Feed(
    title: 'Test',
    content: 'Hello world',
    imageUrl:
        "https://cc-prod.scene7.com/is/image/CCProdAuthor/adobe-firefly-marquee-text-to-image-0-mobile-600x600?\$pjpeg\$&jpegSize=100&wid=600",
    minuteLeft: 12,
  ),
];
