require "grid"
describe Grid do

  let(:cell) { double(:cell, create: true) }
  let(:ship) { double(:ship) }
  it 'creates a grid' do
    expect(subject.create_grid.length).to eq(10)
  end

  it 'has a default size' do
    expect(subject.size).to eq(Grid::DEFAULT_SIZE)
  end

  it 'can be set to different sizes' do
    grid = described_class.new({size: 5, content: cell})
    expect(grid.size).to eq(5)
  end

  it 'will be filled with objects on creation' do
    grid = described_class.new({size: 5, content: cell})
    expect(grid.grid_locations.all?).to eq(true)
  end

  describe ' #insert' do
    it 'inserts ship into location' do
      subject.insert(ship, "A1")
      expect(subject.grid_locations[0][0]).to eq(ship)

    end

  end
end
