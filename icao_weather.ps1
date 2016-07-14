$request = Get-Content $req -Raw | ConvertFrom-Json

$res = Invoke-RestMethod -Method Get -Uri "http://avwx.rest/api/metar.php?station=$($request.icao)&format=JSON" -verbose

$res = $res.'Raw-Report'

Out-File -Encoding Ascii $response -inputObject "$res"