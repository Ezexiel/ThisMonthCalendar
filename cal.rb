def cal
  # print Month Year
  # - full name of month
  # - full year (4 digits)

  # print row of name of days (Sunday to Saturday)
  # - each days are only 2 characters

  # print days of the month
  # - 5 (to 6?) rows
  # - each column must align with the correct name of day

  today = Time.now

  first_day_of_month = Time.new(today.year, today.month, 1)
  last_day_of_month = Time.new(today.year, today.month + 1, 1) - 1

  puts "  #{today.strftime('%B')} #{today.strftime('%Y')}"
  puts 'Su Mo Tu We Th Fr Sa'

  # as we are iterating through the days to display, this tells us what day we're on
  iday = 1

  while iday <= last_day_of_month.day
    row_days = []
    (0..6).each do |wday|
      # Need to look for the first day that matches the day of week
      if iday == 1
        if wday == first_day_of_month.wday
          row_days << " #{iday}"
          iday += 1
        else
          row_days << '  '
        end
      # If it is over the last day of the month, then we stop adding anything
      elsif iday > last_day_of_month.day
        break
      else
        if iday >= 10
          row_days << iday.to_s
        else
          row_days << " #{iday}"
        end
        iday += 1
      end
    end
    # Display the week's days
    puts row_days.join(' ')
  end
end

# Execute program
cal