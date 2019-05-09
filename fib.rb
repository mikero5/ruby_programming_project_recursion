#
#
#
#
#
#
#

def fib(index)
  retval = 0
  fib = [0,1,1];
  
  if index <= 1
    retval = index
  elsif index == 2
    retval = 1
  else
    (3..index).each {|i|
      fib.push(fib[i-1] + fib[i-2])
    }
    retval = fib[index]
  end
  retval
end

def fibs(index)
  retval = []

  (0..index).each {|x|
    retval.push(fib(x))
  }
  retval
end

def fib_rec(index)
  retval = 0

  if index == 0
    retval = 0
  elsif index <= 2
    retval = 1
  else
    retval = fib_rec(index - 1) + fib_rec(index - 2)
  end
  
  retval
end

def fibs_rec(index)
  retval = []
  (0..index).each {|i|
    retval.push(fib_rec(i))
  }
  retval
end

p fibs(10)
p fibs_rec(10)

