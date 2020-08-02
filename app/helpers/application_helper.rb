module ApplicationHelper
  def link_to_add_row(name, f, association, **args)
    puts "WHAT THE HECK THIS IS BEING ABUSED"
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize, f: builder)
    end
    link_to(name, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end

  def is_setter(gym)
  	if current_user == nil
  		false
  	elsif @gym.routesetters.where(user_id: current_user.id).exists?
  		true
  	end
  end

  def is_admin()
    if current_user == nil
      false
    elsif current_user.isadmin == true
      true
    end
  end
end