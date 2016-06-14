#Description:
#
#Triple Trouble
#
#Create a function that will return a string that combindes all of the letters of the three inputed strings in groups. Taking the first letter of all of the inputs and grouping them next to each other. Do this for every letter, see example below!
#
#Ex) Input: "aa", "bb" , "cc" => Output: "abcabc"
#
#Note: You can expect all of the inputs to be the same length.
#

def triple_trouble(one, two, three)
  product = ""
  i = 0
  begin 
    product << one[i]
    product << two[i]
    product << three[i]
    i += 1
  end until i == three.length
  product
end
