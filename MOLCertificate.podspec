Pod::Spec.new do |s|
  s.name         = 'MOLCertificate'
  s.version      = '1.5'
  s.platform     = :osx
  s.license      = { :type => 'Apache', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/google/macops-molcertificate'
  s.authors      = { 'Google Macops' => 'macops-external@google.com' }
  s.summary      = 'Objective-C wrapper around SecCertificateRef'
  s.source       = { :git => 'https://github.com/google/macops-molcertificate.git',
                     :tag => "v#{s.version}" }
  s.source_files = 'Source/MOLCertificate.{h,m}'
  s.framework    = 'Security'
end
