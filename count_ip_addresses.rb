# count_ip_addresses.rb
#Write a function that accepts a starting and ending IPv4 address, and returns the number of IP addresses from start to end, excluding the end IP address. 
#All input to the ipsBetween function will be valid IPv4 addresses in the form of strings. The ending address will be at least one address higher than the starting address. 
#
#
#Examples: 
#ipsBetween("10.0.0.0", "10.0.0.50") => returns 50 
#ipsBetween("10.0.0.0", "10.0.1.0") => returns 256 
#ipsBetween("20.0.0.10", "20.0.1.0") => returns 246

def ipsBetween(start, ending)
  def parse_to_array(num)
    num = num.split(".")
    num.each_index {|index| num[index] = num[index].to_i }
  end
  
  start = parse_to_array(start)
  ending = parse_to_array(ending)
  diff_3 = ending[3]- start[3]
  diff_2 = 256*(ending[2]-start[2])
  diff_1 = 65536*(ending[1]-start[1])
  diff_0 = 16777216*(ending[0]-start[0])
  total = diff_3 + diff_2 + diff_1 + diff_0  
end
