@echo off

echo Stopping any running instances of Practice.Samples.IdentityServer4...
taskkill /IM dotnet.exe /F >nul 2>&1

echo Building and running Practice.Samples.IdentityServer4...
cd Practice.Samples.IdentityServer4
start cmd /k "dotnet build && dotnet run --urls https://localhost:44343"
start "" "https://localhost:44343"

echo Stopping any running instances of Practice.IdServer4.WebAPI...
taskkill /IM dotnet.exe /F >nul 2>&1

echo Building and running Practice.IdServer4.WebAPI...
cd ..\Practice.IdServer4.WebAPI
start cmd /k "dotnet build && dotnet run --urls https://localhost:44394"
start "" "https://localhost:44394"

echo Stopping any running instances of Practice.IdServer4.Client...
taskkill /IM dotnet.exe /F >nul 2>&1

echo Building and running Practice.IdServer4.Client...
cd ..\Practice.IdServer4.Client
start cmd /k "dotnet build && dotnet run --urls https://localhost:44346"
start "" "https://localhost:44346"

echo Stopping any running instances of Practice.IdServer4.WebAPI.Client...
taskkill /IM dotnet.exe /F >nul 2>&1

echo Building and running Practice.IdServer4.WebAPI.Client...
cd ..\Practice.IdServer4.WebAPI.Client
start cmd /k "dotnet build && dotnet run --urls https://localhost:44365"
start "" "https://localhost:44365"

echo Stopping any running instances of Practice.IdServer4.HybridClient...
taskkill /IM dotnet.exe /F >nul 2>&1

echo Building and running Practice.IdServer4.HybridClient...
cd ..\Practice.IdServer4.HybridClient
start cmd /k "dotnet build && dotnet run --urls https://localhost:44395"
start "" "https://localhost:44395"