class TodoViewModel {
  final int id;
  final String title;
  final String description;
  final bool isDone;

  TodoViewModel({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });

  TodoViewModel copyWith({
    int? id,
    String? title,
    String? description,
    bool? isDone,
  }) =>
      TodoViewModel(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        isDone: isDone ?? this.isDone,
      );

  //check copyWith()
  // @override
  // String toString() =>
  //     'id: $id title: $title description: $description isDone: $isDone';
}
