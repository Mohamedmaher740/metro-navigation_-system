function [initialLine, initialPosition, anotherLine] = check_initial_line(Line1,Line2,startStation, endStation)

    % التحقق من المحطة في أي خط
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





