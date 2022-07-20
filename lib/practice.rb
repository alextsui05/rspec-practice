class Practice
  # Calculate the n-th Fibonacci number, defined by these equations:
  #
  #   F(0) = 0
  #   F(1) = 1
  #   F(n) = F(n - 1) + F(n - 2), for n > 1.
  #
  def fib(n)
    return n if n <= 1
    # 0 and 1 are the base cases - everything else is a sum
    fib_arr = [0, 1]
    (n - 1).times do
      fib_arr << (fib_arr[-1] + fib_arr[-2])
      # By removing the unneeded number from the array, it uses a constant amount of memory
      fib_arr.shift
    end
    fib_arr[-1]
  end
end
