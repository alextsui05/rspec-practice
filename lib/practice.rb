class Practice
  # Calculate the n-th Fibonacci number, defined by these equations:
  #
  #   F(0) = 0
  #   F(1) = 1
  #   F(n) = F(n - 1) + F(n - 2), for n > 1.
  #
  def fib(n)
    return n if n <= 1
    fib_arr = [0, 1, 1]
    (n - 2).times { fib_arr << (fib_arr[-1] + fib_arr[-2]) }
    fib_arr[n]
  end
end
