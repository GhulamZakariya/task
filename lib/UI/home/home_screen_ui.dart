import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/UI/home/widgets/rightActionBar.dart';
import 'package:task/UI/home/widgets/topbar.dart';
import 'package:task/UI/home/widgets/videoDataWidget.dart';
import 'package:task/UI/home/widgets/videoPlayerWidget.dart';
import 'package:task/Utilities/colors/CustomColors.dart';
import 'package:task/main.dart';
import 'package:task/model/video_model.dart';

class HomeScreenUi extends StatefulWidget {
  const HomeScreenUi({super.key});

  @override
  State<HomeScreenUi> createState() => _HomeScreenUiState();
}

class _HomeScreenUiState extends State<HomeScreenUi> {
  final PageController pageController = PageController();
  final PageController imagePageController = PageController();


  void _loadVideo(int index) {
    if (index < homeController.homePageResponseModel.value.posts!.length) {

      debugPrint('Loading video $index');
    }
  }
  void _loadImage(int index) {
    if (index < homeController.homePageResponseModel.value.posts![index].images!.length) {

      debugPrint('Loading image $index');
    }
  }
  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = homeController.selectedIndex.value == index;

    return InkWell(
      onTap: () => homeController.updateIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, color: isSelected ? CustomColors.selectedIndicatorColor : Colors.grey),
          if (label.isNotEmpty) // Show label if it's not empty
            Text(
              label,
              style: TextStyle(
                color: isSelected ? CustomColors.selectedIndicatorColor : Colors.grey,
              ),
            ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
            return homeController.homePageResponseModel.value.posts == null ? const Center(child:  CircularProgressIndicator()) :

            PageView.builder(
              itemCount: homeController.homePageResponseModel.value.posts?.length,
              controller: pageController,
              scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                homeController.currentIndex.value=0;
                _loadVideo(index + 1);
              },
              itemBuilder: (context, index) {
                Posts post = homeController.homePageResponseModel.value.posts![index];
                return PageView.builder(
                    itemCount: post.images?.length,
                    controller: imagePageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (imageIndex) {
                      homeController.currentIndex.value=imageIndex;
                      _loadImage(imageIndex + 1);
                    },
                    itemBuilder: (context, imageIndex){
                      Images image = post.images![imageIndex];
                      String checkImage = image.image!.split('.').last;
                     //
                      debugPrint('index .......... $index');
                      debugPrint('imageIndex .......... $imageIndex');
                  return

                    Stack(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child:
                          checkImage.trim() =='jpg' ?
                      Image.network("https://via.placeholder.com/350x150",fit: BoxFit.fill,)
                              :
                              
                          VideoPlayerWidget(videoUrl: image.image!),
                      ),
                     const  TopStoriesBar(),
                      VideoDataWidget(post: post,),
                      RightActionBar(post: post,),

                    ],
                  );
                  
                });

                
              },
            );
          }),
          bottomNavigationBar:
          Obx((){
            return Container(
              padding: const EdgeInsets.only(bottom: 30,top: 20),
              decoration:  BoxDecoration(
                color: CustomColors.primaryColor, // Single color background
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildNavItem(0, Icons.home, 'Home'),
                  _buildNavItem(1, Icons.search, 'Search'),
                  // Center item with gradient color container
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [CustomColors.selectedIndicatorColor,CustomColors.gradientButtonColor], // Example gradient colors
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add, size: 30),
                      onPressed: () {
                        homeController.updateIndex(2);
                      },
                    ),
                  ),
                  _buildNavItem(3, Icons.shopping_bag_outlined, 'Deals'),
                  _buildNavItem(4, Icons.person, 'Profile'),
                ],
              ),
            );
            //   BottomNavigationBar(
            //   currentIndex: homeController.selectedIndex.value,
            //   onTap: homeController.updateIndex,
            //   items: const <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //       label: 'Home',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.search),
            //       label: 'Search',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.insert_chart),
            //       label: '',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.notifications),
            //       label: 'Notifications',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),
            //       label: 'Profile',
            //     ),
            //   ],
            //   selectedItemColor: CustomColors.selectedIndicatorColor,
            //   unselectedItemColor: Colors.grey,
            //   backgroundColor: CustomColors.primaryColor,
            //   type: BottomNavigationBarType.fixed,
            // );
    }),
    );
  }
}
