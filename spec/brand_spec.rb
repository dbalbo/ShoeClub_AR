require('spec_helper')

describe(Brand) do
	it { should have_and_belong_to_many (:shoes) }
	it { should validate_presence_of(:name) }
	it { should callback(:titlecase_name).before(:save) }
end