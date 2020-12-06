build:
	dotnet build

build-trim:
	dotnet publish -r osx-x64 -p:PublishTrimmed=True -p:TrimMode=CopyUsed -c Release -o out

run:
	dotnet run --project WebApi

watch:
	dotnet watch --project WebApi -- run

container:
	docker build -t webapi .

push-container:
	echo "need to implement"

run-container:
	docker run -p 8080:80 webapi

