# yaml

Provides custom resource for creating YAML files by passing a hash as the `content`. The `yaml_file` resource extends the `file` resource, so it has all of the other properties.

```
a = {
    "golf": "hotel",
    "kilo": ["lima", "mike", "november"],
    "india": {
        "juliett": true
        },
    "alpha": {
        "charlie": "delta",
        "bravo": 10,
        },
    "echo": "foxtrot"
    }

yaml_file '/tmp/file.yaml do
    content a
end
```
produces the file `/tmp/file.yaml`
```
---
golf: hotel
kilo:
- lima
- mike
- november
india:
  juliett: true
alpha:
  charlie: delta
  bravo: 10
echo: foxtrot
```

The output is specifically _not_ Ruby symbols for keys, we prefer strings.
