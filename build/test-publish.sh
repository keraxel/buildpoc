cd ../backend
dotnet test
dotnet publish Buildpoc.Web -c Release -o ../artifacts/backend/web
dotnet publish Buildpoc.Someservice -c Release -o ../artifacts/backend/someservice
