# drone-vercel

Deploy to Vercel via Drone CI.

___

### Example `.drone.yml`

Deploys
* to an unique test url on pull request push
* to the production url on master push

Edit
* `repo` in `path: /drone/repo`
* `token` in `TOKEN: token`
* `region`in `REGION: region`

### Why define workspace?

The `workspace` definition is necessary, because the default would be something like `src` instead of the real
repository name.

Vercel won't auto generate the correct project info (project name and test urls) from only that.
