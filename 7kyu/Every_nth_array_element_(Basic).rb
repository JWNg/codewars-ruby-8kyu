#Description:
#
#Create a method (JS: function) every which returns every nth element of an array.
#
#Usage
#
#With no arguments, array.every it returns every element of the array.
#With one argument, array.every(interval) it returns every intervalth element.
#With two arguments, array.every(interval, start_index) it returns every intervalth element starting at index start_index
#
#Note: due to fact JS translation ask for a function instead of an Array method the above uses will def be(
#
#Examples
#
#[0,1,2,3,4].every      # [0,1,2,3,4]
#[0,1,2,3,4].every(1)   # [0,1,2,3,4]
#[0,1,2,3,4].every(2)   # [0,2,4]
#[0,1,2,3,4].every(3)   # [0,3]
#[0,1,2,3,4].every(1,3) # [3,4]
#[0,1,2,3,4].every(3,1) # [1,4]
#[0,1,2,3,4].every(3,4) # [4]

#Notes
#
#Test cases:
#
#interval will always be a positive integer (but may be larger than the size of the array).
#start_index will always be within the bounds of the array.
#
#Once you have completed this kata, try the advanced version (http://www.codewars.com/kata/every-nth-array-element-advanced) which allows negative intervals and unbounded start_indexes
#
#Beta kata notes
#
#Ruby is the original language for this kata.
#
#Can you suggest any missing test cases?

class Array  
  def every(interval=1, start_index=0)
    return_array, i = [], start_index
    until i >= self.size do
      return_array << fetch(i)
      i += interval
    end
    return_array
  end
end
