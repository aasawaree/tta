module Page
  module DefectAnalysis
    def view_defect_graph(subproject_name, date)
      select_the_option(subproject_name, DEFECT_SUBPROJECT_DROPDOWN)
      page.execute_script %Q{ $("#defect_analysis_analysis_date").val("2012-01-01");}
      sleep(10)
      click_button(DEFECT_PAGE_BUTTON)
    end
  end
end

World(Page::DefectAnalysis)