  def my_uniq(arr)
    raise "wrong type" if !arr.is_a?(Array)
    new_arr = []

    (0...arr.length - 1).each do |i|
      new_arr << arr[i] if !new_arr.include?(arr[i]) 
    end
    new_arr
  end 
