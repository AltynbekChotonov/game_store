part of dashboard;

class _Header extends GetView<DashboardController> {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _title(),
              _imageProfile(),
            ],
          ),
          _subtitle(),
        ],
      ),
    );
  }

  Widget _title() {
    return Text(
      "Кош келиңиз!",
      style: TextStyle(
        fontSize: 30,
        color: Colors.grey[200],
      ),
    );
  }

  Widget _subtitle() {
    return Text(
      "Эмне ойногуңуз келет? ",
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey[200],
      ),
    );
  }

  Widget _imageProfile() {
    return CircleAvatar(
      backgroundImage: controller.user.image,
    );
  }
}
