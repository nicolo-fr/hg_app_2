import 'package:flutter/material.dart';
import 'package:hg_app_2/home/presentation/core/article_page_layout.dart';
import 'package:hg_app_2/home/presentation/widgets/article_paragraph_builder.dart';

class WorkHistoryPage extends StatelessWidget {
  const WorkHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ArticlePageLayout(
      imagePath: 'assets/images/grimm_brothers.jpeg',
      title: 'Histoire de l\'œuvre',
      children: [
        ArticleParagraphBuilder(
          paragraphs: [
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse finibus diam non nibh varius, at feugiat ex gravida. In malesuada suscipit vestibulum. Donec vulputate lacus vel ullamcorper placerat. Nunc non velit ut augue tristique aliquam nec id magna. Donec quis velit sed nunc hendrerit tristique et eu elit. Nullam sagittis purus sed convallis interdum. Proin ac lacus a odio blandit interdum. Ut accumsan sollicitudin leo, eget aliquam ante. Curabitur fermentum libero eget interdum tempor. Quisque at venenatis ligula. Sed sem orci, tempus non iaculis eget, congue a justo. Aenean neque massa, placerat eu rutrum ut, dapibus eu metus. Vestibulum vitae quam justo. Sed sagittis rhoncus magna in congue. Phasellus purus metus, tristique fringilla tristique ac, facilisis eu elit. Praesent sagittis elementum est quis feugiat.', 
            'Etiam ornare semper orci, eget sodales urna hendrerit ut. Nam pharetra libero quis ipsum efficitur, at vestibulum sapien bibendum. Etiam sed ullamcorper justo. Donec tellus arcu, imperdiet non lacinia non, tempus quis enim. Ut vel rutrum urna. Morbi vitae felis at metus consequat molestie. Cras quam justo, mattis viverra pellentesque quis, rutrum id risus. Integer ut magna pellentesque, porttitor sapien eget, laoreet mi. Aenean at velit metus. Vivamus rhoncus sagittis sem, ut mattis urna molestie et. Sed a faucibus libero, eget consequat quam. Nam lacinia sapien nec ex aliquam, id placerat diam accumsan. Nunc mollis lorem et turpis volutpat, in elementum diam vehicula.',
            'Cras pulvinar in mi eu pharetra. Integer congue gravida mattis. Phasellus in odio in quam fermentum hendrerit eu vitae risus. Maecenas pulvinar ipsum vitae nisl pulvinar, vitae convallis ligula porta. In pellentesque turpis ut orci pulvinar aliquam. Fusce non risus ornare, maximus quam iaculis, pretium arcu. Vivamus ex lectus, dictum eget tempor in, iaculis quis arcu. Etiam fermentum urna id purus malesuada facilisis. Donec eget metus ante. Cras sollicitudin nunc risus, eu rutrum erat molestie sit amet. Aliquam et arcu leo. Integer ut dolor id est dapibus varius sed non arcu. Sed vel consectetur felis. Phasellus malesuada condimentum odio, at interdum purus mattis eget.'
            ],
        )
      ],
    );
  }
}
