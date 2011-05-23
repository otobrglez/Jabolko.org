User.create(
  :fullname => 'Tomaž Žlender',
  :email => 'tomaz.zlender@gmail.com',
  :password => 'password',
  :password_confirmation => 'password',
  :role => 'admin'
)

User.create(
  :fullname => 'David Praznik',
  :email => 'david.praznik@gmail.com',
  :password => 'password',
  :password_confirmation => 'password',
  :role => 'admin'
)

FeedCategory.create(
  :title => "Hot news",
  :description => "Hot news pa take fore",
  :link => "http://images.apple.com/main/rss/hotnews/hotnews.rss",
  :rss_home => 'http://www.apple.com/hotnews/'
)

FeedCategory.create(
  :title => "Top free Apps",
  :description => "Top free Apps pa take fore",
  :link => "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/topfreeapplications/limit=10/xml",
  :rss_home => 'http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop?id=25129&popId=27&genreId=36'
)

FeedCategory.create(
  :title => "Top paid Apps",
  :description => "Top paid Apps pa take fore",
  :link => "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=10/xml",
  :rss_home => 'http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop?id=25129&popId=30&genreId=36'
)

FeedCategory.create(
  :title => "Updates",
  :description => "Updates pa take fore",
  :link => "http://images.apple.com/downloads/macosx/apple/recent.rss",
  :rss_home => 'http://support.apple.com/downloads/'
)

FeedCategory.create(
  :title => "Movie trailers",
  :description => "Movie trailers pa take fore",
  :link => "http://trailers.apple.com/trailers/home/rss/newtrailers.rss",
  :rss_home => 'http://www.apple.com/trailers/'
)

FeedCategory.create(
  :title => "Drivers",
  :description => "Driverji pa take fore",
  :link => "http://images.apple.com/downloads/macosx/drivers/recent.rss",
  :rss_home => 'http://www.apple.com/downloads/macosx/drivers/'
)

Category.create(
  :title => "Šnelkurs",
  :permalink => "snelkurs",
  :description => "Snelkurs pa take fore"
)

Category.create(
  :title => "Mac",
  :permalink => "mac",
  :description => "Mac pa take fore"
)

Category.create(
  :title => "iPod+iTunes",
  :permalink => "ipod-itunes",
  :description => "iPod pa take fore"
)

Category.create(
  :title => "iPhone",
  :permalink => "iphone",
  :description => "iPhone pa take fore"
)

Writer.create(
  :fullname => "David Praznik",
  :about => "Oblikovalec spletnih strani.",
  :www => "http://www.davidpraznik.com/",
  :twitter => "http://twitter.com/davidpraznik/"
)

Writer.create(
  :fullname => "Tomaž Žlender",
  :about => "Programer spletnih strani.",
  :www => "http://www.tomazzlender.com/",
  :twitter => "http://twitter.com/tomazzlender/"
)

Writer.create(
  :fullname => "Klemen Tominšek",
  :about => "Pisec člankov.",
  :www => "",
  :twitter => ""
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "1",
  :category_ids => "1",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "1",
  :category_ids => "1",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "1",
  :category_ids => "1",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "4"
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "4"
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "4"
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "2",
  :published => true
)

Article.create(
  :title => "25 programskih orodij za boljšo produktivnost pri delu na mac-u",
  :permalink => "25-programskih-orodij-za-boljso-produktivnost-pri-delu-na-mac-u",
  :intro => "Curabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :body => "h3. Kaj je pri tem zanimivo\n\nCurabitur commodo, tellus ac varius varius, augue dui elementum urna, id vestibulum ante nisl eget libero. Donec pulvinar, velit a laoreet scelerisque, lorem neque sollicitudin risus, eget porttitor enim nisl nec lacus. Integer ut arcu eget leo euismod malesuada. Maecenas ultrices ornare sapien, vitae dictum ipsum pulvinar quis.\n\nh3. Zakaj tega apple uradno ne podpira\n\nPraesent malesuada fringilla augue nec auctor. Sed rutrum interdum lectus, vitae tincidunt odio consectetur vitae. Curabitur condimentum feugiat felis in varius. Sed in enim dui. Maecenas consectetur pharetra orci quis rutrum. Maecenas vitae tellus quis mi gravida porttitor. Nullam tempus sapien tempus libero accumsan elementum. Etiam sollicitudin tortor urna.",
  :writer_ids => "2",
  :category_ids => "4"
)

