Pod::Spec.new do |s|
  s.name         = 'MOLCertificate'
  s.version      = '1.0'
  s.platform     = :osx
  s.license      = 'Apache'
  s.homepage     = 'https://github.com/google/macops-molcertificate'
  s.author       = { 'Google Macops' => 'macops-external@google.com' }
  s.summary      = 'Objective-C wrapper around SecCertificateRef'
  s.source       = { :git => 'https://github.com/google/macops-molcertificate.git', :tag => 'v1.0' }
  s.source_files = 'Source/MOLCertificate.{h,m}'
  s.framework    = 'Security'
end
