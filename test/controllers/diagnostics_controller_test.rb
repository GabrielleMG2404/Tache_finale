require "test_helper"

class DiagnosticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnostic = diagnostics(:one)
  end

  test "should get index" do
    get diagnostics_url
    assert_response :success
  end

  test "should get new" do
    get new_diagnostic_url
    assert_response :success
  end

  test "should create diagnostic" do
    assert_difference("Diagnostic.count") do
      post diagnostics_url, params: { diagnostic: { appointment_id: @diagnostic.appointment_id, code_diagnostic: @diagnostic.code_diagnostic, date: @diagnostic.date, description: @diagnostic.description } }
    end

    assert_redirected_to diagnostic_url(Diagnostic.last)
  end

  test "should show diagnostic" do
    get diagnostic_url(@diagnostic)
    assert_response :success
  end

  test "should get edit" do
    get edit_diagnostic_url(@diagnostic)
    assert_response :success
  end

  test "should update diagnostic" do
    patch diagnostic_url(@diagnostic), params: { diagnostic: { appointment_id: @diagnostic.appointment_id, code_diagnostic: @diagnostic.code_diagnostic, date: @diagnostic.date, description: @diagnostic.description } }
    assert_redirected_to diagnostic_url(@diagnostic)
  end

  test "should destroy diagnostic" do
    assert_difference("Diagnostic.count", -1) do
      delete diagnostic_url(@diagnostic)
    end

    assert_redirected_to diagnostics_url
  end
end
