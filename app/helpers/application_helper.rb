module ApplicationHelper
	

	def tag_cloud(tags, classes)
	  max = tags.sort_by(&:count).last
	  tags.each do |tag|
	    index = tag.count.to_f / max.count.to_f * (classes.size - 1)
	    index = index.round
	    yield(tag, classes[index])
	  end
	end


end
