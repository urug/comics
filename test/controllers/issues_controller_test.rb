require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  setup do
    @book = books(:hawkeye)
    @issue = issues(:hawkeye_1)
  end

  test "should get index" do
    get :index, book_id: @book
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  test "should get new" do
    get :new, book_id: @book
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post :create, book_id: @book, issue: { book_id: @issue.book_id, cover_image_url: @issue.cover_image_url, number: @issue.number, price: @issue.price, title: @issue.title }
    end

    assert_redirected_to book_path(@book)
  end

  test "should show issue" do
    get :show, book_id: @book, id: @issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, book_id: @book, id: @issue
    assert_response :success
  end

  test "should update issue" do
    patch :update, book_id: @book, id: @issue, issue: { book_id: @issue.book_id, cover_image_url: @issue.cover_image_url, number: @issue.number, price: @issue.price, title: @issue.title }
    assert_redirected_to book_issue_path(@book, assigns(:issue))
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete :destroy, book_id: @book, id: @issue
    end

    assert_redirected_to book_path(@book)
  end
end
