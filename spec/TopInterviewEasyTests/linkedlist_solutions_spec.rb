# frozen_string_literal: true

require 'spec_helper'
require './lib/TopInterviewEasy/linkedlist_solutions'
require './lib/DataTypes/listnode'

describe LinkedListSolutions do
  sut = LinkedListSolutions.new

  context 'Checks Delete Node in a Linked List' do
    it 'Returns [4, 1, 9] when head is [4, 5, 1, 9] and node is 5' do
      node = ListNode.new(5, ListNode.new(1, ListNode.new(9)))
      head = ListNode.new(4, node)
      head.delete_node(node)
      expect(head).to eq(ListNode.from_array([4, 1, 9]))
    end

    it 'Returns [4, 5, 9] when head is [4, 5, 1, 9] and node is 1' do
      node = ListNode.new(1, ListNode.new(9))
      head = ListNode.new(4, ListNode.new(5, node))
      head.delete_node(node)
      expect(head).to eq(ListNode.from_array([4, 5, 9]))
    end
  end

  context 'Checks Remove Nth Node From End of List' do
    it 'Returns [1, 2, 3, 5] when head is [1, 2, 3, 4, 5] and n is 2' do
      head = ListNode.from_array([1, 2, 3, 4, 5])
      expected_result = ListNode.from_array([1, 2, 3, 5])
      n = 2
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [] when head is [1] and n is 1' do
      head = ListNode.new(1)
      expected_result = nil
      n = 1
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [1] when head is [1, 2] and n is 1' do
      head = ListNode.from_array([1, 2])
      expected_result = ListNode.new(1)
      n = 1
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [2] when head is [1, 2] and n is 2' do
      head = ListNode.from_array([1, 2])
      expected_result = ListNode.new(2)
      n = 2
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end

    it 'Returns [2, 3, 4, 5] when head is [1, 2, 3, 4, 5] and n is 5' do
      head = ListNode.from_array([1, 2, 3, 4, 5])
      expected_result = ListNode.from_array([2, 3, 4, 5])
      n = 5
      result = sut.remove_nth_from_end(head, n)
      expect(result).to eq(expected_result)
    end
  end
end