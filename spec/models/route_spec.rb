require 'rails_helper'

describe Route do
  it { should validate_presence_of :grade }
  it { should belong_to :place }
end
