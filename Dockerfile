FROM  microsoft/dotnet:latest
EXPOSE 4321
ADD . /src
WORKDIR /src
RUN dotnet restore
RUN dotnet build /p:Configuration=Release
ENTRYPOINT ["dotnet","run"]
