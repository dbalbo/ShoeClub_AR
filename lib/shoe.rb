class Shoe < ActiveRecord::Base
	has_and_belongs_to_many :brands
	validates(:style, :presence => true)
	before_save(:titlecase_style)


	private

	def titlecase_style
		self.style = (style.titlecase)
	end
end