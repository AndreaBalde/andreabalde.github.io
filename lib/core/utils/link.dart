enum PersonalLink {
  github('GitHub', 'https://github.com/AndreaBalde'),
  linkedin(
    'LinkedIn',
    'https://www.linkedin.com/in/andrea-baldessin-976468216',
  ),
  fiverr('Fiverr', 'https://it.fiverr.com/s/pdv4oWy'),
  email('Email', 'a.baldessin.dev@gmail.com'),
  curriculum(
    'Curriculum',
    'https://1drv.ms/b/c/94e1c0b66dbd00a6/EaKD9-t8ByBFjO1vgEp1m08BtR0iuan4rOhbPMgby0dNCQ?e=Y81Cpw',
  );

  final String url;
  final String name;

  const PersonalLink(this.name, this.url);
}
