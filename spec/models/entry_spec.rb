# spec/models/todo_spec.rb
require 'rails_helper'


RSpec.describe Entry, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:content_title)}
  it { should validate_presence_of(:content)}
  it { should validate_presence_of(:mood)}
  it { should validate_presence_of(:user_entry_datetime)}
  it { should validate_presence_of(:user_id)}
  it { should validate_presence_of(:therapist_id)}
end


