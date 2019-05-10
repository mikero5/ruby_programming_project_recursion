# 
# Merge Sort
# 
# 
# 
# 

def split(array)
  temp = array
  b = temp.slice!(0, temp.length/2)
  return b, temp
end

def merge(array1, array2)
  a1 = array1.flatten
  a2 = array2.flatten
  retval = []
  last = a1.length + a2.length

  (0..last).each {|i|
    if a1.length == 0
      return [retval, a2].flatten
    elsif a2.length == 0
      return [retval, a1].flatten
    else
      val = [a1[0], a2[0]].min
      retval.push(val)
      if a1[0] == val
        a1.shift
      else
        a2.shift
      end
    end
  }
  retval
end

def merge_sort(array)
  retval = []
  if(array.length > 1)
    a, b = split(array)
    if a.length == 1 && b.length == 1
      return [[a,b].min, [a,b].max]
    elsif a.length == 1 && b.length == 0
      return a
    elsif b.length == 1 && a.length == 0
      return b
    else
      a = merge_sort(a)
      b = merge_sort(b)
      retval = merge(a,b)
    end
  else
    return array
  end
  retval
end

p merge_sort([9,8,7,6,5,4,3,2,1])
p merge_sort([5,9,4,8,6,7,3,1])
p merge_sort([7])
