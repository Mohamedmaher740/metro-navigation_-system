function[nearest_interchange_in_myline,nearest_interchange_in_anotherline] = get_nearest_interchange(transformation_stations,another_line,initial_line,initial_pos)

% disp(transformation_stations)
% disp(initial_pos)
% here will calc the number of stations between me and interchange station
[~,positions] = ismember(transformation_stations,initial_line);
diffrence = abs(initial_pos - positions);
% disp(diffrence)

% v = abs(initial_pos - find(ismember(transformation_stations,initial_line)));
%--------------------------
%the process
%--------------------
%strcmpi(- , -) >> will out array with same length of initial_line with
%zeros and ones : ones is the positions of transformation_stations >> then
%find will out the positions of the ones in the array by default
%*** strcmpi : ignore the case of the letter if small or capital
%-----------------------------------
%
% abs(2 - [3,5]) >> [3,5] transformation stations positions in the initial line
%abs([-1,-3])
%v = [1,3]
%--------------------------

% which one is closer?
% if diffrence(1) > diffrence(2)
%     nearest_interchange_in_myline = find(strcmpi(transformation_stations(1), initial_line));
%     nearest_interchange_in_anotherline = find(strcmpi(transformation_stations(1), another_line));
% else
%     nearest_interchange_in_myline = find(strcmpi(transformation_stations(2), initial_line));
%     nearest_interchange_in_anotherline = find(strcmpi(transformation_stations(2), another_line));
% end


%position of nearest in transformation stations
position_of_nearest = find(min(diffrence)==diffrence);
% disp(min(diffrence))
% disp(position_of_nearest)

[~,nearest_interchange_in_myline] = ismember(transformation_stations(position_of_nearest),initial_line);
% disp(transformation_stations(position_of_nearest))
% disp(ismember(transformation_stations(position_of_nearest),initial_line))
% disp(nearest_interchange_in_myline)

[~,nearest_interchange_in_anotherline] = ismember(transformation_stations(position_of_nearest),another_line);
% disp(ismember(transformation_stations(position_of_nearest),another_line))
% disp(nearest_interchange_in_anotherline)