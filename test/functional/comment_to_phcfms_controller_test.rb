require 'test_helper'

class CommentToPhcfmsControllerTest < ActionController::TestCase
  setup do
    @comment_to_phcfm = comment_to_phcfms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment_to_phcfms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment_to_phcfm" do
    assert_difference('CommentToPhcfm.count') do
      post :create, :comment_to_phcfm => @comment_to_phcfm.attributes
    end

    assert_redirected_to comment_to_phcfm_path(assigns(:comment_to_phcfm))
  end

  test "should show comment_to_phcfm" do
    get :show, :id => @comment_to_phcfm
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @comment_to_phcfm
    assert_response :success
  end

  test "should update comment_to_phcfm" do
    put :update, :id => @comment_to_phcfm, :comment_to_phcfm => @comment_to_phcfm.attributes
    assert_redirected_to comment_to_phcfm_path(assigns(:comment_to_phcfm))
  end

  test "should destroy comment_to_phcfm" do
    assert_difference('CommentToPhcfm.count', -1) do
      delete :destroy, :id => @comment_to_phcfm
    end

    assert_redirected_to comment_to_phcfms_path
  end
end
