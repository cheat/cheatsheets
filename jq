# To pretty print the json:
jq "." < <path/to/file.json>

# To access the value at key "foo":
jq '.foo' < <path/to/file.json>

# To access first list item:
jq '.[0]' < <path/to/file.json>

# To slice and dice:
jq '.[2:4]' < <path/to/file.json>
jq '.[:3]' < <path/to/file.json>
jq '.[-2:]' < <path/to/file.json>

# To extract all keys from json:
jq keys < <path/to/file.json>

# To sort by a key:
jq '.foo | sort_by(.bar)' < <path/to/file.json>

# To count elements:
jq '.foo | length' < <path/to/file.json>

# print only selected fields:
jq '.foo[] | {field_1,field_2}' < <path/to/file.json>

# print selected fields as text instead of json:
jq '.foo[] | {field_1,field_2} | join(" ")' < <path/to/file.json>

# only print records where given field matches a value:
jq '.foo[] | select(.field_1 == "value_1")' < <path/to/file.json>
