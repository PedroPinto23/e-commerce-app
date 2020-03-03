import 'package:flutter/material.dart';
import 'package:loja_app/tabs/home_tab.dart';
import 'package:loja_app/tabs/locations_tab.dart';
import 'package:loja_app/tabs/orders_tab.dart';
import 'package:loja_app/tabs/products_tab.dart';
import 'package:loja_app/widgets/Cart_button.dart';
import 'package:loja_app/widgets/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Produtos'),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Lojas'),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: LocationTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Meus Pedidos'),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
