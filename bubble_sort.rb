
class Bubblesort

  def initialize
    @num_of_iterations = 0
  end

  def sort_status
    @is_sorted = false
  end

  def sort_array arr
    @arr = arr
    i = 0
    temp = 0
   (arr.length - 1).times do
      @num_shifts = 0
        while i < (arr.length - 1) do
        if arr[i] > arr[i + 1] then temp = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = temp
          @num_shifts += 1
        end 
          i += 1
      end
      break if has_not_shifted
      @num_of_iterations += 1
      i = 0
    end
    puts "Number of iterations = #{@num_of_iterations}"
      return arr
  end

  def has_not_shifted
    return true if @num_shifts == 0
  end

end 


my_var = Bubblesort.new()
x = my_var.sort_array([9, 5, 3, 1, 9, 1, 7, 1])
puts x
