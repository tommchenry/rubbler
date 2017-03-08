desc "Create sample nodes for development" 
task :prime_db => :environment do
  require 'factory_girl'
  include FactoryGirl::Syntax::Methods
  start_node = create(:node)
  3.times do 
    create(:node, parent_id: start_node.id)
  end
end
