require "application_system_test_case"

class PeerCommentsTest < ApplicationSystemTestCase
  setup do
    @peer_comment = peer_comments(:one)
  end

  test "visiting the index" do
    visit peer_comments_url
    assert_selector "h1", text: "Peer Comments"
  end

  test "creating a Peer comment" do
    visit peer_comments_url
    click_on "New Peer Comment"

    fill_in "Comment", with: @peer_comment.comment
    fill_in "Commenter", with: @peer_comment.commenter
    fill_in "Title", with: @peer_comment.title
    click_on "Create Peer comment"

    assert_text "Peer comment was successfully created"
    click_on "Back"
  end

  test "updating a Peer comment" do
    visit peer_comments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @peer_comment.comment
    fill_in "Commenter", with: @peer_comment.commenter
    fill_in "Title", with: @peer_comment.title
    click_on "Update Peer comment"

    assert_text "Peer comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Peer comment" do
    visit peer_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peer comment was successfully destroyed"
  end
end
