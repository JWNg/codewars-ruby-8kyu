#Description:
#Find_Maximum_and_Minimum_Values_of_a_List
#Your task is to make two functions, max and min that take a vector of integers list as input and outputs, respectively, the largest and lowest number in that vector.
#
#Examples
#
#max([4,6,2,1,9,63,-134,566]) returns 566
#min([-52, 56, 30, 29, -54, 0, -110]) returns -110
#max([5]) returns 5
#min([42, 54, 65, 87, 0]) returns 0
#Notes
#
#You may consider that there will not be any empty vectors.#
def min(list)
  list.sort_by{|a| a}[0]  
end

def max(list)
  list.sort_by{|a| a}[-1]  
end
