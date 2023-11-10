require 'rspec'
require_relative '../lib/tdd.rb'

  describe "#my_uniq" do
    let(:arr_1) { [1,2,3,3] } #original
    let(:arr_2) { [1,2,3] }   # correct output 
    
    context "with valid arguments" do 
      it "should accept an array as an argument" do 
        expect { my_uniq(arr_1) }.to_not raise_error
      end
    end
    
    context "with invalide arguments" do 
      it "should raise error when input is not an array" do
        expect { my_uniq("big boy string") }.to raise_error
        expect { my_uniq(1230) } .to raise_error("wrong type")    
      end
    end 

    
    # it "should return a new array" do
    #   expect(my_uniq(arr_1).to eq(arr_2)
    # end
    
    # it "should NOT mutate the original array" do
    #   # raise error if output is the same array
    #   expect my_uniq(arr_1).to eq(arr_1).to raise_error
    # end

    # # we want elements to be ordered 
    # # we expect no duplicate element, only unique elements
    # it "should return a new array" do 
    #   expect { my_uniq(arr_1) }.to eq(arr_2)
    # end

    # it "should display elements as they first appeared" do 
    #   expect { my_uniq(arr_1)}.to eq(arr_2)
    # end

    # it "should not contain elements that are not unique" do
    #   expect { my_uniq(arr_1)}.to eq(arr_2)
    # end

  end