require_relative 'node'

describe Node do
  let(:node) {Node.new(1)}
  let(:next_node) {Node.new(2)}
  let(:previous_node) {Node.new(0)}

  it "inserts before" do
    node.insert_before(next_node)
    expect(node.next).to be(next_node)
    expect(next_node.previous).to be(node)
  end

  it "inserts after" do
    node.insert_after(previous_node)
    expect(node.previous).to be(previous_node)
    expect(previous_node.next).to be(node)
  end

  it "removes a next node" do
    node.insert_before(next_node)
    node.remove_after
    expect(node.next).to be(nil)
  end

  it "removes a previous node" do
    node.insert_after(previous_node)
    node.remove_before
    expect(node.previous).to be(nil)
  end
end
