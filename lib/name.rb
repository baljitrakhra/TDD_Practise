# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

class Person
    def initialize(first_name:, middle_name: nil, last_name:)
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
      @name = [@first_name, @middle_name, @last_name]
    end
    
    def full_name
      @name.compact.join(" ")
    end    
    
    def middle_initial
      if @middle_name != nil
        middle_name = @middle_name.chr
        name = [@first_name, middle_name, @last_name]
      else
        name = [@first_name,@last_name]
      end  
      return name.join(" ")
    end

    def initials
      name = []
      @name.each do |x| 
        if x != nil
        name.push(x.chr)
        end
      end
      name.join(" ")
    end
  end
  
