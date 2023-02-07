module ApplicationHelper
  def sidebar_menus
    [
      {
        title: 'Fantasy Leagues',
        icon: 'fa-tachometer-alt',
        menus: [
          {
            title: 'Index',
            path: fantasy_leagues_url
          },
        ]
      },
    ]
  end
end
