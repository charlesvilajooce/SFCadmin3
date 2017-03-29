require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { arriving_date: @user.arriving_date, birthday: @user.birthday, cards_archive: @user.cards_archive, email: @user.email, endcontrat_date: @user.endcontrat_date, injured: @user.injured, injury_archive: @user.injury_archive, level: @user.level, name: @user.name, parents: @user.parents, password: 'secret', password_confirmation: 'secret', photo_url: @user.photo_url, physic_char: @user.physic_char, playtime: @user.playtime, role: @user.role, school: @user.school, school_archive: @user.school_archive, sportactivity_archive: @user.sportactivity_archive, surname: @user.surname, suspended: @user.suspended } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { arriving_date: @user.arriving_date, birthday: @user.birthday, cards_archive: @user.cards_archive, email: @user.email, endcontrat_date: @user.endcontrat_date, injured: @user.injured, injury_archive: @user.injury_archive, level: @user.level, name: @user.name, parents: @user.parents, password: 'secret', password_confirmation: 'secret', photo_url: @user.photo_url, physic_char: @user.physic_char, playtime: @user.playtime, role: @user.role, school: @user.school, school_archive: @user.school_archive, sportactivity_archive: @user.sportactivity_archive, surname: @user.surname, suspended: @user.suspended } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
