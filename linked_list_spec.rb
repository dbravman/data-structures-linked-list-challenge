require_relative 'linked_list'

describe LinkedList do
  let(:list) {LinkedList.new}

  describe "has insert_first" do
    it "inserts to an empty list" do
      list.insert_first(0)
      expect(list.first_node.value).to eq(0)
      expect(list.first_node.next).to be(nil)
    end

    it "inserts to a non-empty list" do
      list.insert_first(0)
      list.insert_first(1)
      expect(list.first_node.value).to eq(1)
      expect(list.first_node.next.value).to eq(0)
    end
  end

  describe "has remove_first" do
    it "removes the first from a list" do
      list.insert_first(0)
      list.insert_first(1)
      list.remove_first
      expect(list.first_node.value).to eq(0)
      expect(list.first_node.next).to be(nil)
    end

    it "removes the first from a single-element list" do
      list.insert_first(0)
      list.remove_first
      expect(list.first_node).to be(nil)
    end  

    it "returns nil if empty list" do
      list.remove_first
      expect(list.remove_first).to be(nil)
    end
  end

  describe "has insert last" do
    it "inserts to an empty list" do
      list.insert_last(0)
      expect(list.first_node.value).to eq(0)
      expect(list.first_node.next).to be(nil)
    end

    it "inserts to a non-empty list" do
      list.insert_first(0)
      list.insert_last(1)
      expect(list.first_node.next.value).to eq(1)
      expect(list.first_node.next.next).to be(nil)
    end
  end

  describe "has remove last" do
    it "removes the last from a list" do
      list.insert_first(0)
      list.insert_first(1)
      list.remove_last
      expect(list.first_node.value).to eq(1)
      expect(list.first_node.next).to be(nil)
    end

    it "removes the first from a single-element list" do
      list.insert_first(0)
      list.remove_last
      expect(list.first_node).to be(nil)
    end

    it "returns nil if empty list" do
      expect(list.remove_last).to be(nil)
    end
  end
end
