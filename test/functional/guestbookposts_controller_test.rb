require 'test_helper'

class GuestbookpostsControllerTest < ActionController::TestCase
  setup do
    @guestbookpost = guestbookposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestbookposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestbookpost" do
    assert_difference('Guestbookpost.count') do
      post :create, guestbookpost: { body: @guestbookpost.body, email: @guestbookpost.email, name: @guestbookpost.name }
    end

    assert_redirected_to guestbookpost_path(assigns(:guestbookpost))
  end

  test "should show guestbookpost" do
    get :show, id: @guestbookpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestbookpost
    assert_response :success
  end

  test "should update guestbookpost" do
    put :update, id: @guestbookpost, guestbookpost: { body: @guestbookpost.body, email: @guestbookpost.email, name: @guestbookpost.name }
    assert_redirected_to guestbookpost_path(assigns(:guestbookpost))
  end

  test "should destroy guestbookpost" do
    assert_difference('Guestbookpost.count', -1) do
      delete :destroy, id: @guestbookpost
    end

    assert_redirected_to guestbookposts_path
  end
end
