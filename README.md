# Microservice in Go

The code in this repository is a microservice written in Go. The microservice exposes a REST API for managing a list of books.

## API

The microservice provides the following REST API:

### Get all books

Returns a JSON array of all the books in the database.

**URL** : `/api/books`

**Method** : `GET`

**Auth required** : NO

**Permissions required** : None

### Get a book

Returns a JSON object for the book with the given ID.

**URL** : `/api/books/:id`

**Method** : `GET`

**Auth required** : NO

**Permissions required** : None

**URL Parameters**

| Name | Type | Description |
| ---- | ---- | ----------- |
| `id` | `string` | The ID of the book to retrieve |

### Create a book

Creates a new book in the database.

**URL** : `/api/books`

**Method** : `POST`

**Auth required** : NO

**Permissions required** : None

**Data constraints**

```json
{
    "isbn": "[valid ISBN]",
    "title": "[book title]",
    "author": {
        "firstname": "[author first name]",
        "lastname": "[author last name]"
    }
}
```

**Data example**

```json
{
    "isbn": "1234567890",
    "title": "My Book",
    "author": {
        "firstname": "John",
        "lastname": "Doe"
    }
}
```

### Update a book

Updates the book with the given ID.

**URL** : `/api/books/:id`

**Method** : `PUT`

**Auth required** : NO

**Permissions required** : None

**URL Parameters**

| Name | Type | Description |
| ---- | ---- | ----------- |
| `id` | `string` | The ID of the book to update |

**Data constraints**

```json
{
    "isbn": "[valid ISBN]",
    "title": "[book title]",
    "author": {
        "firstname": "[author first name]",
        "lastname": "[author last name]"
    }
}
```

**Data example**

```json
{
    "isbn": "1234567890",
    "title": "My Book",
    "author": {
        "firstname": "John",
        "lastname": "Doe"
    }
}
```

### Delete a book

Deletes the book with the given ID.

**URL** : `/api/books/:id`

**Method** : `DELETE`

**Auth required** : NO

**Permissions required** : None

**URL Parameters**

| Name | Type | Description |
| ---- | ---- | ----------- |
| `id` | `string` | The ID of the book to delete |

# Running the code

You can run the code using the following command:

```
go run main.go
```

# Output

The code will start a server on `http://localhost:8000`. You can then access the following endpoints:

- `http://localhost:8000/api/books` - Returns a list of books
- `http://localhost:8000/api/books/{id}` - Returns a single book with the given `id`
- `http://localhost:8000/api/books` - Creates a new book
- `http://localhost:8000/api/books/{id}` - Updates a book with the given `id`
- `http://localhost:8000/api/books/{id}` - Deletes a book with the given `id`
