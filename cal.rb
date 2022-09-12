def cal
  # print Month Year
    # full name of month
    # full year (4 digits)
  # print row of name of days (Sunday to Saturday)
    # each days are only 2 characters
  # print days of the month
    # 5 (to 6?) rows
    # each column must align with the correct name of day

  today = Time.now

  this_month_str = today.strftime("%B")
  this_year_str = today.strftime("%Y")
  first_day_of_month = Time.new(today.year, today.month, 1)
  last_day_of_month = Time.new(today.year, today.month + 1, 1) - 1

  # <inst of Time>.wday returns the name of day as integer from 0
  # name_of_days = %w[Su Mo Tu We Th Fr Sa]
  
  puts "  #{this_month_str} #{this_year_str}"
  puts 'Su Mo Tu We Th Fr Sa'
  # puts "Date : #{Time.now}"

  # as we are iterating through the days to display, this tells us what day we're on
  iday = 1
  first_day_of_month.wday
  row_days = []

  while iday < last_day_of_month.day
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
    puts row_days.join(' ')
  end
end

cal