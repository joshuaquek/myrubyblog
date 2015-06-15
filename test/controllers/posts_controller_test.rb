require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'post' do
  	post :create, post: { smth: '' }
  end
end
