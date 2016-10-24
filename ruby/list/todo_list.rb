=begin
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
=end
class TodoList
	
	def initialize(array)
		@list = array
	end

	#1  method to "store the list items given on initialization"
	def get_items
		return @list
	end

	#2 method to add an item to the list
	def add_item(item)
		#takes in item and adds to list
		@list << item
	end

	#3 method that deletes an item
	def delete_item(item)
		#takes in an item and returns a new list
		@list.delete(item)
		return @list
	end

	#4 method that retrieves an item by index
	def get_item(num)
		#takes on a number and returns the item at that index
		task = @list[num]
		return task
	end

end

list1 = TodoList.new(["do the dishes", "mow the lawn"])






















