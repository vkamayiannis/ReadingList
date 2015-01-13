class Book < ActiveRecord::Base
	belongs_to :category
	validates :category, :presence => true

	scope :finished, -> {where.not(finished_on: nil)}
	scope :recent, -> {where('finished_on > ?', 2.days.ago)}
	#scope :filter, -> (category_id){where(categories: {category_id: category_id})}
	#scope :search, -> (keyword){where(title: keyword) if keyword.present?}

  def finished?
		finished_on.present?
	end

	def self.search(keyword)
		if keyword.present?
			where('title like ?', "%#{keyword}%")
		else
			all
		end
	end
	def self.filter(category_id)
	  if category_id.present?
	    where("category_id = ?", category_id)
	  end
	end
	#51.32
end
