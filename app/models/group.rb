class Group < ActiveRecord::Base
  belongs_to :faculty

  has_many :lessons, dependent: :destroy

  def self.search(search)
	    if search
	    	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	    else
	    	find(:all)
	    end
  end
end
