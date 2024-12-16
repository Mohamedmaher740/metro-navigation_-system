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

 clc
timeout = 10;
 fprintf("you consumed your chances. you can try again after %d sec\n",timeout)
 for remindtime = timeout:-1:0
     fprintf(" the remaining time is : %d sec",remindtime)
     pause(1)
     fprintf(repmat('\b',1,30))
     % clc
 end
 fprintf("\n\nYou can try again now\n")


 timeout = 10; % المهلة الزمنية

fprintf('you consumed your chances. you can try again after %d sec\n', timeout);

for remindtime = timeout:-1:1
    fprintf('\b'); % تحريك المؤشر للخلف (اختياري إذا كان متاحًا)
    fprintf(repmat(' ', 1, 50)); % طباعة مسافات لمسح النص السابق
    fprintf('the remaining time is : %d sec', remindtime); % إعادة الكتابة من البداية
    pause(1);
end

fprintf('\n\nYou can try again now\n');


%# Generate the data
Measurement1 = {[0.33 0.23 0.34 -32.32]; [-132.3 32.1 32.23 -320.32]};
Measurement2 = {433.2; 3.2};
TextStuff = {'The cat who ate the rat'; 'The dog who ate the cat'};
s = cell2struct([Measurement1, Measurement2, TextStuff], ...
    {'Measurement1', 'Measurement2', 'TextStuff'}, 2); 

str_format = @(tag, value)sprintf('%s:%s', tag, value);

%# Iterate over the data and print it on the same figure
figure
for i = 1:length(s)

    %# Clear the figure
    clf, set(gcf, 'color', 'white'), axis off

    %# Output the data
    text(0, 1, str_format('mohamed maher'));
    text(0, 0.9, str_format('youssef hesham'));
    text(0, 0.8, str_format('mahmoud elsayed'));

    %# Wait until the uses press a key
    % pause
end





