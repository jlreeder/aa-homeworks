require 'meta_corgis'

describe 'CorgiSnacks' do
  it 'have a bone' do
    snack_box = SnackBox.new
    c = CorgiSnacks.new(snack_box, 1)
    expect(c.bone).to eq("Bone: Phoenician rawhide: 20 ")
  end
end

describe 'MetaCorgiSnacks' do
  let(:m){ MetaCorgiSnacks.new(SnackBox.new, 1) }

  describe 'bone' do
    it 'gets the right bone value' do
      expect(m.bone).to eq("Bone: Phoenician rawhide: 20 ")
    end
  end

  describe 'kibble' do
    it 'gets the right kibble value'
  end

  describe 'treat' do
    it 'gets the right treat value'
  end
end
