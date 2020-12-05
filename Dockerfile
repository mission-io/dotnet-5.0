FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app/src

COPY *.sln .
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /app
COPY --from=build /app/src/out ./
EXPOSE 80
ENTRYPOINT ["dotnet", "WebApi.dll"]