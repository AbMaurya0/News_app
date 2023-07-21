import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:news_app/utils/color_constant.dart';
import 'package:news_app/utils/text_styles.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SizedBox(
          height: 30,
          child: FloatingActionButton(
              heroTag: 'btn1',
              shape: const CircleBorder(),
              onPressed: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: ColorConstant.blue0A,
              )),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.network(
                'https://plus.unsplash.com/premium_photo-1679496830187-5b7a3def833e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmV3c3BhcGVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Container(
                  height: MediaQuery.of(context).size.longestSide,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorConstant.blue0A,
                            ),
                            const Padding(padding: EdgeInsets.only(right: 5)),
                            Text(
                              'Top 10 Sports News',
                              style: TextStyles.txtPoppinsMedium15black5007f,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '''Placeat rerum iure nobis vitae minus repellendus? Minus doloribus fugit dolorem qui! Ipsum? Quisquam fuga sequi itaque similique consectetur consequuntur laborum quas distinctio odit, sapiente cupiditate placeat officia fugiat omnis dolore libero consequatur. Possimus, aliquam! Laborum sequi pariatur a corrupti magnam cumque corporis.
                        
                        Reiciendis laboriosam sint maxime ab minus tempore libero esse tempora excepturi sed? Eum cum blanditiis voluptatem deserunt quos unde officia? Ad, eveniet voluptatum. Minima esse vitae repellat tenetur, ratione in?
                        Iusto quisquam, aliquam eligendi hic ea soluta deleniti? Distinctio ex sit enim aut ipsa vitae. Enim laudantium saepe temporibus eligendi iste recusandae facere animi, cum inventore, architecto illo soluta perferendis? Obcaecati eum nesciunt alias, nam ipsa id placeat doloribus consequatur sit nemo nihil quisquam, ullam at minima numquam earum ut nisi beatae cupiditate consectetur voluptatesrecusandae distinctio, ad tempora. Nequde corporis nostrum accusa''',
                          style: TextStyles.txtPoppinsRegular11black400A1,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 255,
                left: 200,
                child: SizedBox(
                  height: 45,
                  child: Row(children: [
                    FloatingActionButton(
                        heroTag: 'btn2',
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.bookmark_add,
                          size: 30,
                          color: ColorConstant.blue0A,
                        ),
                        onPressed: () {}),
                    FloatingActionButton(
                        heroTag: 'btn3',
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: ColorConstant.blue0A,
                        )),
                    FloatingActionButton(
                        heroTag: 'btn4',
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.share,
                          size: 30,
                          color: ColorConstant.blue0A,
                        ),
                        onPressed: () {}),
                  ]),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }
}
