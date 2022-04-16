require "test_helper"

class PeerCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peer_comment = peer_comments(:one)
  end

  test "should get index" do
    get peer_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_peer_comment_url
    assert_response :success
  end

  test "should create peer_comment" do
    assert_difference('PeerComment.count') do
      post peer_comments_url, params: { peer_comment: { comment: @peer_comment.comment, commenter: @peer_comment.commenter, title: @peer_comment.title } }
    end

    assert_redirected_to peer_comment_url(PeerComment.last)
  end

  test "should show peer_comment" do
    get peer_comment_url(@peer_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_peer_comment_url(@peer_comment)
    assert_response :success
  end

  test "should update peer_comment" do
    patch peer_comment_url(@peer_comment), params: { peer_comment: { comment: @peer_comment.comment, commenter: @peer_comment.commenter, title: @peer_comment.title } }
    assert_redirected_to peer_comment_url(@peer_comment)
  end

  test "should destroy peer_comment" do
    assert_difference('PeerComment.count', -1) do
      delete peer_comment_url(@peer_comment)
    end

    assert_redirected_to peer_comments_url
  end
end
