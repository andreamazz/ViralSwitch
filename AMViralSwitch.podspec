Pod::Spec.new do |s|
  s.name         = "AMViralSwitch"
  s.version      = "0.1"
  s.summary      = "Dropin replacement of UISwitch that 'infects' the parent view with the onTintColor when the switch is turned on."

  s.description  = <<-DESC
                    A UISwitch drop-in replacement that 'infects' the parent view 
                    with the active tint color when the switch is turned on, with
                    a radial spread. 
                    The switch can also change the color of the parent's subviews.
                   DESC
  s.homepage     = "https://github.com/andreamazz/ViralSwitch"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Andrea Mazzini" => "andrea.mazzini@gmail.com" }
  s.source       = { :git => "https://github.com/andreamazz/ViralSwitch.git", :tag => '0.1' }
  s.platform     = :ios, '7.0'
  s.source_files = 'ViralSwitch', '*.{h,m}'
  s.requires_arc = true
  s.social_media_url = 'https://twitter.com/theandreamazz'
end
