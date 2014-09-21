

months = %w{January February March April May June July August September October November December}
# => ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
months.cycle {|month| p month}
# => prints each month in a cycle infinitely

months.cycle(2) {|month| p month}
# => prints out each month in a cycle twice

months.cycle do |month|
  p month
  break if month == "July"
end
# => prints out each month until it reaches July

month_cycle = months.cycle
# => returns an enumerator of the array months
# => #<Enumerator: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]:cycle>

month_cycle.next
# => "January"
month_cycle.next
# => "February"
month_cycle.next
# => "March"
# => etc

month_cycle.rewind
# => resets the enumerator back to the first time
month_cycle.next
# => "January"

month_name_sources = {janus: 'January', februalia: 'February', mars: 'March', aperire: 'April', maia: 'May', juno: 'June', julius: 'July', augustus: 'August', septem: 'September', octo: 'October', novem: 'November', decem: 'December'}
month_name_sources_cycle = month_name_sources.cycle
month_name_sources_cycle.next
# => [:janus, "January"]