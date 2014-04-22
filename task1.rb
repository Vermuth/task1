module Enumerable
  def cluster
    cluster = []
    each do |element|
      cluster.last && cluster.last.last == element ? cluster.last << element : cluster << [element]
      end
    cluster
  end
end

class Sequence 
  include Enumerable
  
  def initialize(arg)
    @arg = arg
  end

  def to_s
    @arg.to_s
  end

  def next
    total = []
    @arg = @arg.to_s.split('')
    @arg.cluster.map{ |x| total <<  x.uniq.unshift(x.size) }
    @arg = total.flatten!.join.to_i
    self
  end

end

