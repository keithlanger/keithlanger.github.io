$source = "images"
$dest = "images2"
$files = @(
    "AA_38x240_trans.png",
    "AC_38x240_trans.png",
    "AS_38x240_trans.png",
    "BA_38x240_trans.png",
    "DL_38x240_trans.png",
    "UA_38x240_trans.png",
    "WN_trans_240x38.png"
)

foreach ($file in $files) {
    Copy-Item -Path "$source\$file" -Destination "$dest\$file" -Force
}