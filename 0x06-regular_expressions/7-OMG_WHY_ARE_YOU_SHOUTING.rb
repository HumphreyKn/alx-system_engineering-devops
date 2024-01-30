#!/usr/bin/env ruby
# REGEX that must only match capital letters

puts ARGV[0].scan(/[A-Z]/).join
