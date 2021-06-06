import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(receive: 100, send: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));

    return [
      EventModel(
        created: DateTime.now(),
        title: "Churrasco",
        value: 100,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco 2",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco 2",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco 2",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco 2",
        value: 120,
        people: 2,
      ),
      EventModel(
        created: DateTime.now(),
        title: "Churrasco 2",
        value: 120,
        people: 2,
      ),
    ];
  }
}
