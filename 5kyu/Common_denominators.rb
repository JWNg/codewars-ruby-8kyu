#Common_denominators.rb
#
#You will have a list of rationals in the form
#
# [ [numer_1, denom_1] , ... [numer_n, denom_n] ]
#where all numbers are positive ints.
#
#You have to produce a result in the form
#
# [ [N_1, D] ... [N_n, D] ]
#in which D is as small as possible and
#
# N_1/D == numer_1/denom_1 ... N_n/D == numer_n,/denom_n.
#Example :
#
# [ [1, 2], [1, 3], [1, 4] ] produces the array [ [6,12], [4,12], [3,12] ]
#FUNDAMENTALSALGORITHMSMATHEMATICSNUMBERS

def convertFracts(lst)
  denom = []
  lst.each{|pair| denom << pair[1]}
  largest = denom.sort[-1]
  lowest_common_denom = 0
  begin 
    common_denom(largest, denom) == true ? lowest_common_denom = largest : largest *= next_multiple(largest, denom) 

  end until lowest_common_denom != 0
  equal_fract(lowest_common_denom, lst)
end

def next_multiple(largest, denom)
  i = 0

  begin
    largest % denom.sort[i] != 0 ? (return denom.sort[i]) : i += 1

  end until (i+1) == denom.size
  denom.sort[i]
end

def common_denom(largest, denom)
  denom.each do |num|
    return false if largest%num != 0
  end
  true
end

def equal_fract(lowest_common_denom, lst)
  new_array = []
  lst.each do |pair|
    multiple = lowest_common_denom / pair[1]
    new_array << [pair[0]*multiple , lowest_common_denom]
  end
  new_array
end
