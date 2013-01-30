Facter.add(:is_example) do
  setcode do
    is_example = (Facter.value('fqdn') =~ /^(.*\.)?example\.com$/) == nil ? false : true
  end
end
