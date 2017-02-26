module ApplicationHelper

  def edit_button(item)
    unless current_user.nil?
      edit = link_to('Edit', url_for([:edit, item]), class:"btn btn-primary")
      raw("#{edit}")
    end
  end
  
  def del_button(item)
    if current_user.admin==true
      del = link_to('Destroy', item, method: :delete, data: {confirm: 'Are you sure?' }, class:"btn btn-danger")
      raw("#{del}")
    end
  end
  
end
