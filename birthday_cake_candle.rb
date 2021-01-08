#!/bin/ruby
#https://www.hackerrank.com/challenges/birthday-cake-candles/problem

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # Write your code here
    tallestCandel = 0
    tallestCandelCount = 0
    candles.each do |candle|
        if tallestCandel == candle then
            tallestCandelCount += 1
        elsif tallestCandel < candle then
            tallestCandel = candle
            tallestCandelCount = 1
        end
            
    end
    return tallestCandelCount
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles

fptr.write result
fptr.write "\n"

fptr.close()
