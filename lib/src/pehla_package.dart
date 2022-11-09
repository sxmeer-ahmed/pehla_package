import 'package:flutter/material.dart';

class PehlaPackage extends StatefulWidget {
  const PehlaPackage({
    Key? key,
    this.height = 120.0,
    this.width,
    
  }) : super(key: key);

  final double? width;
  final double height;
  

  @override
  _PehlaPackageState createState() => _PehlaPackageState();
}

class _PehlaPackageState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!() ?? (){},
      child: Container(
        width: widget.width??MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
          gradient: LinearGradient(
              colors: [const Color(0xFFCB1841), const Color(0xFF2604DE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
           const BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                '${widget.title}',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
               widget.subtitle,
                style: TextStyle(
                  color: widget.subtitleColor,
                  fontSize: 15.0,
                  // fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}