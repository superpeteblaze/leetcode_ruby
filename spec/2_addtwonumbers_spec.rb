require "spec_helper"
require '2_addtwonumbers.rb'
require 'listnode.rb'

describe AddTwoNumbers do
    it "returns ListNode [7,0,8] for ListNode [2,4,3] and ListNode [5,6,4]" do
   
        # TODO: Create convenience method to easily create LinkedList from array of values

        list_one = ListNode.new()
        list_two = ListNode.new()
        list_result = ListNode.new()
        add_two_numbers = AddTwoNumbers.new
        expect(add_two_numbers.add_two_numbers(list_one,list_two)).to eq(list_result)
    end
  end