// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sabai_agro_product/detail_product/detail_product_widget.dart';
import 'package:sabai_agro_product/flutter_flow/flutter_flow_theme.dart';
import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

class ShowListProduct extends StatelessWidget {
  String urlImage;
  String nameProduct;
  String detailProduct;
  int index;
  ProductModel productModel;

  ShowListProduct({
    Key key,
    @required this.urlImage,
    @required this.nameProduct,
    @required this.detailProduct,
    @required this.index,
    @required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductWidget(productModel: productModel,),
          ),
        );
      },
      child: SizedBox(
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: Color(0xFFF5F5F5),
        // elevation: 2,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(12),
        // ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.white : Colors.grey.shade300,
          ),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductWidget(productModel: productModel,),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? MyConstant.primaryDarkColor
                            : MyConstant.primaryLightColor,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              urlImage,
                              width: 100,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                          child: Text(
                            nameProduct,
                            style: MyConstant().h2BlueStyle(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            detailProduct,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'PLSPRO001',
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
