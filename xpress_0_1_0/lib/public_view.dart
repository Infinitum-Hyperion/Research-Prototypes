part of xpress;

class PublicView extends StatelessWidget {
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
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 2,
            children: List<Widget>.generate(
              10,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/public-blog');
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage('porsche_919_hybrid_lQkJrlO093Y.jpg'),
                        width: 200,
                        height: 200,
                      ),
                      Positioned(
                        top: 4,
                        left: 4,
                        child: Text(
                          'Blog A',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/**
 *  
 */