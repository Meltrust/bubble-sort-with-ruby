def bubble_sort(a)
  a.each do
    x = 0
    y = 1
    until y == a.size
      if a[x] > a[y]
        a.insert(x, a.delete_at(y))
        puts 'ordering'
        puts a
      end
      x += 1
      y += 1
    end
  end
end
bubble_sort ([150, 45, 12, 8])
