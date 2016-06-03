
#The four bases found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
#
#In genetics, GC-content is the percentage of Guanine (G) and Cytosine (C) bases on a DNA molecule that are either guanine or cytosine.
#
#Given a DNA sequence (a string) return the GC-content in percent, rounded up to 2 decimal digits.
#
#For more information about GC-content you can take a look to wikipedia GC-content.
#
#For example: the GC-content of the following DNA sequence is 50%: "AAATTTCCCGGG".
#

def gc_content(dna)
  return 0.00 if dna.size == 0
  gc_count = (dna.upcase.count("G") + dna.upcase.count("C")).to_f
  (gc_count*100/dna.size).round(2)
end
