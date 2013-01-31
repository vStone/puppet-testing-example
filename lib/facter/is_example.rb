Facter.add(:is_example) do
  setcode do
    if (Facter.value('fqdn') =~ /^(.*\.)?example\.com$/) == nil
      is_example = false
    else
      is_example = true
    end
    is_example
  end
end
