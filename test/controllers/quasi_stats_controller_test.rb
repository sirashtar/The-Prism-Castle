require 'test_helper'

class QuasiStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quasi_stat = quasi_stats(:one)
  end

  test "should get index" do
    get quasi_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_quasi_stat_url
    assert_response :success
  end

  test "should create quasi_stat" do
    assert_difference('QuasiStat.count') do
      post quasi_stats_url, params: { quasi_stat: { atk_range: @quasi_stat.atk_range, cast_time: @quasi_stat.cast_time, energy: @quasi_stat.energy, weight_limit: @quasi_stat.weight_limit } }
    end

    assert_redirected_to quasi_stat_url(QuasiStat.last)
  end

  test "should show quasi_stat" do
    get quasi_stat_url(@quasi_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_quasi_stat_url(@quasi_stat)
    assert_response :success
  end

  test "should update quasi_stat" do
    patch quasi_stat_url(@quasi_stat), params: { quasi_stat: { atk_range: @quasi_stat.atk_range, cast_time: @quasi_stat.cast_time, energy: @quasi_stat.energy, weight_limit: @quasi_stat.weight_limit } }
    assert_redirected_to quasi_stat_url(@quasi_stat)
  end

  test "should destroy quasi_stat" do
    assert_difference('QuasiStat.count', -1) do
      delete quasi_stat_url(@quasi_stat)
    end

    assert_redirected_to quasi_stats_url
  end
end
