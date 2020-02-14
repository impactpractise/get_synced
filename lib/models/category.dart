class Category {
  String imageUrl;
  String categoryName;

  Category({this.imageUrl, this.categoryName});
}

List<Category> categories = [
  Category(
      imageUrl:
          "https://images.unsplash.com/photo-1459409342466-58a380fc8bd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      categoryName: "Challenges"),
  Category(
      imageUrl:
          "https://images.unsplash.com/photo-1478812954026-9c750f0e89fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      categoryName: "Groups"),
  Category(
      imageUrl:
          "https://images.unsplash.com/flagged/photo-1556669546-b1f29875df1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      categoryName: "Routines"),
];
