# Create React App in Hugo

Simple example of embeding React App ([CRA](https://github.com/facebook/create-react-app)) in [Hugo](https://github.com/gohugoio/hugo) site:

1. Add an existing React app folder or create a new one at the same level as Hugo
2. Create a new folder in `<hugo-site>/content/<react-app-path>` that to be the route for the React application.
3. Add `PUBLIC_URL` in `.env.production` with the `<react-app-path>` value.
4. Set up a [build file](/build.sh) to build the Hugo site and React app in the same folder.
5. Use the final build folder to serve it.

<br>

## Local development


### with LiveReload

Hugo site and React app with LiveReload are running separately for the local development.

#### Hugo

```bash
cd hugo-site
hugo server
```

Open [http://localhost:1313/](http://localhost:1313/)

#### CRA

```bash
cd react-cra
yarn start
```

Open [http://localhost:3000/](http://localhost:3000/)


### without LiveReload

Run build.sh and use any tool to serve it. For example [serve](https://github.com/vercel/serve):

```bash
sh build.sh
serve build
```
