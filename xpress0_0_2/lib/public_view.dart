part of xpress;

class PublicView extends StatefulWidget {
  final List<BlogPreviewCard> cards = List<BlogPreviewCard>.generate(
    10,
    (_) => BlogPreviewCard(title: getRandomString()),
  );
  @override
  State<StatefulWidget> createState() => PublicViewState();
}

class PublicViewState extends State<PublicView> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
              top: 100,
              bottom: 100,
            ),
            child: Column(
              children: [
                TextField(
                  controller: textController,
                  onChanged: (newValue) {},
                ),
                const SizedBox(height: 30),
                Flexible(
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 2,
                    children: widget.cards
                        .where(
                            (card) => card.title.contains(textController.text))
                        .toList(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class BlogPreviewCard extends StatelessWidget {
  final String title;

  const BlogPreviewCard({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/public-blog');
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            const Image(
              image: AssetImage('porsche_919_hybrid_lQkJrlO093Y.jpg'),
              width: 200,
              height: 200,
            ),
            Positioned(
              top: 4,
              left: 4,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
