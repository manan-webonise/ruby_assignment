def is_prime(arr)
	arr.each{|num|
  flag = false
  if num>1
    for i in 2..num-1
      if num%i==0
        flag = true
        break
      end
    end
    if flag==false
      puts "#{num} is a prime number"
    end
  end
  }
end
is_prime([2, 3, 5, 6, 7, 1])