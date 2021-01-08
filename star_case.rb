#!/bin/ruby
#https://www.hackerrank.com/challenges/staircase/problem

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
    i = 1
    while i <= n
        spacesCounts = n-i
        hashesCounts = i
        puts " " * spacesCounts + "#" * hashesCounts
        i += 1
    end
end

n = gets.to_i

staircase n
