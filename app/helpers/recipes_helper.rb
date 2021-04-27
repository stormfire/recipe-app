module RecipesHelper
    def created_at_in_utc(created_at)
        created_at.to_datetime.utc rescue nil
    end

    def render_tags_if_exists(tags)  
        render :partial => "tags", :locals => {:tags => tags} if tags
    end

    
end
