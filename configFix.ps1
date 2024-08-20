# Step 1: Add the theme as a submodule
git submodule add https://github.com/StaticMania/blogge-hugo-theme themes/blogge-hugo-theme

# Step 2: Copy the files from the exampleSite directory
$sourceDir = "themes/blogge-hugo-theme/exampleSite"
$destinationDir = Get-Location

# Copy the data, content, static, resources directories and config.toml
Copy-Item -Path "$sourceDir\data" -Destination "$destinationDir\data" -Recurse -Force
Copy-Item -Path "$sourceDir\content" -Destination "$destinationDir\content" -Recurse -Force
Copy-Item -Path "$sourceDir\static" -Destination "$destinationDir\static" -Recurse -Force
Copy-Item -Path "$sourceDir\resources" -Destination "$destinationDir\resources" -Recurse -Force
Copy-Item -Path "$sourceDir\config.toml" -Destination "$destinationDir\config.toml" -Force

# Step 3: Build and serve the Hugo site
hugo serve