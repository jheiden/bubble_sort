
# refactored version using a switch statement.

def bubble_sort_using_yield arr
  temp = 0
  (arr.length - 1).times do 
  (arr.length - 1).times do |x|
    test_output = yield(arr[x], arr[x + 1]) 
    case test_output
    when -1
      arr[x + 1], arr[x] = arr[x], arr[x + 1]
    when 1
      arr[x], arr[x + 1] = arr[x + 1], arr[x]
    end
  end
  end
     arr
end

x = bubble_sort_using_yield(["test", "hej", "aaaaaaaaaa", "m"]) do |left, right|
  left.length <=> right.length
  # end
end



def bubble_sort_using_yield arr
  temp = 0
  
  (arr.length - 1).times do 
  (arr.length - 1).times do |x|
    if(yield(arr[x], arr[x + 1]) > 0) 
      arr[x], arr[x + 1] = arr[x + 1], arr[x]
    end
  end
  end
     arr
end

x = bubble_sort_using_yield(["test", "hej", "aaaaaaaaaa"]) do |left, right|
  left.length <=> right.length
  # end
end

puts x

   
   