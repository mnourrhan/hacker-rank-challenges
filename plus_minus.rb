#!/bin/ruby
#https://www.hackerrank.com/challenges/plus-minus/problem

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    totalPositives = 0.0;
    totalNegatives = 0.0;
    totalZeros = 0.0;
    arrCount = 0.0;
    arr.each do |element|
        if element > 0 then 
            totalPositives +=1
        elsif element < 0 then 
            totalNegatives +=1
        else
            totalZeros +=1
        end  
        arrCount += 1 
    end
    
    if arrCount == 0
        puts "%.6f" % totalPositives
        puts "%.6f" % totalNegatives
        puts "%.6f" % totalZeros
    else
        puts "%.6f" % (totalPositives/arrCount)
        puts "%.6f" % (totalNegatives/arrCount)
        puts "%.6f" % (totalZeros/arrCount)
    end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr