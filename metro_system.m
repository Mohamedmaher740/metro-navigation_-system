Line1 =  {'Al-Marg Al-Gededa', 'Al-Marg', 'Ain Shams', 'Ezbet Al-Nakhl', 'Al-Matareya', ...
    'Helmeyat Al-Zaytoun', 'Hadayeq Al-Zaytoun', 'Saray Al-Qubba', 'Hammamat Al-Qubba', ...
    'Kobri Al-Qubba', 'Manshiyat Al-Sadr', 'El-Demerdash', 'Al-Shohadaa', 'Ahmed Orabi', ...
    'Gamal Abdel Nasser', 'Anwar Sadat', 'Saad Zaghloul', 'Sayeda Zeinab', ...
    'Al-Malik Al-Saleh', 'Mar Girgis', 'Dar Al-Salam', 'Thakanat Al-Maadi', ...
    'Al-Maadi', 'Maadi Gardens', 'Tora El-Balad', 'Kotsika', 'Tora Al-Asmant', ...
    'El Maasara', 'Helwan Gardens', 'Wadi Hof', 'Helwan University', 'Ain Helwan','Helwan'};


Line2 = {'Shubra El-Kheima', 'Agriculture College', 'Almazalat', 'Khalafawi', ...
    'St. Treza', 'Roud Al-Farag', 'Masrah', 'Al-Shohadaa', 'Al-Ataba', ...
    'Mohamed Naguib', 'Anwar Sadat', 'Opera', 'El Dokki', 'Al-Behoth', ...
    'Cairo University', 'Faisal', 'Giza', 'Dwahi Al Giza', 'Saqia Makki','El Munib'};

interchange_station = {'Al-Shohadaa', 'Anwar Sadat'};



tries= 1; % predefined for the first try
max_tries = 3;
while true

    %user input
    initial_station = input("Enter the initial station: ");
    final_station = input("Enter the final station: ");

    %check inputs
    if are_real_inputs(initial_station,final_station,Line1,Line2)
        fprintf("\ncorrect inputs!! The output is\n========================\n")
        [roadmap,stations_number, journey_time] = get_roadmap(Line1,Line2,initial_station,final_station,interchange_station);
        display_method(roadmap,stations_number, journey_time)
        break
    else
        fprintf("sorry the inputs not found, remind [%d] chances\n", max_tries-tries);
        tries = tries+1;
    end

    if tries > 3
        pause(60);
        fprintf("now you can try again")
    end
    if tries > 5
        fprintf("you consumed all tries")
        break;
    end
end




% disp(roadmap)
% disp(stations_number)
% disp(journey_time)


%check no problems with input and cell array
% if ismember(initial_station,Line1)
%     disp(find(initial_station==Line1))
% else
%     disp(find(initial_station==Line2))
% end

%check
% disp(Line1(5))
% disp(Line2(4))
% 
% 
% 
% [a,b] = ismember(interchange_station,Line2);
% disp(b)
% disp(find(ismember(interchange_station,Line2)))
% v = abs(initial_pos - find(strcmpi(transformation_stations,initial_line)));
