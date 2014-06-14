User.destroy_all

User.create([
  {
    name: "Chas",
    email: "chas@munat.com",
    is_admin: true
  },
  {
    name: "Bill",
    email: "bill@munat.com",
    is_admin: false
  },
  {
    name: "Tammy",
    email: "tammy@munat.com",
    is_admin: false
  },
  {
    name: "Lee",
    email: "lee@munat.com",
    is_admin: false
  },
  {
    name: "Wu Fan",
    email: "wufan@munat.com",
    is_admin: false
  }
])
