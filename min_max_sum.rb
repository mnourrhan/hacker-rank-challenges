#!/bin/ruby
#https://www.hackerrank.com/challenges/mini-max-sum/problem

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    totalSum = 0
    minNum = arr[0]
    maxNum = arr[0]
    arr.each do |elem|
        totalSum += elem
        if elem < minNum then
            minNum = elem
        end
        if elem > maxNum then
            maxNum = elem
        end
    end
    minSum = totalSum - maxNum
    maxSum = totalSum - minNum
    puts minSum.to_s + " " + maxSum.to_s 
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
