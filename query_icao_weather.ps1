param (
  [Parameter(mandatory)]
  [string]$icao_code
)

$body = @{
    icao = $icao_code
}

$res = Invoke-WebRequest -Uri https://dotest.azurewebsites.net/api/metar -Method Post -Body (ConvertTo-Json $body) -Verbose

$res.Content