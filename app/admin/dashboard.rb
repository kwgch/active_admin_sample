ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
#     div class: "blank_slate_container", id: "dashboard_default_message" do
#       span class: "blank_slate" do
#         span I18n.t("active_admin.dashboard_welcome.welcome")
#         small I18n.t("active_admin.dashboard_welcome.call_to_action")
#       end
#     end

    # Here is an example of a simple dashboard with columns and panels.
    
     columns do
       column do
         panel "Recent Entries" do
           ul do
             Entry.last(5).map do |e|
               li link_to(e.title, admin_entry_path(e))
             end
           end
         end
       end

       column do
         panel "Info" do
           para "ActiveAdminへようこそ！"
         end
       end
     end
  end # content
end
