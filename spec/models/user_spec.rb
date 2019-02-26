require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end



describe '#id' do

it 'id should be nil without save' do
  @user = User.new
  expect(@user.id).to be_nil
end

it 'should be auto-assigned by AR for saved records' do
  @user = User.new
  @user.save!
  expect(@user.id).to be_present
end

it 'should have a password' do
  @user = User.new
  @user.password_digest = "Bits n Bites"
  
  @user.save!
  expect(@user.password_digest).to be_present
  expect(@user.password_digest.length).to be > 5

end


# RSpec.describe User, type: :model do

#   describe 'Validations' do
#     # validation examples here
#   end

#   describe '.authenticate_with_credentials' do
#     # examples for this class method here
#   end

# end






# password and password_confirmation
# expect('x'+'y').to     eq('xy') 
end