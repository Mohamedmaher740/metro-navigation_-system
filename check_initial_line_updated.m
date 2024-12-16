function [initialLine, initialPosition, anotherLine] = check_initial_line_updated(Line1,Line2,startStation, endStation,T)

    % if the start station is transiton station
    if ismember(startStation, T)
        if ismember(endStation,Line1)
            anotherLine = Line1;
        else
            anotherLine = Line2;
        end
            initialLine = anotherLine;
            initialPosition = find(strcmp(initialLine, startStation));
    elseif ismember(endStation,T)
        if ismember(startStation,Line1)
            initialLine = Line1;
        else
            initialLine = Line2;
        end
        anotherLine = initialLine;
        initialPosition = find(strcmp(initialLine, startStation));
    else
        if ismember(startStation, Line1)
            initialLine = Line1;
            initialPosition = find(strcmp(Line1, startStation));
            anotherLine = Line1;
            if ismember(endStation, Line2)
                anotherLine = Line2;
            end
        else
            initialLine = Line2;
            initialPosition = find(strcmp(Line2, startStation));
            anotherLine = Line2;
            if ismember(endStation, Line1)
                anotherLine = Line1;
            end
        end
    end

end


% 1. check if the start station is transition station : that makes it in
% the 2 lines so the initial line must be equal 2 another line and to avoid
% the conflicts we must make check on this. and if not a transation station
% we will check the initial line and the another line