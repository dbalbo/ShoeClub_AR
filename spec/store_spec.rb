require('spec_helper')

describe(Store) do
	it { should have_and_belong_to_many (:brands) }
	it { should allow_value('name').for(:name) }
	it { should callback(:titlecase_name).before(:save) }
end