class Node < ActiveRecord::Base
  belongs_to :parent, class_name: "Node", foreign_key: "parent_id"
  has_many :children, class_name: "Node", foreign_key: "parent_id"
end
