import 'package:e_commerece/src/Screens/home/shoping_screen.dart';
import 'package:e_commerece/src/helper/Model/categories_model.dart';
import 'package:e_commerece/src/helper/app_const.dart';
import 'package:flutter/material.dart';
class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  CategoriesData data = CategoriesData();
  WomenDataCategories women = WomenDataCategories();
  ManDataCategories man = ManDataCategories();
  KidzDataCategories kidz = KidzDataCategories();

  int index = 0;


  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      length: 4,animationDuration: Duration.zero,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width: 100,),
                  Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 100,),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.search),
                  )
                ],
              )
            ],
          bottom: TabBar(indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 12),
            indicatorWeight: 4, tabs: [
           Text("Women",style: TextStyle(fontSize: 16),),
           Text("Man",style: TextStyle(fontSize: 16)),
           Text("Kidz",style: TextStyle(fontSize: 16))
          ],),
        ),
        body: TabBarView(
          children: [
            // Wommen Categories
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: sw*0.05,),
                  Container(
                    height: sw*0.3,
                    width: sw*0.9,alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red
                    ),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("SUMMER SALES",
                        style: TextStyle(fontSize: sw*0.08,
                            color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text("Up to 50% of",style: TextStyle(fontSize: sw*0.04,
                          color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  SizedBox(height: sw*0.02,),
                  customcategoriescard(img: "${women.womencategoriesList[index].img}",
                      name: "${women.womencategoriesList[index].title}",len: women.womencategoriesList.length),
                ],
              ),
            ),
            // Man Categories
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: sw*0.05,),
                  Container(
                    height: sw*0.3,
                    width: sw*0.9,alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("SUMMER SALES",
                        style: TextStyle(fontSize: sw*0.08,
                            color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text("Up to 50% of",style: TextStyle(fontSize: sw*0.04,
                          color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  SizedBox(height: sw*0.02,),
                  customcategoriescard(img: "${man.mancategoriesList[index].img}",
                      name: "${man.mancategoriesList[index].title}",len: man.mancategoriesList.length),
                ],
              ),
            ),
            // Kidz Categories
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: sw*0.05,),
                  Container(
                    height: sw*0.3,
                    width: sw*0.9,alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("SUMMER SALES",
                        style: TextStyle(fontSize: sw*0.08,
                            color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text("Up to 50% of",style: TextStyle(fontSize: sw*0.04,
                          color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  SizedBox(height: sw*0.02,),
                  customcategoriescard(img: "${kidz.kidzcategoriesList[index].img}",
                      name: "${kidz.kidzcategoriesList[index].title}",len: kidz.kidzcategoriesList.length),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

customcategoriescard({required name,required img,required len}){
  return SizedBox(height: 600,
    width: 400,
    child: ListView.builder(
      itemCount: len,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingScreen(),));
          },
          child: Card(
            color: Colors.white54,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Text("${name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent
                    ),
                    child: Image.asset("${img}"),
                  )
                ),
              ],
            ),
          ),
        ),
      );
    },),
  );

}
