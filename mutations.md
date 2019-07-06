## Mutations

### createUser
```js
mutation {
  createUser(input: {email: "apocalyse@gmail.com", password: "secret"}) {
    user {
      id
      email
      quotes {
        id
      }
    }
    successful
  }
}
```

### updateUser
```js
mutation {
  updateUser(input: {id: "97986516-3d5b-43be-bd57-f419adb97f6e", password: "secret", newQuote: "quando a gira girou"}) {
    user {
      id
      email
      quotes {
        id
        message
      }
    }
    successful
  }
}
```

### deleteUser
```js
mutation {
  deleteUser(input: {id:  "2868efbe-3b41-4437-b97e-9cdc0cf6b131", password: "not correct"}) {
    user {
      email
      id
    }
    successful
  }
}
```

### createQuote
```js
mutation {
  createQuote(input: { message: "He can kill two stones with one bird" email: "vikiwiza@lang.com"} ) {
    quote {
      id
      message
      email
    }
    sucessful
  }
}
```

### updateQuote
```js
mutation {
  updateQuote(input: {id: "1923134d-3514-48c9-986c-8fcedd42fadb", userPassword: "secret", message: "new message"}) {
    quote {
      message
      email
      id
    }
    successful
  }
}
```

### deleteQuote
```js
mutation {
  deleteQuote(input: {id: "74edfdee-739b-40e7-982e-21e9f579c36d", userPassword: "secret"}) {
    quote {
      id
      message
      email
    }
    successful
  }
}
```
