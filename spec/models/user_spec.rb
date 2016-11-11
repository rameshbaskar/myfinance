require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }

  describe 'email validations' do
    it 'should fail if nil' do
      user.email = nil
      expect(user).to be_invalid
    end

    it 'should fail if empty' do
      expect(user).to be_invalid
    end

    it 'should fail if blank' do
      user.email = ' '
      expect(user).to be_invalid
    end

    it 'should not fail if valid' do
      user.email = 'test@test.com'
      user.valid?
      expect(user.errors.messages.key?(:email)).to be_falsey
    end
  end

  describe 'password validations' do
    it 'should fail if nil' do
      expect(user).to be_invalid
    end

    it 'should fail if empty' do
      user.password = ''
      expect(user).to be_invalid
    end

    it 'should fail if blank' do
      user.password = ' '
      expect(user).to be_invalid
    end

    it 'should not fail if valid' do
      user.password = 'test@test.com'
      user.valid?
      expect(user.errors.messages.key?(:password)).to be_falsey
    end
  end

  describe 'first_name validations' do
    it 'should fail if nil' do
      expect(user).to be_invalid
    end

    it 'should fail if empty' do
      user.first_name = ''
      expect(user).to be_invalid
    end

    it 'should fail if blank' do
      user.first_name = ' '
      expect(user).to be_invalid
    end

    it 'should not fail if valid' do
      user.first_name = 'John'
      user.valid?
      expect(user.errors.messages.key?(:first_name)).to be_falsey
    end
  end

  describe 'last_name validations' do
    it 'should fail if nil' do
      expect(user).to be_invalid
    end

    it 'should fail if empty' do
      user.last_name = ''
      expect(user).to be_invalid
    end

    it 'should fail if blank' do
      user.last_name = ' '
      expect(user).to be_invalid
    end

    it 'should not fail if valid' do
      user.last_name = 'John'
      user.valid?
      expect(user.errors.messages.key?(:last_name)).to be_falsey
    end
  end
end
