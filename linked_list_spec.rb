require_relative 'linked_list'

describe LinkedList do
  let(:list) {LinkedList.new}

  it "has insert_first" do
    list.insert_first(0)
    list.first_node
    expect(list.first_node.value).to eq(0)
    expect(list.first_node.next).to be(nil)
  end

  
end
