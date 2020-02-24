require "application_system_test_case"

class MoneyMovementsTest < ApplicationSystemTestCase
  setup do
    @money_movement = money_movements(:one)
  end

  test "visiting the index" do
    visit money_movements_url
    assert_selector "h1", text: "Money Movements"
  end

  test "creating a Money movement" do
    visit money_movements_url
    click_on "New Money Movement"

    fill_in "Amount", with: @money_movement.amount
    fill_in "From account", with: @money_movement.from_account_id
    fill_in "To account", with: @money_movement.to_account_id
    click_on "Create Money movement"

    assert_text "Money movement was successfully created"
    click_on "Back"
  end

  test "updating a Money movement" do
    visit money_movements_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @money_movement.amount
    fill_in "From account", with: @money_movement.from_account_id
    fill_in "To account", with: @money_movement.to_account_id
    click_on "Update Money movement"

    assert_text "Money movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Money movement" do
    visit money_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Money movement was successfully destroyed"
  end
end
