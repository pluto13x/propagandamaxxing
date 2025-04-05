mouseOnBuilding = false;

//generate name from object name
buildingName = object_get_name(object_index);
buildingName = string_delete(buildingName, 0, 1);
var rawName = buildingName;
var displayName = "";

for (var i = 1; i <= string_length(rawName); i++) {
    var char = string_char_at(rawName, i);
    if (ord(char) >= ord("A") && ord(char) <= ord("Z")) {
        displayName += " ";
    }
    displayName += char;
}

buildingName = displayName;