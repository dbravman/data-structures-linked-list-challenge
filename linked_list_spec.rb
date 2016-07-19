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

  describe "has get" do
    it "gets value for an index" do
      list.insert_last(0)
      list.insert_last(1)
      list.insert_last(2)
      expect(list.get(0)).to eq(0)
      expect(list.get(1)).to eq(1)
      expect(list.get(2)).to eq(2)
    end

    xit "throws error for bad index" do
      expect{list.get(0)}.to raise_error
    end
  end

  describe "has set" do
    it "sets value for an index" do
      list.insert_last("test")
      list.set(0,"new")
      expect(list.get(0)).to eq("new")
    end

    xit "throws error for bad index" do
      expect{list.set(0,"new")}.to raise_error
    end
  end

  describe "has size" do
    it "for non-empty list" do
      list.insert_last(1)
      list.insert_last(2)
      list.insert_last(3)
      expect(list.size).to eq(3)
    end

    it "for empty list" do
      expect(list.size).to eq(0)
    end
  end
end
