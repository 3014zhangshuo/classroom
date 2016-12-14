require 'rails_helper'

RSpec.describe Course, type: :model do
 it { is_expected.to validatea_presence_of(:title) }
end
