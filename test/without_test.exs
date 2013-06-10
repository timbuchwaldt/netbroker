Code.require_file "test_helper.exs", __DIR__

defmodule WithoutTest do
  use ExUnit.Case, async: true

  test "element removal from full list" do
    assert Without.remove_element([1,2,3,4,5],5) == [1,2,3,4]
  end
  
  test "element removal from emtpy list" do
    assert Without.remove_element([],5) == []
  end
  
  test "removal of multiple occurences" do
    assert Without.remove_element([1,2,3,4,5,5,5],5) == [1,2,3,4]
  end

  test "removal of non-existent element" do
    assert Without.remove_element([1,2,3,4],6) == [1,2,3,4]
  end

  test "element is first entry in list" do
    assert Without.remove_element([1,2,3,4],1) == [2,3,4]
  end

end
