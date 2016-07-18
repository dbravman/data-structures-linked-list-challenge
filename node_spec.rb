require_relative 'node'

describe Node do
  let(:node) {Node.new(0)}
  let(:next_node) {Node.new(1)}

  it "inserts a node after" do
    node.insert_after(next_node)
    expect(node.next).to be(next_node)
  end

  it "removes a next node" do
    node.insert_after(next_node)
    node.remove_after
    expect(node.next).to be(nil)
  end
end
