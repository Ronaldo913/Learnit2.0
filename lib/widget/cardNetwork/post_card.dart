import 'package:flutter/material.dart';
import 'package:learnit2/domain/network.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class PostCard extends StatelessWidget {
  final Network post;
  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      margin: EdgeInsets.only(bottom: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  constraints: const BoxConstraints.expand(),
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                ),
              ),
            ),
          ),
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
                          CircleAvatar(
                            backgroundImage: NetworkImage(post.avatar),
                            radius: 21,
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.author,
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
                                        post.date,
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
                              image: AssetImage(
                                post.photo,
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
                                    post.commentCount.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    CupertinoIcons.bubble_middle_bottom,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: [
                                  Text(
                                    post.likeCount.toString(),
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
                        post.caption,
                        style:
                        const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        children: post.tags
                            .map((e) => Text(
                          "#$e ",
                          style:
                          const TextStyle(color: Color(0xff05AAAB)),
                        ))
                            .toList(),
                      ),
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
