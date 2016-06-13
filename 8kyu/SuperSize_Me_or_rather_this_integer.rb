#Description:
#
#Write a function that rearranges an interger into its largest possible value.
#
#super_size(123456) # 654321
#super_size(105)    # 510
#super_size(12)     # 21
#If the argument passed through is single digit or is already the maximum possible integer, your function should simply return it.#

def super_size(n)
  n = n.to_s.split(//).sort.reverse
  big = ""
  n.each {|i| big << i}
  big.to_i
end
