#maximum_length_difference.rb
#
#Description:
#
#You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.
#
#Find max(abs(length(x) − length(y)))
#
#If a1 or a2 are empty return -1 in each language except in Haskell where you will return Nothing.
#
#Example:
#
#s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
#s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
#mxdiflg(s1, s2) --> 13
#FUNDAMENTALS
# 


def mxdiflg(a1, a2)
  return -1 if a1.size == 0 || a2.size == 0 || a1.nil? || a2.nil?
  a1 = a1.map {|str| str.size}.sort
  a2 = a2.map {|str| str.size}.sort
  min1, min2, max1, max2 = a1[0], a2[0], a1[-1], a2[-1]
  (max1 - min2).abs > (max2 - min1).abs ? max = (max1 - min2).abs : max = (max2 - min1).abs
end

s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(s1,s2)
