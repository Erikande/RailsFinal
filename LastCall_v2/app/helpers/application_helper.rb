module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | LastCall"      
    end
  end
end
