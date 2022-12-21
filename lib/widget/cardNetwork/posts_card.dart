import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import '../../domain/network.dart';
import 'package:learnit2/pages/sideBar/redes/publication/comentario_page.dart';

class PostsCard extends StatefulWidget {
  final Network post;

  const PostsCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  _PostsCardState createState() => _PostsCardState();
}

class _PostsCardState extends State<PostsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF015958),
      margin: EdgeInsets.only(bottom: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Stack(
              children: [
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white10,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
                                    fit: BoxFit.cover)),
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.post.author,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.image_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Photo',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        widget.post.date,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const Icon(
                        CupertinoIcons.heart,
                        color: Color(0xff05AAAB),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                widget.post.photo,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.post.commentCount.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 4),
                                  InkWell(
                                      child: Icon(
                                    CupertinoIcons.bubble_middle_bottom,
                                    color: Colors.white,
                                    size: 20,
                                  ), onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const ComentarioPage();
                                      },
                                    ),
                                  ),),
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: [
                                  Text(
                                    widget.post.likeCount.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.share,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.bookmark,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.ellipsis_vertical,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.post.caption,
                        textAlign: TextAlign.justify,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      // Wrap(
                      //   children: widget.post.tags
                      //       .map((e) => Text(
                      //             "#$e ",
                      //             textAlign: TextAlign.justify,
                      //             style:
                      //                 const TextStyle(color: Color(0xff05AAAB)),
                      //           ))
                      //       .toList(),
                      // ),
                      const SizedBox(height: 10)
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
