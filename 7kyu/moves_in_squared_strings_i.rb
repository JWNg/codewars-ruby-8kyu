#moves_in_squared_strings_i.rb
#This kata is the first of a sequence of four about "Squared Strings".
#
#You are given a string of n lines, each substring being n characters long: For example:
#
#s = "abcd\nefgh\nijkl\nmnop"
#
#We will study some transformations of this square of strings.
#
#Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
#vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
#Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
#hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
#or printed:
#
#vertical mirror   |horizontal mirror   
#abcd --> dcba     |abcd --> mnop 
#efgh     hgfe     |efgh     ijkl 
#ijkl     lkji     |ijkl     efgh 
#mnop     ponm     |mnop     abcd
#Task:
#
#Write these two functions
#and
#
#high-order function oper(fct, s) where
#
#fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)
#Examples:
#
#s = "abcd\nefgh\nijkl\nmnop"
#oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
#oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"
#Note:
#
#The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Your test cases".
#Forthcoming katas will study other tranformations.
#
#
# 
#

def vert_mirror(string)
  arr = string.split("\n")
  vert_mirror = []
  arr.each {|num| vert_mirror << num.reverse}
  vert_mirror  
end

def hor_mirror(string)
  arr = string.split("\n")
  arr = arr.reverse
end
def oper(fct, s) 
  binding.pry
  fct == method(:vert_mirror) ? arr = vert_mirror(s) : arr = hor_mirror(s)
  arr.join("\n")
end

p oper(method(:vert_mirror), "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu")#"QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"
p oper(:vert_mirror, "IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx")
