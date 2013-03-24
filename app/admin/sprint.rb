ActiveAdmin.register Sprint do

  form do |f|
    f.inputs do
      f.input :project
      f.input :title
      f.input :start_at, :as => :datepicker
      f.input :end_at, :as => :datepicker
    end
    f.buttons
  end
end
