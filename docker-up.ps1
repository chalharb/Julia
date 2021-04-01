## Available commands:
##   - ./docker-up.ps1
##   - ./docker-up.ps1 -env dev
##   - ./docker-up.ps1 -env prod
##   - ./docker-up.ps1 -env dev --build
##   - ./docker-up.ps1 -env prod --build

param ($env, $build)
write-host "Running container using $env environment..."

$cmd_str="docker-compose -f docker/docker-compose.yml "

if ( $env -eq "dev" ) {
    $cmd_str+="-f ./docker/docker-compose.dev.yml"
} elseif ( $env -eq "prod") {
    $cmd_str+="-f ./docker/docker-compose.prod.yml"
} else {
    $cmd_str+="-f ./docker/docker-compose.dev.yml"
}

$cmd_str+=" up"

if ( $build )
{
    $cmd_str+=" $build"
}

write-host "Running command: $cmd_str"

Invoke-Expression $cmd_str
