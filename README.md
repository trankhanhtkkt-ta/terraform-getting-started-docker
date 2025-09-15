## Set Up Terrafrom on Windows PowerShell
To run `terraform` command in Windows PowerShell, run the following (safe) command:

```bash
$ENV:PATH=$ENV:PATH + ";C:\terraform\"
```

## Install Azure CLI
To download `.msi` file for Window 64, run the following command:

```bash
Invoke-WebRequest -Uri https://azcliprod.blob.core.windows.net/msi/azure-cli-2.51.0-x64.msi -OutFile .\AzureCLI.msi
```
