Schemas = {}

UI.registerHelper "Schemas", Schemas

Schemas.ContactForm = new SimpleSchema(
  name:
    type: String
    label: "Your name"
    max: 50

  email:
    type: String
    regEx: SimpleSchema.RegEx.Email
    label: "E-mail address"

  message:
    type: String
    label: "Message"
    max: 1000
)

console.log "out of contact form"
