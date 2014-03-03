guard :rspec, spec_paths: ["spec/unit"] do
  watch(%r{^spec/unit/.+_spec\.rb$})
  watch(%r{^(libraries|providers|recipes|resources)/(.+)\.rb$}) { |m| "spec/unit/#{m[1]}/#{m[2]}_spec.rb" }
  watch("spec/unit/spec_helper.rb")  { "spec/unit" }
end
