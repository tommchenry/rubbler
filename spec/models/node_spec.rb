require 'rails_helper'

RSpec.describe Node, :type => :model do

  describe 'associations' do
    let(:parent_node) { create(:node) }
    let(:child_node) { create(:node, parent_id: parent_node.id) }

    context "#parent" do
      it "returns the parent node" do
        expect(child_node.parent).to eq(parent_node)
      end
    end

    context "#children" do
      it "returns child nodes" do
        expect(parent_node.children).to include(child_node)
      end
    end
  end

end
