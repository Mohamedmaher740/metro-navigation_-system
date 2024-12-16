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

interchange_station = {'Al-Shohadaa', 'Al-Ataba', 'Anwar Sadat'};

initial_station = input("Enter the initial station: ");
final_station = input("Enter the final station: ");

are_real_inputs(initial_station,final_station,Line1,Line2)

% if are_real_inputs(initial_station,final_station,Line1,Line2)
%     disp(1)
% else
%     disp(2)
% end

 % [Roadmap, Stations_number, Journey_time] = direct_to_destination(Line2,10,4);
 % disp(Roadmap)
 % disp(Stations_number)
 % disp(Journey_time)

 get_nearest_interchange(interchange_station,Line1,Line2,find(strcmp(Line2,initial_station)));

r = {'Cairo University'	'Al-Behoth'	'El Dokki'	'Opera'	'Anwar Sadat'	'Anwar Sadat'	'Saad Zaghloul'	'Sayeda Zeinab'};
s =7;
j = 21;
 display_method(r,s,j)