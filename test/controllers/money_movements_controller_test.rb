require 'test_helper'

class MoneyMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_movement = money_movements(:one)
  end

  test "should get index" do
    get money_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_money_movement_url
    assert_response :success
  end

  test "should create money_movement" do
    assert_difference('MoneyMovement.count') do
      post money_movements_url, params: { money_movement: { amount: @money_movement.amount, from_account_id: @money_movement.from_account_id, to_account_id: @money_movement.to_account_id } }
    end

    assert_redirected_to money_movement_url(MoneyMovement.last)
  end

  test "should show money_movement" do
    get money_movement_url(@money_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_movement_url(@money_movement)
    assert_response :success
  end

  test "should update money_movement" do
    patch money_movement_url(@money_movement), params: { money_movement: { amount: @money_movement.amount, from_account_id: @money_movement.from_account_id, to_account_id: @money_movement.to_account_id } }
    assert_redirected_to money_movement_url(@money_movement)
  end

  test "should destroy money_movement" do
    assert_difference('MoneyMovement.count', -1) do
      delete money_movement_url(@money_movement)
    end

    assert_redirected_to money_movements_url
  end
end
