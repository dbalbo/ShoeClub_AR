class Shoe < ActiveRecord::Base
	has_and_belongs_to_many :brands
	validates(:style, :presence => true)
	before_save(:titlecase_name)


	private

	def titlecase_name
		self.name = (name.titlecase)
	end
end