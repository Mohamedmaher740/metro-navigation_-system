function[] = display_method(roadmap, stations_number, journey_time)

n = length(roadmap);
i = 1;
transitions = 0;
while i<= n
    if i > 1
        if isequal(roadmap{i},roadmap{i-1})
            fprintf(" **leave the metro and change to the anothe line** starting from --> %s", roadmap{i});
            transitions = transitions +1;
        else
            fprintf(" --> %s" , roadmap{i})
        end
    else
       fprintf("the road map is : %s" , roadmap{i})
    end
    i = i+1;
end

% fprintf("the Roadmap : %s > " , roadmap{:})
fprintf("\nThe number of station you will pass: %d stations and %d changes", stations_number,transitions);
fprintf("\nThe Time you will need : %d min\n", journey_time);

if stations_number <= 9
    fprintf("the price of the ticket : %5.2f LE\n", 8);
elseif stations_number >= 10 && stations_number <= 16
    fprintf("the price of the ticket : %5.2f LE\n", 10);
elseif stations_number >= 17 && stations_number <= 23
    fprintf("the price of the ticket : %5.2f LE\n", 15);
else
    fprintf("the price of the ticket : %5.2f LE\n", 20);
end




