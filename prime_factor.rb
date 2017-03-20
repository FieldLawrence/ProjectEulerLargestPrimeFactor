class PrimeFactor
  require 'prime'
  given_number_to_factor = 600851475143
  current_number = 2

  # Determine the square root of the given number to find the prime factors in order to make the program run faster
  # Based on Number Theory
  square_root_given_number = Math.sqrt(given_number_to_factor)

  # While loop in order to find the primes factors of the given number less than the square root
  while current_number < square_root_given_number
    largest_prime = current_number if given_number_to_factor % current_number == 0 && Prime.prime?(current_number)
    current_number += 1
  end
  print " Largest Prime Factor of #{given_number_to_factor} is : #{largest_prime}"
end