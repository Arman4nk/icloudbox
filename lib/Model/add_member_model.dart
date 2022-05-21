class AddMemberModel {
  String name;
  String email;
  String image;
  int id;
  bool isSelected;
  bool? viewFlag;
  bool? editFlag;

  AddMemberModel(
      {required this.name,
      required this.email,
      required this.image,
      required this.isSelected,
      required this.id,
      this.viewFlag,
      this.editFlag});
}
