part of dashboard;

class _MainMenu extends StatelessWidget {
  const _MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, SelectionButtonData value) onSelected;

  @override
  Widget build(BuildContext context) {
    return SelectionButton(
      data: [
        SelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: "위치 설정",
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.bell,
          icon: EvaIcons.bellOutline,
          label: "알림음 설정",
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.logOut,
          icon: EvaIcons.logOutOutline,
          label: "로그아웃",
        ),
      ],
      onSelected: onSelected,
    );
  }
}
