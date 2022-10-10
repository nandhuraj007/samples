SizedBox.fromSize(
                  size: Size(70, 70),
                  child: ClipOval(
                    child: Material(
                      color: Colors.greenAccent,
                      child: InkWell(
                        splashColor: Colors.black87,
                        onTap: () {
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.account_circle),
                             // text
                          ],
                        ),
                      ),
                    ),
                  ),
                )
