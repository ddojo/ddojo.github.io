Data for this dojo is not included because it contains chat messages from a CCTB internal chat room.
If you are a member of that room, you can use the encrypted files for session 30 and decrypt them, using the secret from the lunch channel header and the commands

```bash
gpg --output messages.csv --decrypt messages.csv.gpg
gpg --output reactions.csv --decrypt reactions.csv.gpg
gpg --output files.csv --decrypt files.csv.gpg
```