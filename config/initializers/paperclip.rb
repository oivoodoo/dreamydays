Paperclip.options[:command_path] = '/usr/local/bin'
Paperclip.options[:magick_home] =  '/usr/local'

  if Paperclip.options[:magick_home]
    ENV['MAGICK_HOME'] = Paperclip.options[:magick_home]
    ENV['DYLD_LIBRARY_PATH'] = Paperclip.options[:magick_home] + "/lib"
  end 
Paperclip.options[:image_magick_path] = "/usr/local/bin"
Paperclip.options[:command_path] = "/usr/local/bin"

