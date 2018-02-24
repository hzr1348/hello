FROM microsoft/dotnet
WORKDIR /app
COPY . ./
RUN dotnet publish -c Release -o out

ENTRYPOINT [ "dotnet","out/hello.dll" ]
EXPOSE 5000