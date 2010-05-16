# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  include BrowserDetector
  
  def to_html(args={})
    html_string = ""
    args.each_pair {|key, value| html_string << "#{key}='#{value}' "}
    return html_string.chop
  end
  
  
  # form UI helpers
  def required
    "<ul>
		<li>*</li>
		<li>= required</li>
	</ul>"
  end
  
  #fields
  def label_helper(opts={})
    "<dt><label for='#{opts[:id]}'><span class='hidden #{opts[:required]}'>*</span>#{opts[:label]}:</label></dt>"
  end
  # example: <%= label_helper ({ :id => 'site', :required => 'required', :label => 'Site' })%>
  
  def form_text_field(opts={})
    "<dd><input #{to_html(opts)} type='text' /></dd>"
  end
  # example: <%= form_text_field ({ :name => 'reference', :title => 'Please enter a PM reference number', :id => 'reference' })%>
  
  #select menu
  def form_select_menu(opts={})
    options = opts.delete(:options)
    "<dd>
		<select #{to_html(opts)}>
		  '#{options_for_select(options)}'
		</select>
	</dd>"
  end
  # example: <%= form_select_menu ({:id => 'site', :title => 'Please select the site', :options => ['Please select option ...', 'website.com','website.com','website.com', 'website.com']}) %>
      
  #textarea
  def form_textarea_field(opts={})
    "<dd>
      <textarea #{to_html(opts)}'></textarea>
    </dd>"
  end
  # example: <%= form_textarea_field ({ :name => 'notes', :title => 'Enter notes as necessary', :id => 'notes' })%>
  
  #buttons
  def button(href, button_id, button_class, label)
    "<a type='button' href='#{href}' id='#{button_id}' class='#{button_class}'><span><span><span>#{label}</span></span></span></a>"
  end
  
  def button_cancel(href, button_id, button_class, label, href2)
    "<div class='button_cancel'><a type='button' title='#{label}' href='#{href}' id='#{button_id}' class='#{button_class}'><span><span><span>#{label}</span></span></span></a> | <a href='#{href2}' title='Cancel'>Cancel</a></div>"
  end
  # example:  <%= button_cancel '#', 'submit_link', '', 'Submit', dashboard_path %>
  
  #password fields  
  def login_password_field(form_id)
    "<dd>
      <input id='#{form_id}' name='#{form_id}' type='password' />
      <p><a href='#' title='forget password'>Forgot password?</a><span>&nbsp;&nbsp;|&nbsp;&nbsp;</span><label title='remember me' for='remember_me'><input name='remember' id='remember_me' type='checkbox'/> Remember me?</p></label>
    </dd>"
  end
  
  def form_password_field(opts={})
    "<dd><input #{to_html(opts)} type='password' /></dd>"
  end



end
