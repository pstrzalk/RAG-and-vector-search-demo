require "test_helper"

class RagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rag = rags(:one)
  end

  test "should get index" do
    get rags_url
    assert_response :success
  end

  test "should get new" do
    get new_rag_url
    assert_response :success
  end

  test "should create rag" do
    assert_difference("Rag.count") do
      post rags_url, params: { rag: { color: @rag.color, description: @rag.description, name: @rag.name, condition: @rag.condition, size: @rag.size } }
    end

    assert_redirected_to rag_url(Rag.last)
  end

  test "should show rag" do
    get rag_url(@rag)
    assert_response :success
  end

  test "should get edit" do
    get edit_rag_url(@rag)
    assert_response :success
  end

  test "should update rag" do
    patch rag_url(@rag), params: { rag: { color: @rag.color, description: @rag.description, name: @rag.name, condition: @rag.condition, size: @rag.size } }
    assert_redirected_to rag_url(@rag)
  end

  test "should destroy rag" do
    assert_difference("Rag.count", -1) do
      delete rag_url(@rag)
    end

    assert_redirected_to rags_url
  end
end
