class Anagram
	attr_accessor :inputs, :outputs
	def initialize(inputs)
		@inputs = inputs
		@outputs = []
	end

	def output
		temp_inputs = inputs
		temp_inputs.each do |t_input|
			ot = 
				inputs.select do |input|
					input if anagram?(t_input, input)
				end
			outputs << ot
		end
		outputs.uniq.sort.reverse!
	end

	def formatted_output
		outputs = output
		formatted_text = ""
		outputs.each do |output|
			sorted_output = output.sort 
			formatted_text += "#{sorted_output.length}: #{sorted_output.join(', ')} \n"
		end
		formatted_text
	end

	def anagram?(target, w)
	  return false unless w.size == target.size
	  w.each_char.sort == target.each_char.sort
	end
end


