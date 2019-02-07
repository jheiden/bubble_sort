
 
class Bubblesort

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
      @num_shifts = 0
      while i < (arr.length - 1) do
        if arr[i] > arr[i + 1]
          temp = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = temp
          @num_shifts += 1
        end 
        i += 1
      end
      break if has_not_shifted
      i = 0
    end
  puts arr
  end




  
  def has_not_shifted
    return true if @num_shifts == 0
  end

end 


my_var = Bubblesort.new()
my_var.sort_array([4, 2, 9, 1, 5, 10, 2, 1])

