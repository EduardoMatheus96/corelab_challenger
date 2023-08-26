import 'package:corelab_app_challenge/src/models/search_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final search = GetIt.I.get<Search>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          color: const Color(0xff00B4CC),
          child: SafeArea(
            child: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xff00B4CC),
              title: Observer(builder: (_) {
                return search.tapForm == true
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              ),
                              onPressed: search.changeTapOutsideForm,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 90,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText:
                                      search.tapForm == true ? null : "Buscar",
                                  hintStyle: const TextStyle(
                                    color: Color(0xff94A6A9),
                                    fontSize: 16,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 8.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: search.tapForm == true ? null : "Buscar",
                            hintStyle: const TextStyle(
                              color: Color(0xff94A6A9),
                              fontSize: 16,
                            ),
                            suffixIcon: const Icon(Icons.search),
                            border: InputBorder.none,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 8.0),
                          ),
                          onTap: search.changeTapForm,
                        ),
                      );
              }),
            ),
          ),
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}
