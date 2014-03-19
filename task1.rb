class Task
		#инициализация
	def initialize(chislo, round)
		@chislo = chislo
		@round = round
		@array = []
	end
		#расчёт
	def calc
		@array << @chislo
		total, uniq, kol = [], 1, 0
		1.upto(@round) do
			@array.each do |arg|
				kol += 1 if uniq == arg
				if uniq != arg
					total << kol << uniq if kol > 0
					uniq = arg
					kol = 1
				end
			end
			total << kol << uniq if kol > 0
			p @array = total
			total, uniq, kol = [], 1, 0
		end
		return @array
	end
end

#1ое число с какого значения начинать
#2е число, до какого раундаы продолжить
task1 = Task.new(1, 10)
task1.calc