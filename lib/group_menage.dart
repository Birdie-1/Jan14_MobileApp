import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'group_model.dart';
import 'package:sqflite/sqflite.dart';

class GroupManage extends StatefulWidget {
  @override
  State<GroupManage> createState() => _GroupManageState();
}   

class _GroupManageState extends State<GroupManage>{
    //ประกาศตัวแปร  
    late Database db;
    List<Group> _groups = [];

    int? groupid;
    final TextEditingController _groupNameController = TextEditingController();

    //ฟัง้ชั้นในการโหลดข้อมูล groups ทั้งหมด
    void _loadGroups() async{
          final List<Map<String, dynamic>> groupData = await DatabaseHelper.instance.fetchGroups();
          setState(() {
            _groups = List.generate(groupData.length,(i){
              return Group.fromMap(groupData[i]);
            });
          });
    }
    //ฟั้งชั้นเพิ่มข้อมูลใหม่
    Future<void> _addGroup() async{

    }   
    //ฟั้งชั้นอแก้ไขข้ออมูล 
    Future<void> _updateGroup(int,id) async{

    }
    //ฟั้งชั้นลบข้อมูล
    Future<void> _deleteGroup(int,id) async{

    }
//ฟั้งชั้น clear Formให้ว่าง
    void _clearForm(){
      _groupNameController.clear();
      setState(() {
        groupid = null;
      });
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Group Menage'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
            children: [Container(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Group Name')),  
                      DataColumn(label: Text('Manage')),
                    ],
                    rows: _groups.map((group) {
                      return DataRow(
                        cells: [
                          DataCell(Text(group.groupId.toString())),
                          DataCell(Text(group.groupName)),
                          DataCell(Row(
                            children: [
                             IconButton(onPressed: null, icon: Icon(Icons.edit)),
                             IconButton(onPressed: null, icon: Icon(Icons.edit)),
                            ],
                          )),
                        ],
                      );
                    }).toList(),
                  ),
                ),
            )],
        ),
    );
}
}