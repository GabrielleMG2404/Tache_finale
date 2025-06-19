require "test_helper"

class MedicalReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_report = medical_reports(:one)
  end

  test "should get index" do
    get medical_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_report_url
    assert_response :success
  end

  test "should create medical_report" do
    assert_difference("MedicalReport.count") do
      post medical_reports_url, params: { medical_report: { date: @medical_report.date, description: @medical_report.description, patient_id: @medical_report.patient_id } }
    end

    assert_redirected_to medical_report_url(MedicalReport.last)
  end

  test "should show medical_report" do
    get medical_report_url(@medical_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_report_url(@medical_report)
    assert_response :success
  end

  test "should update medical_report" do
    patch medical_report_url(@medical_report), params: { medical_report: { date: @medical_report.date, description: @medical_report.description, patient_id: @medical_report.patient_id } }
    assert_redirected_to medical_report_url(@medical_report)
  end

  test "should destroy medical_report" do
    assert_difference("MedicalReport.count", -1) do
      delete medical_report_url(@medical_report)
    end

    assert_redirected_to medical_reports_url
  end
end
