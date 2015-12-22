require 'spec_helper'

describe Lattes do
  it 'has a version number' do
    expect(Lattes::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Lattes::Url).to eq('http://howistart.org/posts/ruby/1')
  end
end
