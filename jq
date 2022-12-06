# To pretty print the json:
jq "." < <path/to/file.json>

# To access the value at key "foo":
jq '.foo'

# To access first list item:
jq '.[0]'

# To slice and dice:
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'

# To extract all keys from json:
jq keys

# To sort by a key:
jq '.foo | sort_by(.bar)'

# To count elements:
jq '.foo | length'

# print only selected fields:
jq '.foo[] | {field_1,field_2}'

# print selected fields as text instead of json:
jq '.foo[] | {field_1,field_2} | join(" ")'

# only print records where given field matches a value
jq '.foo[] | select(.field_1 == "value_1")'
