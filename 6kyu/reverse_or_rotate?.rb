#The input is a string str of digits. Cut the string into chunks of size sz (ignore the last chunk if its size is less than sz).
#
#If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse it; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.
#
#If
#
#sz is <= 0 or if str is empty return ""
#sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".
#Examples:
#revrot("123456987654", 6) --> "234561876549"
#revrot("123456987653", 6) --> "234561356789"
#revrot("66443875", 4) --> "44668753"
#revrot("66443875", 8) --> "64438756"
#revrot("664438769", 8) --> "67834466"
#revrot("123456779", 8) --> "23456771"
#revrot("", 8) --> ""
#revrot("123456779", 0) --> ""
#

def revrot(str, sz)
  return "" if str == "" || sz <= 0 || str.length < sz
  
  str_sets = str.scan(/.{1,#{sz}}/)
  solution = ""
  str_sets.each {|chunk| solution << revrot_check(chunk, sz) if chunk.size == sz}  
  solution
end

def revrot_check(string, length)
  sum_cubed = 0
  for i in 0..length do
    sum_cubed += (string[i].to_i**3)
  end
  sum_cubed % 2 == 0 ? string.reverse! : (string = string[1..-1]+string[0])
end
