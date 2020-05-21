def bubble_sort()
  puts 'size of array:'
  size = gets.chomp.to_i
  puts ''
  puts 'max values in array'
  max_values = gets.chomp.to_i
  puts ''
  a = size.times.map{Random.rand(max_values)}
  puts 'original array: # { a }'
  puts ''
  a.each do
    x = 0
    y = 1
    until y == a.size
      if a[x] > a[y]
        a.insert(x, a.delete_at(y))
        puts 'ordering'
        puts ''
        puts a
        puts ''
      end
      x +=1
      y +=1
    end
  end
end
puts bubble_sort
