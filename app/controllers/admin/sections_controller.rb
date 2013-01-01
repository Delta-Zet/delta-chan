class Admin::SectionsController < Admin::DashboardController
  crudify :section
end
