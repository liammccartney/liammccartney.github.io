---
layout: post
title: Liam's Blog
---
## Enumberable#cycle

`Enumberable#cycle` is a powerful method that can be use in a variety of ways.
At first glance it operates a lot like `each` but it actually extends beyond that.
`cycle` iterates through an array or a hash and passes each element (or key/value pair) to a block of code. If a limit or `break` condition is not supplied, it will cycle for ever.

`months = %w{January February March April May June July August September October November December}`
`# => ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]`
`months.cycle {|month| p month}`
`# => prints each month in a cycle infinitely`

You can set how many times you would like to cycle through like so:

`months.cycle(2) {|month| p month}`
`# => prints out each month in a cycle twice`

You another way to exit the cycle is to set a break condition.

`months.cycle do |month|`
  `p month`
  `break if month == "July"`
`end`
`# => prints out each month until it reaches July`

However there’s an even more useful way to use `cycle`.
When `cycle` does not receive either a limit or a code block, it returns an enumerator of the object it was called on.
This can then be manipulated used `next` and `rewind`.

`month_cycle = months.cycle`
`# => returns an enumerator of the array months`

`month_cycle.next`
`# => "January"`
`month_cycle.next`
`# => "February"`
`month_cycle.next`
`# => "March"`
`# => etc`

`month_cycle.rewind`
`# => resets the enumerator back to the first time`
`month_cycle.next`
`# => "January"`

If you turn a hash into an enumerator, then `next` will return a two element array of the next key/value pair
`month_name_sources = {janus: 'January', februalia: 'February', mars: 'March', aperire: 'April', maia: 'May', juno: 'June', julius: 'July', augustus: 'August', septem: 'September', octo: 'October', novem: 'November', decem: 'December'}`
`month_name_sources_cycle = month_name_sources.cycle`
`month_name_sources_cycle.next`
`# => [:janus, "January"]`
p>