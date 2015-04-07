# /dev/null API

An experimental API to demonstrate living documentation.

## API Reference

Endpoint: http://dev-null.herokuapp.com

-----

## Trash

This is the trash resource. You can store important things here.

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **filename** | *string* | The name of the file being trashed. | `"pictures_of_myself.zip"` |
| **data** | *string* | The data you want to trash in our distributed trash cloud. | `"!!! LARGE BINARY DATA !!!"` |
| **message** | *string* | A message | `"kthxbai"` |

### Trash List

Returns random strings from ruby's ObjectSpace

```
GET /trash
```


#### Curl Example

```bash
$ curl -n -X GET http://dev-null.herokuapp.com/trash

```


#### Response Example

```
HTTP/1.1 200
```

```json
{
  "trash": [
    "Bourbon Sass Mixins using SCSS syntax.",
    "action_dispatch.request.content_type"
  ]
}
```

### Trash Show

Returns a text-based adventure game.

```
GET /trash/{_filename}
```


#### Curl Example

```bash
$ curl -n -X GET http://dev-null.herokuapp.com/trash/$_FILENAME

```


#### Response Example

```
HTTP/1.1 200
```

```json
{
  "message": "It's pitch black. You are likely to be eaten by a grue.\n/trash/2 - Light a torch.\n/trash/3 - Stumble around until you find a way out."
}
```

### Trash Create

Uploads your trash to the cloud.

```
POST /trash
```


#### Curl Example

```bash
$ curl -n -X POST http://dev-null.herokuapp.com/trash \
  -H "Content-Type: application/json" \

```


#### Response Example

```
HTTP/1.1 200
```

```json
{
  "message": "kthxbai"
}
```

### Trash Destroy

Does absolutely nothing.

```
DELETE /trash/{_filename}
```


#### Curl Example

```bash
$ curl -n -X DELETE http://dev-null.herokuapp.com/trash/$_FILENAME \
  -H "Content-Type: application/json" \

```


#### Response Example

```
HTTP/1.1 200
```

```json
{
  "message": "kthxbai"
}
```


