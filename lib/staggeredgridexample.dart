import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';


class StaggeredGrid extends StatefulWidget {
  const StaggeredGrid({Key? key}) : super(key: key);

  @override
  State<StaggeredGrid> createState() => _StaggeredGridState();
}

class _StaggeredGridState extends State<StaggeredGrid> {

  List imglist = [
    'https://cdn.pixabay.com/photo/2016/02/24/01/52/butterfly-1218884_640.jpg',
    'https://cdn.pixabay.com/photo/2023/08/08/18/01/butterfly-8177925_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/09/08/22/12/peacock-butterfly-1655724_640.jpg',
    'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg',
    'https://cdn.pixabay.com/photo/2013/07/18/20/27/butterfly-165104_640.jpg',
    'https://cdn.pixabay.com/photo/2014/05/26/13/32/butterfly-354528_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/28/13/24/butterflies-743549_640.jpg',
    'https://cdn.pixabay.com/photo/2016/05/14/12/58/butterfly-1391809_640.jpg',
    'https://cdn.pixabay.com/photo/2018/06/24/18/46/butterfly-3495224_640.jpg',
    'https://cdn.pixabay.com/photo/2018/06/28/12/16/butterfly-3503733_640.jpg',
    'https://cdn.pixabay.com/photo/2019/08/08/11/23/butterfly-4392735_640.jpg',
    'https://cdn.pixabay.com/photo/2013/12/07/09/50/postman-butterfly-224472_640.jpg',
    'https://cdn.pixabay.com/photo/2016/11/19/14/50/butterfly-1839679_640.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text("Flutter Staggered GridView"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child:  StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: imglist.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15))
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(15)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imglist[index],fit: BoxFit.cover,),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}