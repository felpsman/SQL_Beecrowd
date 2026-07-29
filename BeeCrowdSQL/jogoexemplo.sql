
SELECT timesheet.badge_number,first_name,guns_issued FROM cops 
JOIN timesheet ON cops.badge_number = timesheet.badge_number WHERE cops.security_level = 3 
AND timesheet.checkout_time > 2207