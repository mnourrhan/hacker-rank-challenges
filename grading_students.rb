#!/bin/ruby
#https://www.hackerrank.com/challenges/grading/problem

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades)
    rounded_grades = []
    grades.each do |grade|
        if (grade % 5 >= 3 && grade >= 38) then
            rounded_grades.push(grade + 5 - (grade % 5))
        else
            rounded_grades.push(grade)
        end
    end
    return rounded_grades
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
