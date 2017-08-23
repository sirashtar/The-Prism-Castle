require 'test_helper'

class SubStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_stat = sub_stats(:one)
  end

  test "should get index" do
    get sub_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_stat_url
    assert_response :success
  end

  test "should create sub_stat" do
    assert_difference('SubStat.count') do
      post sub_stats_url, params: { sub_stat: { aspd: @sub_stat.aspd, atk: @sub_stat.atk, crit: @sub_stat.crit, def: @sub_stat.def, flee: @sub_stat.flee, hit: @sub_stat.hit, hp: @sub_stat.hp, matk: @sub_stat.matk, mdef: @sub_stat.mdef, sp: @sub_stat.sp } }
    end

    assert_redirected_to sub_stat_url(SubStat.last)
  end

  test "should show sub_stat" do
    get sub_stat_url(@sub_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_stat_url(@sub_stat)
    assert_response :success
  end

  test "should update sub_stat" do
    patch sub_stat_url(@sub_stat), params: { sub_stat: { aspd: @sub_stat.aspd, atk: @sub_stat.atk, crit: @sub_stat.crit, def: @sub_stat.def, flee: @sub_stat.flee, hit: @sub_stat.hit, hp: @sub_stat.hp, matk: @sub_stat.matk, mdef: @sub_stat.mdef, sp: @sub_stat.sp } }
    assert_redirected_to sub_stat_url(@sub_stat)
  end

  test "should destroy sub_stat" do
    assert_difference('SubStat.count', -1) do
      delete sub_stat_url(@sub_stat)
    end

    assert_redirected_to sub_stats_url
  end
end
