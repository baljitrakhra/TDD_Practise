require_relative "../lib/name.rb"

RSpec.describe Person do
  describe 'full_name' do
    it 'return full name' do
    bal = Person.new(first_name: 'Baljit', middle_name: 'Singh', last_name: "Rakhra")
    dal = Person.new(first_name: 'Dal', middle_name: 'Singh', last_name: "Gill")
    expect(bal.full_name).to eq("Baljit Singh Rakhra")
    expect(dal.full_name).to eq("Dal Singh Gill")
    end
     
    it 'return full name with empty middle name not as space' do
    kul = Person.new(first_name: 'Kul', last_name: "Chor")
    expect(kul.full_name).to eq "Kul Chor"
    end
  end
  # - Add a method to return a full name with a middle initial. If the middle name
  #   is missing, there shouldn't be extra spaces or a period. 
  describe 'middle_initial' do
    it 'return a full name with a middle inital' do
    bal = Person.new(first_name: "Baljit", middle_name: "Singh", last_name: "Rakhra")
    dal = Person.new(first_name: "Dal", middle_name: "Singh", last_name: "Gill")
    expect(bal.middle_initial).to eq("Baljit S Rakhra")
    expect(dal.middle_initial).to eq("Dal S Gill")
    end
    it 'return no blank space if middle name is absent' do
    kul = Person.new(first_name: "Kul", last_name: "Chor")
    expect(kul.middle_initial).to eq "Kul Chor"
    end
  end  
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
  describe 'initials' do
    it 'returns initials of full name' do
    bal = Person.new(first_name: "Baljit", middle_name: "Singh", last_name: "Rakhra")
    dal = Person.new(first_name: "Dal", middle_name: "Singh", last_name: "Gill")
    expect(bal.initials).to eq("B S R")
    expect(dal.initials).to eq("D S G")
    end
    it 'returns no blank space if middle name missing' do
    kul = Person.new(first_name: "Kul", last_name: "Chor")  
    expect(kul.initials).to eq("K C")
    end
  end


end