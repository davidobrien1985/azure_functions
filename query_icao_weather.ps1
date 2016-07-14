$body = @{
    icao = 'eddk'
}

$res = Invoke-WebRequest -Uri https://dotest.azurewebsites.net/api/metar -Method Post -Body (ConvertTo-Json $body) -Verbose

$res.Content