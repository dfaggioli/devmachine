# frozen_string_literal: true

conf = node['ubik']['python']
user = conf['user']

pyenv_user_install user

pyenv_plugin 'pyenv-virtualenv' do
  git_url 'https://github.com/pyenv/pyenv-virtualenv.git'
  user user
end

if conf['user_global']
  raise unless conf['versions'].include?(conf['user_global'])

  pyenv_global conf['user_global'] do
    user user
  end
end

conf['versions']&.each do |version|
  pyenv_python version do
    user user
  end
end

%w[pip pipenv].each do |egg|
  pyenv_pip egg do
    user user
  end
end
