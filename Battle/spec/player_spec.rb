require 'player'

describe Player do

  subject { Player.new('Stephen') }

  it 'works' do
    expect(subject.class).to eq described_class
  end

  it 'returns its name' do
    player1 = Player.new('Stephen')
    expect(player1.name).to eq 'Stephen'
  end

  it 'returns its default HP of 100' do
    expect(subject.hp).to eq 100
  end

  it 'can have a different HP' do
    player = Player.new('Stephen', 500)
    expect(player.hp).to eq 500
  end

  describe '#receive_damage' do
    it 'can lose 10 HP by default' do
      expect { subject.receive_damage }.to change { subject.hp }.by -10
    end

    it 'can lose more than 10 HP' do
      expect { subject.receive_damage(20) }.to change { subject.hp }.by -20
    end
  end
end