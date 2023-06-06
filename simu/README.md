TODO

## Run project
Either open and run project with and IDE and ensure working directory is set to `simu/SimuMultilateration`.

Or open a console and go to SimuMultilateration project, and compile it.
```bash
cd simu/SimuMultilateration
javac src/**/*.java -d target/
```

Run viewer
```bash
java -cp target/ com.opensabot.multilateration.signature.main.SignatureViewer
```