#
#Input: Array of elements
#
#["h","o","l","a"]
#
#Output: String with comma delimited elements of the array in th same order.
#
#"h,o,l,a"

def printArray(array)
  array.flatten!
  string = ""
  array.each {|letter| string << "#{letter},"}
  string.chomp(",")
end
