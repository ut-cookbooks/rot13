rot13_vault "create-full" do
  path "/tmp/vault"
  owner "frank"
  group "winners"
  mode "0400"
  payload "Whoops"
end

rot13_vault "/another/store"
