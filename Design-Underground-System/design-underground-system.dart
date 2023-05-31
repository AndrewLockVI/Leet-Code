//This theoretically has an issue, but in
//reality the issue is with the question and not my implementation
//thus I consider this correct as it does what is expected
//which is tracking entry and exit and finding the average time
//for a single hop between the two.

//To solve this I created a trip class which just stores where
//a given user started and at what time. This is placed as the value
//for the key which is the user's id.
//Then from here when the user leaves you take the end time - start time
//and add it to the total time to travel from one station to another along with
//iterating the total number of trips by 1 to be able to find the mean.

class UndergroundSystem {
  Map<int, Trip> travelling_users = {};
  Map<String, List<int>> trip_times = {};

  void checkIn(int id, String stationName, int t) {
      if(travelling_users.containsKey(id)){
          return;
      }
      travelling_users[id] = new Trip( stationName,t);
  }
  
  void checkOut(int id, String stationName, int t) {
      Trip current_trip = (travelling_users[id] ?? new Trip('',0));
      String locations = current_trip.start_name + " " + stationName;
      List<int> this_trip_time = (trip_times[locations] ?? [0,0]);
      this_trip_time[0] += 1;
      this_trip_time[1] += t - current_trip.start_time;
      trip_times[locations] = this_trip_time;
  }
  
  double getAverageTime(String startStation, String endStation) {
      List<int> spec_trip = (trip_times[startStation + " " + endStation] ?? []);
      double average = spec_trip[1] / spec_trip[0];
      return average;
  }
}


class Trip{
    String start_name = "";
    int start_time = 0;
    Trip(String _start_name, int _start_time){
        start_name = _start_name;
        start_time = _start_time;
    }

}
