import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../themes.dart';

class ArticleLoading extends StatelessWidget {
  const ArticleLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey[50],
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[200]!,
              child: RichText(
                  text: TextSpan(
                text: sampleText,
                style: articleTextStyle,
              )),
            )));
  }
}

const String sampleText = '''How to memorize?

The first thing you need to know about committing vocabulary to memory is that

CONTEXT is KING.

The richer the context (short story, movie scene, etc.) the easier to memorize and later remember.

What is context?

The Cambridge Dictionary says: “Context is the text or speech that comes immediately before and after a particular phrase or piece of text and helps to explain its meaning.” Generally speaking, context is something with a beginning, middle and an end – at least 3 sentences. Everything else is more or less a waste of time.

When you come across a new word, in a book or in a movie (rich context), in order to increase your chances of remembering that word later on, you need to do the following 7 things:

Use MLDs 

Collocate 

Rephrase 

Visualize 

Personalize

Harmonize 

Notice''';
