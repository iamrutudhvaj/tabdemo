import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabdemo/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  context.read<HomeCubit>().changeTab(0);
                },
                child: const Text(
                  "Overview",
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<HomeCubit>().changeTab(1);
                },
                child: const Text(
                  "Contents",
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<HomeCubit>().changeTab(2);
                },
                child: const Text(
                  "Reviews",
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 2,
                color: const Color(0xffEBF1FF),
              ),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return AnimatedPositioned(
                    duration: const Duration(milliseconds: 250),
                    height: 3,
                    left: (context.read<HomeCubit>().state.index ?? 0) * 80,
                    child: Container(
                      height: 3,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
