$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_run_job/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_run_job"
  s.version     = RailsAdminRunJob::VERSION
  s.authors     = ["Jim OLeary"]
  s.email       = ["jim.oleary@gmail.com"]
  s.homepage    = "https://github.com/jimoleary/rails_admin_email_pdf"
  s.summary     = "Custom Delayed Job run for RailsAdmin."
  s.description = "Redirects to link to run or re-run Delayed Job."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"

end
