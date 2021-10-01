# Use Blocks, Procs and Lambda each to write a program which takes
#  array of integers as an input and finds the count of even numbers
#  in the array
arr = [1,2,3,4,5,6,7,8,9,10]

#Block
count = 0
arr.each do |num|
  if(num % 2 == 0)
    count = count + 1 
  end
end
puts "This is Block"
puts count

#Proc
my_proc = Proc.new { |arr|
  var = 0
  arr.each do |num|
    if(num % 2 == 0)
      var = var + 1 
    end
  end
  puts var
}
puts "This is Proc"
my_proc.call(arr)

#Lambda
my_lambda = lambda { |arr|
  var = 0
  arr.each do |num|
    if(num % 2 == 0)
      var = var + 1 
    end
  end
  puts var
}
puts "This is Lambda"
my_lambda.call(arr)

# Create a module which when added should add a class method in the
# Company class created above
module CompanyModule
  def module_function
    puts 'This is a module function'
  end
end

# Write a class in ruby which represents a Company. Add constructors,
# high level private and public methods which suit the company chores
# (eg: divisions in the company, number of employees in each division
#   etc)
class Company
  include CompanyModule #include - class method / extend - instance method
  
  def initialize(divisions, employees)
    @divisions = divisions
    @employees = employees
  end

  private

  def getdivision
    @divisions
  end

  public

  def emp_in_div
    @employees
  end
end
puts
my_c = Company.new(5, 300)
puts my_c.emp_in_div
my_c.module_function
# Create separate sub classes for Product and Services section of
# the same Company class created above and add their separate
# high level methods (eg: For product, what should be the revenue
#   generating factor, similar with services.  Example given is for
#   understanding. Methods with different purpose would be welcome
#   as well)

class Product < Company
  
  def initialize(products_sold, unit_price)
    @product_sold = products_sold
    @unit_price = unit_price
  end

  def revenue
    @product_sold * @unit_price
  end
end

my_p = Product.new(20,200)
puts my_p.revenue
puts
#puts my_p.emp_in_div

# class Services < Company

# end

# Write a method in Company class which reads a csv file containing
# employee details (name, age, designation etc)"

require 'csv'
def emp_details
  table = CSV.parse(File.read("data.csv"), headers: true)
  puts table
end
emp_details
