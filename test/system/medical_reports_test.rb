require "application_system_test_case"

class MedicalReportsTest < ApplicationSystemTestCase
  setup do
    @medical_report = medical_reports(:one)
  end

  test "visiting the index" do
    visit medical_reports_url
    assert_selector "h1", text: "Medical reports"
  end

  test "should create medical report" do
    visit medical_reports_url
    click_on "New medical report"

    fill_in "Date", with: @medical_report.date
    fill_in "Description", with: @medical_report.description
    fill_in "Patient", with: @medical_report.patient_id
    click_on "Create Medical report"

    assert_text "Medical report was successfully created"
    click_on "Back"
  end

  test "should update Medical report" do
    visit medical_report_url(@medical_report)
    click_on "Edit this medical report", match: :first

    fill_in "Date", with: @medical_report.date
    fill_in "Description", with: @medical_report.description
    fill_in "Patient", with: @medical_report.patient_id
    click_on "Update Medical report"

    assert_text "Medical report was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical report" do
    visit medical_report_url(@medical_report)
    click_on "Destroy this medical report", match: :first

    assert_text "Medical report was successfully destroyed"
  end
end
