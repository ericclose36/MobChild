module PageHelper
  def calendar( month, year )
    current_date = Date.new(year, month, 1)

    day_number = 0
    prev_month = month - 1
    prev_year = year
    next_month = month + 1
    next_year = year
    if (prev_month <= 0)
      prev_month = 12
      prev_year = year - 1
    end
    if (next_month > 12)
      next_month = 1
      next_year = year + 1
    end

    cal = ""
    cal += (link_to "Previous", calendar_path(:month => prev_month, :year => prev_year))
    cal += current_date.strftime("%B")
    cal += (link_to "Next", calendar_path(:month => next_month, :year => next_year))
    day_of_week = current_date.strftime("%w").to_i
    cal += "<table border='1'>\n\t<tr>\n"
    days = %w(Sun Mon Tue Wed Thu Fri Sat)
    days.each do | day |
      cal += "\t\t<td>#{day}</td>\n"
    end

    cal += "<tr>"
    day_of_week.times do
      cal += "<td>&nbsp;</td>"
    end

    (7 - day_of_week).times do |day|
      cal += "<td>#{day + 1}</td>"
      day_number += 1
    end


    cal += "</tr>"
    cal += "\t</tr>\n</table>\n"
    return cal
  end
end
