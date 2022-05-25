part of dashboard;

class DashboardController extends GetxController {
  final scafoldKey = GlobalKey<ScaffoldState>();

  final dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.dog),
    name: "10001",
    jobDesk: "환영합니다",
  );


  final taskInProgress = [
    CardTaskData(
      label: "맑음",
      temper: "30ºC",
      humidity :"20%",
      probability: "30%",
    ),
    CardTaskData(
      label: "흐림",
      temper: "20ºC",
      humidity :"20%",
      probability: "30%",
    ),
    CardTaskData(
      label: "비",
      temper: "20ºC",
      humidity :"90%",
      probability: "80%",
    ),
    CardTaskData(
      label: "구름 많음",
      temper: "20ºC",
      humidity :"20%",
      probability: "30%",
    ),
    CardTaskData(
      label: "맑음",
      temper: "20ºC",
      humidity :"20%",
      probability: "30%",
    )
  ];



  final weeklyTask = [
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Slicing UI",
      jobDesk: "Programmer",
      assignTo: "Alex Ferguso",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskAssignedData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Personal branding",
      jobDesk: "Marketing",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX ",
      jobDesk: "Design",
    ),
    const ListTaskAssignedData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Determine meeting schedule ",
      jobDesk: "System Analyst",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobdesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobdesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Fixing Error Payment",
        jobdesk: "Programmer",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Create Form Interview",
        jobdesk: "System Analyst",
      ),
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {
    if (value.label == "위치 설정") {
      getCurrentLocation();
      debugPrint("위치설정 클릭");
    }
    else if(value.label == "알림음 설정") {

      debugPrint("알림음 설정 클릭");
    }
    else if(value.label == "로그아웃") {
      debugPrint("로그아웃 클릭");
    }

  }
  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTaskAssignedData data) {}
  void onPressedAssignTask(int index, ListTaskAssignedData data) {}
  void onPressedMemberTask(int index, ListTaskAssignedData data) {}
  void onPressedCalendar() {}
  void onPressedTaskGroup(int index, ListTaskDateData data) {}
//
  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }

  //final userLocationData = FirebaseDatabase().reference();
  final userLocationData = FirebaseDatabase.instance;
  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);


    final location_data = LocationData(
      latitude : position.latitude.toString(),
      longitude: position.longitude.toString(),
    );

    debugPrint(location_data.latitude);
    debugPrint(location_data.longitude);

    debugPrint(userLocationData.ref("DBConnect").get().toString());
        //.child("DBConnect").child("Users").child(dataProfil.name).child("location").update({
    //  "latitude" :  location_data.latitude,
    //  "longitude" : location_data.longitude,
    //});

  }
}





