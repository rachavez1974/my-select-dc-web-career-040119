def my_select(collection)
  new_collection = []
  message = nil

  old_index = 0
  new_index = 0
  if collection.empty?
    return message = "Collection empty"
  else
    while old_index < collection.length
       if yield(collection[old_index]) 
        new_collection[new_index] = collection[old_index]
        new_index += 1
       end
       old_index += 1
    end 
    return new_collection
  end

end
