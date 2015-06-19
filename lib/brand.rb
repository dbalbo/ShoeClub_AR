class Brand < ActiveRecord::Base
	has_and_belongs_to_many :shoes
	validates(:name, :presence => true)
	before_save(:titlecase_name)



	private
	
	def titlecase_name
		self.name = (name.titlecase)
	end
end