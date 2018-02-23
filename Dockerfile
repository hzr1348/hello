FROM microsoft/aspnetcore:2.0
WORKDIR /app
COPY . ./
RUN dotnet publish -c Release -o out
EXPOSE 5000
ENTRYPOINT [ "dotnet","out/hello.dll" ]
