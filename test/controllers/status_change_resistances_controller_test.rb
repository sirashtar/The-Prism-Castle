require 'test_helper'

class StatusChangeResistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_change_resistance = status_change_resistances(:one)
  end

  test "should get index" do
    get status_change_resistances_url
    assert_response :success
  end

  test "should get new" do
    get new_status_change_resistance_url
    assert_response :success
  end

  test "should create status_change_resistance" do
    assert_difference('StatusChangeResistance.count') do
      post status_change_resistances_url, params: { status_change_resistance: { bleeding: @status_change_resistance.bleeding, blind: @status_change_resistance.blind, confusion: @status_change_resistance.confusion, curse: @status_change_resistance.curse, freeze: @status_change_resistance.freeze, poison: @status_change_resistance.poison, silence: @status_change_resistance.silence, sleep: @status_change_resistance.sleep, stone_curse: @status_change_resistance.stone_curse, stun: @status_change_resistance.stun } }
    end

    assert_redirected_to status_change_resistance_url(StatusChangeResistance.last)
  end

  test "should show status_change_resistance" do
    get status_change_resistance_url(@status_change_resistance)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_change_resistance_url(@status_change_resistance)
    assert_response :success
  end

  test "should update status_change_resistance" do
    patch status_change_resistance_url(@status_change_resistance), params: { status_change_resistance: { bleeding: @status_change_resistance.bleeding, blind: @status_change_resistance.blind, confusion: @status_change_resistance.confusion, curse: @status_change_resistance.curse, freeze: @status_change_resistance.freeze, poison: @status_change_resistance.poison, silence: @status_change_resistance.silence, sleep: @status_change_resistance.sleep, stone_curse: @status_change_resistance.stone_curse, stun: @status_change_resistance.stun } }
    assert_redirected_to status_change_resistance_url(@status_change_resistance)
  end

  test "should destroy status_change_resistance" do
    assert_difference('StatusChangeResistance.count', -1) do
      delete status_change_resistance_url(@status_change_resistance)
    end

    assert_redirected_to status_change_resistances_url
  end
end
