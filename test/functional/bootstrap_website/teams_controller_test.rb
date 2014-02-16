require 'test_helper'

module BootstrapWebsite
  class TeamsControllerTest < ActionController::TestCase
    setup do
      @team = teams(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:teams)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create team" do
      assert_difference('Team.count') do
        post :create, team: { description: @team.description, desgination: @team.desgination, email: @team.email, facebook_url: @team.facebook_url, github_id: @team.github_id, name: @team.name, personal_website: @team.personal_website }
      end
  
      assert_redirected_to team_path(assigns(:team))
    end
  
    test "should show team" do
      get :show, id: @team
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @team
      assert_response :success
    end
  
    test "should update team" do
      put :update, id: @team, team: { description: @team.description, desgination: @team.desgination, email: @team.email, facebook_url: @team.facebook_url, github_id: @team.github_id, name: @team.name, personal_website: @team.personal_website }
      assert_redirected_to team_path(assigns(:team))
    end
  
    test "should destroy team" do
      assert_difference('Team.count', -1) do
        delete :destroy, id: @team
      end
  
      assert_redirected_to teams_path
    end
  end
end
