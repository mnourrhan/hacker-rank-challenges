#!/usr/bin/env ruby
# https://www.hackerrank.com/challenges/sock-merchant

def sockMerchant(n, ar)
    socks = Hash.new
    pairs_count = 0
    ar.each do |item|
        if socks.has_key?(item) then
            pairs_count = pairs_count + 1
            socks.delete(item)
        else
            socks[item] = item
        end
    end
    return pairs_count
end

puts sockMerchant(9, [10,20,20,10,10,30,50,10,20])

