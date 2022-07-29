class Person
  # your code here
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method 
      self.class.attr_accessor(key)
      # send will set value to appropriate setter method
      self.send("#{key}=", value)
    end

  end
end
