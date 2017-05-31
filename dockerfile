FROM microsoft/aspnetcore-build:1.1

WORKDIR /app

COPY . .

RUN dotnet restore

RUN dotnet build

WORKDIR /app/src/DockerDotNetDevsSample1

ENTRYPOINT dotnet run