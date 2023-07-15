part of xpress;

class MemberOnlyBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Padding(
        padding: EdgeInsets.only(left: 100, right: 100),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  'red_ferrari_XyTXtYX6xOY.jpg',
                ),
                width: 600,
                height: 400,
              ),
              SizedBox(height: 50),
              Text(
                _randomText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.cyan,
                ),
              ),
              SizedBox(height: 20),
              Text(
                _randomText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.cyan,
                ),
              ),
              SizedBox(height: 20),
              Text(
                _randomText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
