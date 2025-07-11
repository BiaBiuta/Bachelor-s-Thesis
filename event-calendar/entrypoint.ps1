Write-Output "Setting DNS servers..."
$interface = Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | Select-Object -First 1
if ($interface) {
    Set-DnsClientServerAddress -InterfaceAlias $interface.Name -ServerAddresses ("8.8.8.8", "8.8.4.4")
    Write-Output "DNS set to 8.8.8.8, 8.8.4.4 for interface $($interface.Name)"
} else {
    Write-Error "No active network interface found"
}

Write-Output "Testing DNS resolution..."
$dnsTest = Test-NetConnection pypi.org -Port 443
if ($dnsTest.TcpTestSucceeded) {
    Write-Output "DNS resolution successful for pypi.org"
} else {
    Write-Error "DNS resolution failed for pypi.org"
}

Write-Output "Installing pip requirements..."
try {
    pip install --no-cache-dir -r requirements.txt
    Write-Output "Successfully installed requirements"
} catch {
    Write-Error "Failed to install requirements: $_"
    # Fallback to PyPI mirror
    Write-Output "Trying PyPI mirror..."
    pip install --no-cache-dir -r requirements.txt --index-url https://mirrors.aliyun.com/pypi/simple/
}

Write-Output "Starting service..."
if ($env:SERVICE_TYPE -eq "websocket") {
    Write-Output "Starting Daphne WebSocket server..."
    daphne -b 0.0.0.0 -p 5000 eventcalendar.asgi:application
} elseif ($env:SERVICE_TYPE -eq "chatbot") {
    Write-Output "Installing Visual C++ Redistributable..."
    try {
        Invoke-WebRequest -Uri https://aka.ms/vs/17/release/vc_redist.x64.exe -OutFile C:\vc_redist.x64.exe
        Start-Process -FilePath C:\vc_redist.x64.exe -ArgumentList '/quiet /norestart' -Wait
        Remove-Item C:\vc_redist.x64.exe -Force
        Write-Output "Successfully installed Visual C++ Redistributable"
    } catch {
        Write-Error "Failed to install Visual C++ Redistributable: $_"
    }
    Write-Output "Starting Uvicorn server..."
    uvicorn intent_api.main:app --reload --port 8001
} else {
    Write-Output "Running Django migrations..."
    python manage.py makemigrations
    python manage.py migrate
    Write-Output "Starting Django development server..."
    python manage.py runserver 0.0.0.0:8000
}