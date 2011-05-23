module UtilitiesHelper
  #browser detection
  def browser_is? name
    # TODO: test if it works
    name = name.to_s.strip
    if(browser_name == name || (name == 'mozilla' && browser_name == 'gecko') || (name == 'ie' && browser_name.index('ie')) || (name == 'webkit' && browser_name == 'safari'))
      return true
    else
      return false
    end
  end

  def browser_name
    @browser_name ||= begin

      if request.env['HTTP_USER_AGENT']
        ua = request.env['HTTP_USER_AGENT'].downcase

        if ua.index('msie') && !ua.index('opera') && !ua.index('webtv')
          'ie'+ua[ua.index('msie')+5].chr
        elsif ua.index('gecko/') 
          'gecko'
        elsif ua.index('opera')
          'opera'
        elsif ua.index('konqueror') 
          'konqueror'
        elsif ua.index('applewebkit/')
          'safari'
        elsif ua.index('mozilla/')
          'gecko'
        end
      else
        'other' #added becouse of errors by getexpectional
      end

    end
  end
end