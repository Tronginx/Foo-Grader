require "test_helper"

class PeerEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peer_evaluation = peer_evaluations(:one)
  end

  test "should get index" do
    get peer_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_peer_evaluation_url
    assert_response :success
  end

  test "should create peer_evaluation" do
    assert_difference('PeerEvaluation.count') do
      post peer_evaluations_url, params: { peer_evaluation: { comment: @peer_evaluation.comment, commenter: @peer_evaluation.commenter, grade: @peer_evaluation.grade, title: @peer_evaluation.title } }
    end

    assert_redirected_to peer_evaluation_url(PeerEvaluation.last)
  end

  test "should show peer_evaluation" do
    get peer_evaluation_url(@peer_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_peer_evaluation_url(@peer_evaluation)
    assert_response :success
  end

  test "should update peer_evaluation" do
    patch peer_evaluation_url(@peer_evaluation), params: { peer_evaluation: { comment: @peer_evaluation.comment, commenter: @peer_evaluation.commenter, grade: @peer_evaluation.grade, title: @peer_evaluation.title } }
    assert_redirected_to peer_evaluation_url(@peer_evaluation)
  end

  test "should destroy peer_evaluation" do
    assert_difference('PeerEvaluation.count', -1) do
      delete peer_evaluation_url(@peer_evaluation)
    end

    assert_redirected_to peer_evaluations_url
  end
end
