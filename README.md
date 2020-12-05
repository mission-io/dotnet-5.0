# dotnet-5.0

DotNet 5.0 - Bootstraping new Dotnet Application

## Create new Porject

```shell
# Ex:
dotnet new classlib --name <ProjectName> # Class Library
dotnet new webapi --name <ProjectName> # WebApi
dotnet new sln --name <SolutionName> # Solution File
```

## Add project into solution

```shell
# Ex:
dotnet sln add <ProjectName>
dotnet sln add WebAPi
```

## Add project as dependecy 
```shell
# Ex:
dotnet add reference <ProjectName> 
dotnet add reference ../Domain 
```

## Add new Nuget package in porject

``` shell
# Ex:
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package MySql.Data.EntityFramework --version 8.0.22
dotnet add package Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore
```

## Run the application
```shell
# Ex:
dotnet run --project <ProjectName>
dotnet run --project WebApi
```

## Install entity framework tool

``` shell
dotnet tool install --global dotnet-ef
```

## Migration Issues with DbContext

``` Shell
$ dotnet ef migrations add Initial
```

## Run Entity Framework Migrations

```shell 
$ dotnet ef database update
```

# Reference

1. [Architecture](./docs/Architecture.md)
1. [RoadMap](./docs/RoadMap.md)