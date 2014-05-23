Template.postsList.helpers
  posts: ->
    Posts.find()

Template.postsList.editingDoc = ->
  # Will need to set Session somehow before this works
  Posts.findOne _id: Session.get("selectedDocId")
  console.log Session.get("selectedDocId")