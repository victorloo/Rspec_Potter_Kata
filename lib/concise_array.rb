class ConciseArray

  def add(nums)
    @concise_array = nums
  end

  def removeDuplicates
    @concise_array.uniq!.size
  end

end