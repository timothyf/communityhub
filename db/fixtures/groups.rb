Group.seed(:id,
  { :id => 1, :name => "Detroit Ruby Users Group",
    :description => "Ruby development group in Detroit", :owner_id => 1, :community_id => 1
  },
  { :id => 2, :name => "Detroit Java Users Group",
    :description => "Java development group in Detroit", :owner_id => 1, :community_id => 1
  },
  { :id => 3, :name => "Ann Arbor JavaScript Users Group",
    :description => "JavaScript development group in Ann Arbor", :owner_id => 1, :community_id => 2
  },
  { :id => 4, :name => "Ann Arbor Python Users Group",
    :description => "Python development group in Ann Arbor", :owner_id => 1, :community_id => 2
  },
  { :id => 5,
    :name => "Technology Mentorship Group",
    :description => "A community for those interested in mentorship opportunties.",
    :owner_id => 3,
    :community_id => 3
  }
)
