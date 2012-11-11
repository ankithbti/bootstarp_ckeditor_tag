module ApplicationHelper
	

	def tag_cloud(tags, classes)
	  max = tags.sort_by(&:count).last
	  tags.each do |tag|
	    index = tag.count / max.count * (classes.size - 1)
	    index = index.round
	    index = index.to_s
	    yield(tag, classes[index])
	  end
	end


end
