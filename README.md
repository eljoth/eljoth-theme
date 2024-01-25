# eljoth Theme

## Features

## Installation

Create a hugo website as Hugo module and change into directory.

```bash
hugo new site --format yaml <your-site-name>
hugo mod init <your-module-name> 
# preferably the github repo with the path to the go.mod.
# Like github.com/your-organization/your-repo <-- go.mod at root level
cd <your-site-name>
```

Add module to hugo config:

```yaml
module:
  mounts: # This is a TODO, in the future, this mount should be omitted
    - source: ./node_modules/foundation-sites/dist/css/foundation.css
      target: ./assets/css/foundation.css
  imports:
    - path: github.com/eljoth/eljoth-theme  
```

Download npm dependencies.

```bash 
hugo mod npm pack && npm i
```

Run the server:

```bash
hugo server
```

## Configuration

If you would like to customize colors, an additional step needs to be done:

Add a mount to your colors.css file:

```yaml
module:
  mounts:
    # ...
    - source: ./assets/css/colors.css
      target: ./assets/css/colors.css
```

Add the colors.css file to [assets/css/colors.css](assets/css/colors.css)

Contents should look as follows (default configuration):

```css
:root {
    --primary: #283044;
    --secondary: #B9D6F2;
    --tertiary: #FFBA49;
    --main-color: #222222;
    --side-color: #f1f1f1;
    --link-color: var(--secondary);
    --link-color-hover: var(--tertiary);
    --code-color: var(--side-color);
}
```
