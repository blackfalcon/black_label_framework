module BrowserDetector
    
    def is_ie?
        request.env['HTTP_USER_AGENT'].include?("MSIE")
    end
    
    def is_firefox?
        request.env['HTTP_USER_AGENT'].include?("Firefox")
    end

    def is_safari?
        request.env['HTTP_USER_AGENT'].include?("Safari")
    end
    
    def is_chrome?
        request.env['HTTP_USER_AGENT'].include?("Chrome")
    end

    def is_opera?
        request.env['HTTP_USER_AGENT'].include?("Opera")
    end
    
end