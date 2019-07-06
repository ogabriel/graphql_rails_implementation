## Queries

### users
```js
query {
  users {
    id
    email
    quotes {
      id
      message
    }
  }
}
```

### user(id:)
```js
```

### quotes
```js
query {
  quotes {
    id
    message
    email
  }
}
```

### quote(id:)
```js
{
  quote(id: "1923134d-3514-48c9-986c-8fcedd42fadb") {
    id
    email
    message
  }
}
```

