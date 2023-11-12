import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewPage extends StatefulWidget{
  const ReviewPage({super.key});

  @override
  State<StatefulWidget> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_bulk.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 28,left: 28),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 28,bottom: 28),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 15,
                            )),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    )),
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left:12,right:12,bottom: 4,top: 4),
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(25, 176, 0, 1),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            )
                        ),
                        child: const Text('Review',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28,right: 28,bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Angger Asathin',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (index) => const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                  size: 25,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                              margin: EdgeInsets.only(top: 4,bottom: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)
                                ),
                                border: Border.all(color: Color.fromRGBO(25, 176, 0, 1))
                              ),
                              child: Text('Mantap! aku sudah naik 10kg!',
                                style: TextStyle(color: Colors.white),),

                            )
                            // Icon(Icons.message,color: Colors.white,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28,right: 28,bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Moh Ikhsan',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (index) => Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                  size: 25,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                              margin: EdgeInsets.only(top: 4,bottom: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  ),
                                  border: Border.all(color: Color.fromRGBO(25, 176, 0, 1))
                              ),
                              child: Text('Nice! kapan lagi seminggu turun 10kg',
                                style: TextStyle(color: Colors.white),),

                            )
                            // Icon(Icons.message,color: Colors.white,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28,right: 28,bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Frans Yehezkiel',
                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (index) => const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                  size: 25,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                              margin: const EdgeInsets.only(top: 4,bottom: 14),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  ),
                                  border: Border.all(color: const Color.fromRGBO(25, 176, 0, 1))
                              ),
                              child: const Text('Not Bad la',
                                style: TextStyle(color: Colors.white),),

                            )
                            // Icon(Icons.message,color: Colors.white,)
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              RatingBar(
                wrapAlignment: WrapAlignment.start,
                initialRating: 0, // set the initial rating
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25.0, // set the size of each star
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star,color: Color.fromRGBO(25, 176, 0, 1),size: 25,),
                  half: Icon(Icons.star_half,color: Color.fromRGBO(25, 176, 0, 1),size: 25,),
                  empty: Icon(Icons.star_border,color: Color.fromRGBO(25, 176, 0, 1),size: 25,),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const TextField(
                style:
                TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Type your review here..',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.5)),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(height: 28,)

            ],
          ),
        ),
      ),
    );
  }

}