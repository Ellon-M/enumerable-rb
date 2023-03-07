module MyEnumerable
  def all?(&block)
    each { |item| return false unless block.call(item) }
    true
  end

  def filter(&block)
    res = []
    each { |item| res << item if block.call(item) }
    res
  end

  def any?(&block)
    each { |item| return true if block.call(item) }
    false
  end
end
