function[out] = are_real_inputs(initial_station, final_station, l1, l2)
% disp(initial_station)
% disp(final_station)
% disp(ismember(initial_station,l1))
% disp(ismember(initial_station,l2))
% disp(ismember(final_station,l1))
% disp(ismember(final_station,l2))
% 
% disp(ismember(final_station,l1) || ismember(final_station,l2))
% disp(ismember(initial_station,l1) || ismember(initial_station,l2))
% disp((strcmpi(initial_station,l1) || strcmpi(initial_station,l2)) && (strcmpi(final_station,l1) || strcmpi(final_station,l2)))
% disp(strcmpi(initial_station,Line1))

if (ismember(initial_station,l1) || ismember(initial_station,l2)) && (ismember(final_station,l1) || ismember(final_station,l2))
    if isequal(initial_station,final_station)
        out = false;
    else
        out = true;
    end
else
    out = false;
end
% disp(out)
end



% how will be in the whole system
% m=1;
% while true
%     if are_real_inputs
%         get_roadmap()
%         break;
%     else
%         fprintf("the inputs not real, remind [%d] chances\n", 3-m);
%         m = m+1;
%     end
% 
%     if m > 3
%         pause(60);
%         fprintf("you can now try again")
%     end
%     if m > 5
%         fprintf("you consumed all tries")
%         break;
%     end
% 
% 
% end


% if false
%     disp(1)
% else
%     disp(2)
% end