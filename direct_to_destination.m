function[Roadmap,Stations_number,Journey_time] = direct_to_destination(line,initial_position,final_position)

% R: Roadmap -- the stations in the journey
% here making predefine array to make it static memory not dynamic
Roadmap = repmat({'string'},1,abs(initial_position-final_position)+1);
% abs(i+f)+1 : +1 to count the first station too

counter = 1;
% here will check the vision of the user
if initial_position > final_position
    for i = initial_position:-1:final_position
        Roadmap{counter} = line{i};
        counter = counter + 1;
    end
else
    for x = initial_position:final_position
        Roadmap{counter} = line{x};
        counter = counter + 1;
    end
end

% Stations number
Stations_number = length(Roadmap);
%Journey time
Journey_time = Stations_number*3;
% حسب البحث الوقت بين كل محطة والتانية 3 دقايق


% فكرة السعر

% if Stations_number>=10
%     Ticket_Price = 10;
% else
%     Ticket_Price = 8;
% end
% 
% disp(Ticket_Price)


end


%الفكرة في الفانكشن دي انها لامؤاخذة عامية مبتتفاهمش ومبعتمدش غير ان عندي
%محطة اولي في النقطة دي ومحطة نهائية عند النقطة دي والاتنين علي نفس الخط
%فهحتاج تباصيلي الخط اللي هم فيه 