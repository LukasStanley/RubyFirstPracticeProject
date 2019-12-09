module ApplicationHelper
    
    # if on active page, colour will be white
    # else colour will be regular
    #takes arguments: 'link', 'what page it is on', 'change font colour'

    def active_link_to (nav_link, contrl, action, url, style, style2 )

        if controller_name == contrl && action_name == action
            return link_to nav_link, url, class: style2
        else
            return link_to nav_link, url, class: style
        end

    end

end
