# Use Blocks, Procs and Lambda each to write a program which takes
#  array of integers as an input and finds the count of even numbers
#  in the array

# Write a class in ruby which represents a Company. Add constructors,
# high level private and public methods which suit the company chores
# (eg: divisions in the company, number of employees in each division
#   etc)
class Company
  def initialize(divisions, employees)
    @divisions = divisions
    @employees = employees
  end

  private

  def get_division
    @divisions
  end

  public

  def emp_in_div
    @employees
  end
end
puts "No of div"
# puts Company.new(5, 300)

# Create a module which when added should add a class method in the
# Company class created above

module CompanyModule
  def my_function
    puts 'This is a function'
  end
end

class Company
  extend CompanyModule
end

# Create separate sub classes for Product and Services section of
# the same Company class created above and add their separate
# high level methods (eg: For product, what should be the revenue
#   generating factor, similar with services.  Example given is for
#   understanding. Methods with different purpose would be welcome
#   as well)

class Product < Company
  def super(products_sold, unit_price)
    @product_sold = products_sold
    @unit_price = unit_price
  end

  def revenue
    product_sold * price
  end
end

class Services < Company

end

# Write a method in Company class which reads a csv file containing
# employee details (name, age, designation etc)"

require 'csv'
  def emp_details
    table = CSV.parse(File.read("data.csv"), headers: true)
    puts table
  end


