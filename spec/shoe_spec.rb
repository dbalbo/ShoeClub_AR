require('spec_helper')

describe(Shoe) do
	it { should have_and_belong_to_many (:brands) }
end