require 'test_helper'

module BootstrapWebsite
  class ClientsControllerTest < ActionController::TestCase
    setup do
      @client = clients(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:clients)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create client" do
      assert_difference('Client.count') do
        post :create, client: { address1: @client.address1, address2: @client.address2, city: @client.city, client_project: @client.client_project, country: @client.country, email: @client.email, name: @client.name, project_description: @client.project_description, project_dude_date: @client.project_dude_date, project_start_date: @client.project_start_date, state: @client.state, zip: @client.zip }
      end
  
      assert_redirected_to client_path(assigns(:client))
    end
  
    test "should show client" do
      get :show, id: @client
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @client
      assert_response :success
    end
  
    test "should update client" do
      put :update, id: @client, client: { address1: @client.address1, address2: @client.address2, city: @client.city, client_project: @client.client_project, country: @client.country, email: @client.email, name: @client.name, project_description: @client.project_description, project_dude_date: @client.project_dude_date, project_start_date: @client.project_start_date, state: @client.state, zip: @client.zip }
      assert_redirected_to client_path(assigns(:client))
    end
  
    test "should destroy client" do
      assert_difference('Client.count', -1) do
        delete :destroy, id: @client
      end
  
      assert_redirected_to clients_path
    end
  end
end
