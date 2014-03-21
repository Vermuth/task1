module Enumerable
  def cluster
    cluster = []
    each do |element|
      if cluster.last && cluster.last.last == element
       cluster.last << element
      else
       cluster << [element]
      end
    end
    cluster
  end
end

def start(number, round)
  total = []
  round.times do
    number.cluster.map{ |x| total <<  x.uniq.unshift(x.size) }
    p number = total.flatten!
    total = []
  end
end

start([1], 10)
