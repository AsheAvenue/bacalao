class CreatePersonTechnologyJoinTable < ActiveRecord::Migration
  def change
    create_table :people_technologies, :id => false do |t|
      t.integer :person_id
      t.integer :technology_id
    end
  end
end
