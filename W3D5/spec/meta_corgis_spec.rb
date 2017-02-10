require 'meta_corgis'

describe 'CorgiSnacks' do
  it 'have a bone' do
    snack_box = SnackBox.new
    c = CorgiSnacks.new(snack_box, 1)
    expect(c.bone).to eq("Bone: Phoenician rawhide: 20 ")
  end
end
