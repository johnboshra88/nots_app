import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/widgets/custom_app_bar.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text('Build your career with john Boshra',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 16)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  size: 27,
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text('Augost 27,2024',
                style: TextStyle(color: Colors.black.withOpacity(.5))),
          )
        ],
      ),
    );
  }
}
