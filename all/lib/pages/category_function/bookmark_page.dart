import 'dart:convert' as convert;
import 'package:all/class/bookmark.dart';
import 'package:all/pages/category/construction/framing_sequence.dart';
import 'package:all/pages/category/construction/planning_the_substructure.dart';
import 'package:all/pages/category/construction/plastering_and_finishing.dart';
import 'package:all/pages/category/construction/preparation_of_bamboo.dart';
import 'package:all/pages/category/joinery/angle_joints_for_trusses_joints.dart';
import 'package:all/pages/category/joinery/basic_principle.dart';
import 'package:all/pages/category/joinery/modern_joining_technique.dart';
import 'package:all/pages/category/joinery/orthogonal_joints.dart';
import 'package:all/pages/category/joinery/spliced_joints.dart';
import 'package:all/pages/category/joinery/useful_techniques.dart';
import 'package:all/pages/category/plantation/clum_harvesting_handling.dart';
import 'package:all/pages/category/plantation/conventional.dart';
import 'package:all/pages/category/plantation/maintenance_activities.dart';
import 'package:all/pages/category/plantation/non_conventional.dart';
import 'package:all/pages/category/plantation/proposed_planning.dart';
import 'package:all/pages/category/plantation/shoot_harvesting_handling.dart';
import 'package:all/pages/category/postHarvesting/basics_working_method.dart';
import 'package:all/pages/category/postHarvesting/chamical_method.dart';
import 'package:all/pages/category/postHarvesting/dying.dart';
import 'package:all/pages/category/postHarvesting/finishing_method.dart';
import 'package:all/pages/category/postHarvesting/furniture_products.dart';
import 'package:all/pages/category/postHarvesting/traditional_method.dart';
import 'package:all/pages/category/postHarvesting/weaving_and_woven_products.dart';
import 'package:all/pages/category/postHarvesting/why_treatment_preservation.dart';
import 'package:all/pages/category/selection/commercial_bamboo_species.dart';
import 'package:all/pages/category/selection/selection_of_bamboo.dart';
import 'package:all/pages/category/text.dart';
import 'package:all/pages/category/tools/hand_tools.dart';
import 'package:all/pages/category/tools/machine_tools.dart';
import 'package:all/pages/category/value/bamboo_distribution.dart';
import 'package:all/pages/category/value/bamboo_value_chain.dart';
import 'package:all/pages/category/value/bamboo_value_chain_process.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  _BookMarkPageState createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {

  List<Bookmark> bookmarkList = <Bookmark>[];

  @override
  void initState() {
    getBookMark();
    super.initState();
  }

  // 取得該使用者的書籤資料
  void getBookMark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/getBookMark.php";
    var data = {
      "userId": prefs.getString("UserId")
    };

    setState(() {
      bookmarkList.clear();
    });

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      if(jsonData != "empty") {
        for(var item in jsonData) {
          setState(() {
            bookmarkList.add(Bookmark.fromJson(item));
          });
          // debugPrint(item.toString());
        }
      } else {
        // debugPrint("List is empty.");
      }
      // debugPrint(bookmarkList.toString());
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  // 轉跳至該頁面，這裡用每個頁面的pageName判斷
  void goToPage(String pageName){
    switch(pageName){
      //Selection Of Bamboo
      case "SELECTION OF BAMBOO":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SelectionOfBamboo()));
        break;
      case "COMMERCIAL BAMBOO SPECIES":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CommericalBambooSpecies()));
        break;
        // Plantation
        // Plantation-Method
      case "NON CONVENTIONAL":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NonConventional()));
        break;
      case "CONVENTIONAL":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Conventional()));
        break;
        // Plantation-Nursery
      case "MAINTENANCE ACTIVITIES":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MaintenanceActivities()));
        break;
      case "PROPOSED PLANNING SCHEMES":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProposedPlanning()));
        break;
        // // Plantation-Harvesting
      case "CLUM HARVESTING & HANDLING":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ClumHarvestingHandling()));
        break;
      case "SHOOT HARVESTING & HANDLING":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShootHarvestingHandling()));
        break;
      // post harvesting
      // post harvesting-processing
      case "WHY TREATMENT & PRESERVATION":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WhyTreatmentPreservation()));
        break;
      // post harvesting-processing-methods of treatment
      case "TRADITIONAL METHOD":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TraditionalMethod()));
        break;
      case "CHEMICAL METHOD":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChemicalMethod()));
        break;
      // post harvesting-management
      case "BASICS WORKING METHOD":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BasicsWorkingMethod()));
        break;
      case "DYING":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Dying()));
        break;
      case "FINISHING METHOD":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FinishingMethod()));
        break;
      case "WEAVING AND WOVEN PRODUCTS":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WeavingAndWovenProducts()));
        break;
      case "FURNITURE PRODUCTS":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FurnitureProducts()));
        break;
        // construction
      case cs1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PlanningTheSubstructure()));
        break;
      case cs2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PreparationOfBamboo()));
        break;
      case cs3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FramingSequence()));
        break;
      case cs4:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PlasteringAndFinishing()));
        break;
        //joinery-basic
      case j:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BasicPrinciple()));
        break;
      //joinery-tech
      case jt:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SplicedJoints()));
        break;
      case jt1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OrthogonalJoints()));
        break;
      case jt2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AngleJointsForTrussesJoints()));
        break;
      case jt3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ModernJoiningTechnique()));
        break;
      case jt4:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const UsefulTechniques()));
        break;
        //Tools
      case t:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HandTools()));
        break;
      case t1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MachineTools()));
        break;
        //value-chain
      case vc1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BambooDistribution()));
        break;
      case vc2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BambooValueChain()));
        break;
      case vc3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BambooValueChainProcess()));
        break;
    }
  }


  // 刪除選中的書籤
  void deleteBookMark(String bookmarkId) async {
    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/deleteBookMark.php";
    var data = {
      "id": bookmarkId
    };

    try {
      var res = await http.post(Uri.parse(url), body: data);
      var jsonData = convert.jsonDecode(res.body);
      debugPrint(jsonData);
      Fluttertoast.showToast(
        msg: jsonData.toString(),
      );
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
        msg: "Error: " + e.toString(),
      );
    }
  }

  // 重複確認是否刪除的對話框
  _showDeleteDialog(BuildContext context) async {
    var dialog = AlertDialog(
      title: const Text("Delete Bookmark"),
      content: const Text("Are you sure to delete this bookmark?"),
      actions: <Widget> [
        TextButton(
          child: const Text("Yes"),
          onPressed: () => Navigator.pop(context, 1),
        ),
        TextButton(
          child: const Text("No"),
          onPressed: () => Navigator.pop(context, 0),
        )
      ],
    );

    var result = showDialog(
      context: context,
      builder: (context) => dialog,
    );

    return result;
  }


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('BookMark'),
      centerTitle: true,
    ),
    body: bookmarkList.isEmpty
        ? const Center(
            child: Text("None", style: TextStyle(fontSize: 30)),
        )
        :
        ListView.separated(
        itemCount: bookmarkList.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(bookmarkList[index].pageName),
            trailing: IconButton(
              icon: const Icon(Icons.delete_forever),
              onPressed: () async {
                var result = await _showDeleteDialog(context);

                if(result == 1) {
                  deleteBookMark(bookmarkList[index].id);

                  // 刪除資料後更新列表
                  getBookMark();
                } else {
                  Fluttertoast.showToast(
                    msg: "cancel ",
                  );
                }

              },
            ),
            onTap: () => goToPage(bookmarkList[index].pageName),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
    );
}
