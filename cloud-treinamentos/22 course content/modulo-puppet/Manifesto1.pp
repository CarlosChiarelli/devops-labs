# Sintaxe da declaração de um recurso no manifesto.
resource_type { 'name':
  atribute1 => valor,
}

# Exemplo em que pedimos para ele garantir que o SSH está no rodando.
service { 'ssh':
  ensure => running,
}


# Exemplo de uma classe com vários recursos.
class openssh {

  package { 'openssh-server':
    ensure => installed,
  }

  file { '/etc/ssh/sshd_config':
    ensure => file,
    owner  => 'root',
    mode   => '0600',
  }

  service { 'ssh':
  ensure => running,
  }
}
