def bubble_sort(unsorted)
  unsorted.each do
    x = 0
    y = 1
    until y == unsorted.size
      unsorted.insert(x, unsorted.delete_at(y)) if unsorted[x] > unsorted[y] 
      x += 1
      y += 1
    end
  end
end
bubble_sort [150, 45, 12, 8]
