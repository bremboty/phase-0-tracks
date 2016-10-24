=begin
In phase-0-tracks/ruby/list, you'll find a test file for a 
TodoList class. The class itself isn't anything fancy -- it 
basically maintains an internal array attribute and provides 
methods that allow the array to be accessed and updated in various 
ways.

Run the tests. Resolve any errors you see and add code that 
will make all of the tests pass. Work on one test at a time 
until you've made it all the way to "green" (all tests passing).
=end

require_relative 'todo_list'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end