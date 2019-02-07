
 
class Bubblesort
  
  attr_accessor :is_sorted, :counter

  def sort_status
    @is_sorted = false
  end

  def sort_array (arr)
    @arr = arr
    i = 0
    temp = 0
   (arr.length - 1).times do
    while i < (arr.length - 1) do
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp 
      end
      i += 1
      end
    i = 0
    end
  puts arr
 
  end
  

  def count_shifts
    @shifts = 0

  end

end 


my_var = Bubblesort.new()
my_var.sort_array([4, 2, 9, 1, 5, 10, 2, 1])

