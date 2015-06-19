require('spec_helper')

describe(Brand) do
	it { should have_and_belong_to_many (:stores) }
	it { should validate_presence_of(:description) }
	it { should callback(:titlecase_description).before(:save) }
end