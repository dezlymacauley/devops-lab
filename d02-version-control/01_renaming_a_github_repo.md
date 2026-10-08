# Renaming a GitHub repo
_______________________________________________________________________________

E.g. I have this repo called `vercel-docker-rust`, that is already on GitHub.

I want to change the repo name to `vb-axum-vercel`

_______________________________________________________________________________

First ensure that the local repo and the one on GitHub are in sync.

_______________________________________________________________________________

Change the name of the local repo on your machine.
```bash
mv vercel-docker-rust vb-axum-vercel
```
_______________________________________________________________________________

Enter the repo
```bash
cd vb-axum-vercel
```
_______________________________________________________________________________

Log in to the GitHub cli
```bash
gh auth login
```

You should see something like this
```
? Where do you use GitHub?  [Use arrows to move, type to filter]
> GitHub.com
  Other
```
_______________________________________________________________________________

Select `HTTPS`
```
? What is your preferred protocol for Git operations on this host?  [Use arrows to move, type to filter]
> HTTPS
  SSH
```
_______________________________________________________________________________

Type `Y` and press Enter
```
? Authenticate Git with your GitHub credentials? (Y/n) Y
```
_______________________________________________________________________________

Ensure that you are logged into GitHub and Select `Login with a web browser` 
```
? How would you like to authenticate GitHub CLI?  [Use arrows to move, type to filter]
> Login with a web browser
  Paste an authentication token
```
_______________________________________________________________________________

Update the name of the repo on GitHub

```bash
gh repo rename vb-axum-vercel
```

You should see this. Press `y`
```
? Rename dezlymacauley/vercel-docker-rust to vb-axum-vercel? (y/N) y
```
_______________________________________________________________________________

Run this command to check that the `remote` has been updated.
```bash
git remote -v
```

You should see this
```
origin  https://github.com/dezlymacauley/vb-axum-vercel.git (fetch)
origin  https://github.com/dezlymacauley/vb-axum-vercel.git (push)
```
_______________________________________________________________________________

Edit any files in the project that still refer to the old project name.

Then rebuild the project.

_______________________________________________________________________________

Push the changes to GitHub

```bash
git add .
```

```bash
git commit -m "Changed project name"
```

```bash
git push -u origin main
```
_______________________________________________________________________________

### Update the project name on Vercel Update

```bash
vercel project ls
```

You should see the old project name
```
Vercel CLI 62.0.0 (Node.js 24.21.0)
> Projects found under dezlymacauley [3s]

  Project Name         Latest Production URL                         Updated   Node Version
  vercel-docker-rust   https://vercel-docker-rust-ochre.vercel.app   2h        24.x
```
_______________________________________________________________________________

Delete the project from Vercel

```bash
vercel project rm vercel-docker-rust
```

Type `y`
```
Vercel CLI 62.0.0 (Node.js 24.21.0)
❗  The project vercel-docker-rust will be removed permanently.
It will also delete everything under the project including deployments.
? Are you sure? (y/N) y
```
_______________________________________________________________________________

Delete the `.vercel` directory
```bash
rm -rf .vercel
```
_______________________________________________________________________________
