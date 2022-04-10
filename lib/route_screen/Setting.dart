import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Setting'),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.indigoAccent
          ])))),
      body: Column(
        children: [
          Center(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse egestas nulla sed sem faucibus, a condimentum felis dignissim. Mauris quis feugiat risus. Sed turpis nisl, semper non velit et, consectetur blandit purus. Donec vel tellus sagittis, tincidunt orci id, rhoncus quam. Etiam nec maximus turpis, non lacinia neque. Sed sagittis massa eu cursus tincidunt. Integer sit amet ex commodo, auctor augue ac, pretium justo. Curabitur eleifend est ac dui ullamcorper, quis consectetur enim suscipit. Ut cursus, leo sed tempor faucibus, lacus turpis laoreet risus, ut ultrices lacus lorem at erat. Vestibulum pellentesque venenatis lorem a venenatis. Mauris hendrerit rutrum sem at vehicula. Vestibulum tempor sem odio, non aliquet augue facilisis sed. Donec maximus tellus in erat placerat ornare. Duis aliquam eget est sit amet faucibus. Proin et feugiat erat, blandit sagittis ligula. Donec at nisi eget sapien feugiat commodo non sed neque.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
