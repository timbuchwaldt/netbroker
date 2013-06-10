defmodule Without do
  
  # wrapper function to allow nice calls from external
  def remove_element(collection, element) do
    remove_element(collection,element,[])
  end

  # head of list is the element we look for -> just continue processing the rest of the collection
  def remove_element([element|collection], element, new_collection) do
    remove_element(collection,element,new_collection)
  end

  # element is not head of list -> append to new list and process tail of collection
  def remove_element([head|collection], element, new_collection) do
    remove_element(collection,element,[head|new_collection])
  end

  # remove from an empty list -> just returns the reversed list (so the order is like the input collection)
  def remove_element([], _element, new_collection) do
    Enum.reverse(new_collection)
  end

end