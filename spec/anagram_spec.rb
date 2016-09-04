require './anagram.rb'
require 'pry'
describe Anagram do
	let(:inputs) { ['how','who','here','paw','wap','awp'] }

	describe '#output' do
		let(:outputs) { [['paw', 'wap', 'awp'], ['how', 'who'], ['here']] }
		subject { Anagram.new(inputs).output }
		it 'gives outpus in required array' do
			expect(subject).to eql(outputs)
		end
	end

	describe '#formatted_output' do
		let(:outputs) do
			"3: awp, paw, wap \n2: how, who \n1: here \n"
		end

		subject { Anagram.new(inputs).formatted_output }

		it 'gives text in expected format' do
			expect(subject).to eql(outputs)
		end
	end
end