function[Roadmap, Stations_number, Journey_time] = get_roadmap(l1,l2,initial_station, final_station,transformation_stations)

% [initial_line,initial_position,another_line] = check_initial_line(l1,l2,initial_station,final_station);
[initial_line,initial_position,another_line] = check_initial_line_updated(l1,l2,initial_station,final_station,transformation_stations);


if isequal(initial_line,another_line)
    [Roadmap, Stations_number, Journey_time] = direct_to_destination(initial_line,initial_position,find(initial_line,final_station));
else
    [nearest_interchange_in_myline, nearest_interchang_in_anotherline] = get_nearest_interchange(transformation_stations,another_line,initial_line,initial_position);
    [Roadmap1, Stations_number1, Journey_time1] = direct_to_destination(initial_line,initial_position,nearest_interchange_in_myline);
    [Roadmap2, Stations_number2, Journey_time2] = direct_to_destination(another_line,nearest_interchang_in_anotherline,find(strcmp(another_line,final_station)));
    Roadmap = [Roadmap1,Roadmap2];
    Stations_number = (Stations_number1 + Stations_number2)-1;
    Journey_time = (Journey_time1 + Journey_time2)-3;
end

end
