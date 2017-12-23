function [month, day] = date_from_days(days)

months = {'January', 'February', 'March', 'April', 'May', 'June', 'July', ...
            'August', 'September', 'October', 'November', 'December'};
 
daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

daysInYear = cumsum(daysInMonth);

monthIndex = find(days < daysInYear, 1);
month = months{monthIndex};

if (monthIndex > 1)
    day = days - daysInYear(monthIndex - 1);
else
    day = days;
end
 
end