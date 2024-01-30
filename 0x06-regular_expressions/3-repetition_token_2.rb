#!/usr/bin/env ruby
# Regex that matches the following"
# hbtn
# hbttn
# hbtttn
# hbttttn

puts ARGV[0].scan(/hbt+n/).join
