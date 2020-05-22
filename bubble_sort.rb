def bubble_sort(unsorted)
  unsorted.each do
    x = 0
    y = 1
    until y == unsorted.size
      if unsorted[x] > unsorted[y]
        unsorted.insert(x, unsorted.delete_at(y))
      end
      x += 1
      y += 1
    end
  end
end
bubble_sort [150, 45, 12, 8]
