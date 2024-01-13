import 'package:weatherapp/export.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeBloc>().add(
          ChangeStatus(status: HomeStatus.loading),
        );
    context.read<HomeBloc>().add(
          FetchWeatherData(lat: 31.582045, lon: 74.329376),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          switch (state.status) {
            case HomeStatus.init:
              break;

            case HomeStatus.loading:
              // TODO: Handle this case.
              break;
            case HomeStatus.loaded:
              // TODO: Handle this case.
              break;
            case HomeStatus.error:
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMsg),
                ),
              );
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
            child: state.status == HomeStatus.loading
                ? Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      child: const CircularProgressIndicator(),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Weather In ${state.weatherResponseModel?.city?.name.toString()}',
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                state.weatherResponseModel?.list?.length ?? 0,
                            itemBuilder: (context, index) {
                              return WeatherSingleTile(
                                singleDayData:
                                    state.weatherResponseModel!.list![index],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
