class Chef
  class Recipe
    # Does this instance run sidekiq?
    def sidekiq_instance?
      return true # for now, we use it everywhere
      role = node[:instance_role]
      role == 'solo' || role == 'eylocal' || (role == 'util' && node[:name] =~ /^sidekiq/)
    end
  end
end
