# using iteration

def fibs(num_until)
  arr_of_fib_numbers = []
  i = 0

  while i < num_until
    if i < 2
      arr_of_fib_numbers << i
    else
      fib = arr_of_fib_numbers[i - 1] + arr_of_fib_numbers[i - 2]
      arr_of_fib_numbers << fib
    end
    i += 1
  end
  arr_of_fib_numbers[-1]
end


# using recursion

arr_of_fib_numbers = []

def fibs_rec(num_until)
  if num_until < 2
    return num_until
  else
    fibs_rec(num_until - 1) + fibs_rec(num_until - 2)
  end
end


print "Input the number you'd like to get the fibonacci of: "
answer = gets.chomp.to_i

while answer >= 0
  arr_of_fib_numbers.push(fibs_rec(answer))
  answer -= 1
end


p arr_of_fib_numbers.reverse
