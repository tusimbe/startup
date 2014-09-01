require 'rails_helper'

describe "Welcome pages" do
  subject { page }

  before { visit root_path }

  it { should have_link('登录') }
  it { should have_link('注册') }
end
