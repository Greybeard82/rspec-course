RSpec.describe Array do

  it 'Array should start empty' do
    expect(subject.length).to eq(0)
  end

  it "Array should have length 1" do
    subject.push("B")
    puts subject
    expect(subject.length).to eq(1)
  end

end
