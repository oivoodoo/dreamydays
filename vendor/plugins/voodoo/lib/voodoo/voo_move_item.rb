module Voodoo
  module BasePage
    module ControllerClassMethods 
      def self.included(base)
        base.extend(self)
      end

      def voo_move_item(parent, model, options = {})
        define_method "move_#{model}" do
          item = Object.const_get(model.to_s.camelize.to_sym).find(params[:id], :select => options[:select])
          unless params[:"#{model}_type"].blank?
            item.list_scope = "AND #{model}_type='#{params[:"#{model}_type"]}'"
          end
          if not (item.first? and params[:method] == "higher") and not (item.last? and params[:method] == "lower")
            item.send("move_#{params[:method]}".to_sym)
            if options[:conditions].blank?
              conditions = ["#{parent.to_s}_id = ?", Object.const_get(parent.to_s.camelize.to_sym).first.id]
            else
              conditions = ["#{parent.to_s}_id = ? AND #{options[:conditions]}", Object.const_get(parent.to_s.camelize.to_sym).first.id, params[:"#{model}_type"]]
              first_conditions = ["#{options[:conditions]}", params[:"#{model}_type"]] 
            end
            if options.include?(:paginate)
              instance_variable_set("@#{model.to_s.pluralize}", Object.const_get(model.to_s.camelize.to_sym).paginate(:page => params[:page], :per_page => options[:paginate],
                    :conditions => ["#{parent.to_s}_id = ?", Object.const_get(parent.to_s.camelize.to_sym).first.id], :order => "position", :select => options[:select]))
            else
              if params[:"#{model}_type"].blank?
                instance_variable_set("@#{model.to_s.pluralize}", Object.const_get(parent.to_s.camelize.to_sym).first.send("#{model.to_s.pluralize.to_sym}"))
              else
                instance_variable_set("@#{model.to_s.pluralize}", Object.const_get(parent.to_s.camelize.to_sym).first.send("#{model.to_s.pluralize.to_sym}").collect{|m| m if m.send(:"#{model}_type") == params[:"#{model}_type"]}.compact)
              end
            end
            next_item = item.send("#{inverse_method(params[:method])}_item".to_sym)
          end
          respond_to do |wants|
              wants.js {
                  unless next_item.nil?
                    render :json  => {:item1 => {:id => item.id},
                                      :item2 => {:id => next_item.id}}
                  else
                    render :json => "nothing to do"
                  end
              }
          end
        end

        def inverse_method(method)
          return "higher" if method == "lower"
          return "lower" if method == "higher"
        end
      end
    end
  end
end

