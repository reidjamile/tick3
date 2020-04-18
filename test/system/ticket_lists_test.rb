require "application_system_test_case"

class TicketListsTest < ApplicationSystemTestCase
  setup do
    @ticket_list = ticket_lists(:one)
  end

  test "visiting the index" do
    visit ticket_lists_url
    assert_selector "h1", text: "Ticket Lists"
  end

  test "creating a Ticket list" do
    visit ticket_lists_url
    click_on "New Ticket List"

    click_on "Create Ticket list"

    assert_text "Ticket list was successfully created"
    click_on "Back"
  end

  test "updating a Ticket list" do
    visit ticket_lists_url
    click_on "Edit", match: :first

    click_on "Update Ticket list"

    assert_text "Ticket list was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket list" do
    visit ticket_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket list was successfully destroyed"
  end
end
