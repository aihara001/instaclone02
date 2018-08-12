module InstaclosHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_instaclos_path
    elsif action_name == 'edit'
      instaclo_path
    end
  end
end
