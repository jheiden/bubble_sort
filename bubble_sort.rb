
 
class Bubblesort
  
  attr_accessor :is_sorted, :counter

  def initialize
    @shifted = ""
  end


  def sort_status
    @is_sorted = false
  end

  def sort_array (arr)
    @arr = arr
    i = 0
    temp = 0

   (arr.length - 1).times do
  
      orig_array = 
    # store array in a var

      while i < (arr.length - 1) do

        if arr[i] > arr[i + 1]
          temp = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = temp
        end

        i += 1
      end
    # test if stored array == initial stored var
      i = 0
    end
  puts arr
 
  end
  
# Need some validation to improve performance
  def count_shifts
    @shifted = true

  end

end 


my_var = Bubblesort.new()
my_var.sort_array([4, 2, 9, 1, 5, 10, 2, 1])

