FROM mcr.microsoft.com/dotnet/sdk:7.0 
WORKDIR /app
COPY ./api .
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/api.dll"]