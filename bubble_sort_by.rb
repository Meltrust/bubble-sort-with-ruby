def bubble_sort_by(a)
  a.each do
    x = 0
    y = 1
    until y == (a.size)
      comparison = yield(a[x], a[y])
      if comparison.positive?
        a.insert(x, a.delete_at(y))
        puts "ordering"
        puts ""
        puts a
        puts ""
      end
     x = x + 1
     y = y + 1
   end
  end
end
a = %w[hello friends worlds hi complicated bye]
print bubble_sort_by(a) { |str1, str2| str1.length - str2.length}