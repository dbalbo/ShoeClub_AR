class Brand < ActiveRecord::Base
	has_and_belongs_to_many :stores
	validates(:description, :presence => true)
	before_save(:titlecase_description)



	private

	def titlecase_description
		self.description = (description.titlecase)
	end
end

