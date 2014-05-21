@Posts = new Meteor.Collection "posts",
  schema: new SimpleSchema
    firstName:
      type: String
      label: "First Name"
      max: 50
    lastName:
      type: String
      label: "Last Name"
      max: 50
    email:
      type: String
      label: "Email"
      max: 100
      regEx: SimpleSchema.RegEx.Email
    datePosted:
      type: Date
      label: "Date Posted"
      optional: true
    content:
      type: String
      max: 500

Posts.allow ->
  insert: ->
    true
  remove: ->
    true
  update: ->
    true