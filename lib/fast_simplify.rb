require "fast_simplify/version"

module FastSimplify
  def self.simplify(array, rate)
    len = array.length
    return array if len <= 2 || rate == 1
    return [array[0], array[-1]] if rate == 0

    result_count = len * rate
    max_index = len - 1
    step = max_index / (result_count - 1)

    result = []
    0.step(max_index, step) do |n|
      result << array[n.round]
    end
    #puts "len: #{len}, result_count: #{result_count}, step: #{step}, result.length: #{result.length}, result: #{result.inspect}"
    result
  end
end
