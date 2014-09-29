#ruby comment
puts "this is a ruby file"

x = ["x", "y", "z"]

puts x.length

x.each do |z| puts z end

puts "lets build a hash"

x = [10]
$zz = []
10.times do |y| x.each {|z| $zz += z+1 } end
$zz.each do |z_val| puts z_val end
