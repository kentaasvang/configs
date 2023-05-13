# Get Ubuntu version
declare repo_version=$(if command -v lsb_release &> /dev/null; then lsb_release -r -s; else grep -oP '(?<=^VERSION_ID=).+' /etc/os-release | tr -d '"'; fi)

# Download Microsoft signing key and repository
wget https://packages.microsoft.com/config/ubuntu/$repo_version/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

# Install Microsoft signing key and repository
sudo dpkg -i packages-microsoft-prod.deb

# Clean up
rm packages-microsoft-prod.deb

# Update packages
sudo apt update -y

# install sdk for dotnet-6
sudo apt install dotnet-sdk-6.0 -y

# install sdk for dotnet-7
sudo apt install dotnet-sdk-7.0 -y

# install preview of dotnet-8
# tar zxf ./bin/dotnet/dotnet-sdk-8.0.100-preview.3.23178.7-linux-x64.tar.gz -C $HOME/.dotnet
