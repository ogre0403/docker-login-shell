# docker-login-shell

create a docker conatiner when user login

# How to use
* Put docker_entry.sh in each user HOME
* Add /<PATH>/<TO>/start_docker_shell.sh in /etc/shells
* Change user default shell by  `chsh <USER> -s /<PATH>/<TO>/start_docker_shell.sh`
