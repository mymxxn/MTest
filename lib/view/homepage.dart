import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/debts/debts_bloc.dart';
import 'package:machine_test/model/apimodel.dart';
import 'package:machine_test/view/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DebtsBloc _newsBloc = DebtsBloc();
  @override
  void initState() {
    _newsBloc.add(GetMyDebtsList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [HomePageAppbar()],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My debts",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("See All")
                ],
              ),
            ),
            Expanded(child: _buildListCovid())
          ],
        ),
      ),
      bottomNavigationBar: bottomnavigationbar(),
    );
  }

  Widget _buildListCovid() {
    return BlocProvider(
      create: (_) => _newsBloc,
      child: BlocListener<DebtsBloc, DebtsState>(
        listener: (context, state) {
          if (state is MyDebtsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: BlocBuilder<DebtsBloc, DebtsState>(
          builder: (context, state) {
            if (state is DebtsInitial) {
              return _buildLoading();
            } else if (state is MyDebtsLoading) {
              return _buildLoading();
            } else if (state is MyDebtsLoaded) {
              return _buildCard(context, state.apiModel);
            } else if (state is MyDebtsError) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, ApiModel model) {
    return ListView.builder(
      itemCount: model.data?.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage("${model.data![index].img}"))),
          ),
          title: Text("${model.data![index].name}"),
          subtitle: Text("Until ${model.data![index].until}"),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("${model.data![index].amount}"),
              Text("out of ${model.data![index].outOfAmount}")
            ],
          ),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
