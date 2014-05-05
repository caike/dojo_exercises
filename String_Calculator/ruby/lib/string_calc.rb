module StringCalc
  def self.add(nums)
    sum_all(nums) unless invalid(nums) || negatives(nums)
  end

  def self.invalid(nums)
    fail('ending in newline') if nums[-1, 1] == "\n"
  end

  def self.sum_all(nums)
    nums.split(/[^0-9]/).map(&:to_i).reject { |n| n > 1000 }.reduce(0, :+)
  end

  def self.negatives(nums)
    target = nums.scan(/-\d+/)
    fail("negatives not allowed: #{target.join(', ')}") if target.any?
  end

  private_class_method :sum_all, :invalid, :negatives
end
