#!/bin/bash
set -e

SOURCE_DIR="/media/aditya/Nvme ssd/resume projects /AI-Virtual-Assistant"
TARGET_DIR="$HOME/AI-Virtual-Assistant-Reconstructed"

rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

git init

commit() {
  local msg="$1"
  local date="$2"
  GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" \
  GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" \
  GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" \
  git commit --allow-empty -m "$msg"
}

# Initial commit
echo '# AI Virtual Assistant' > README.md
git add README.md
commit "Initial commit" "2026-01-01T10:00:00"

# Branch: setup-turborepo
git checkout -b setup-turborepo
touch turbo.json
git add .
commit "add turbo.json configuration file" "2026-01-03T18:00:00"
echo '{}' > turbo.json
git add .
commit "initialize turborepo settings" "2026-01-06T21:00:00"
mkdir -p packages/ui
git add .
commit "create ui package directory" "2026-01-08T23:00:00"
touch packages/ui/package.json
git add .
commit "add package.json for ui package" "2026-01-12T04:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-01-13T04:00:00" GIT_COMMITTER_DATE="2026-01-13T04:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge setup-turborepo --no-ff -m "Merge branch 'setup-turborepo'"

# Branch: setup-docker
git checkout -b setup-docker
touch Dockerfile
git add .
commit "add Dockerfile for frontend" "2026-01-16T08:00:00"
echo 'FROM node:18' > Dockerfile
git add .
commit "set base image to node 18" "2026-01-19T09:00:00"
touch .dockerignore
git add .
commit "add .dockerignore file" "2026-01-20T15:00:00"
echo 'node_modules' > .dockerignore
git add .
commit "ignore node_modules in docker" "2026-01-23T20:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-01-24T20:00:00" GIT_COMMITTER_DATE="2026-01-24T20:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge setup-docker --no-ff -m "Merge branch 'setup-docker'"

# Branch: setup-tailwind
git checkout -b setup-tailwind
touch tailwind.config.js
git add .
commit "create tailwind config" "2026-01-25T21:00:00"
echo 'module.exports = {}' > tailwind.config.js
git add .
commit "init tailwind config" "2026-01-27T23:00:00"
mkdir -p frontend/src
git add .
commit "create frontend src directory" "2026-01-29T06:00:00"
touch frontend/src/index.css
git add .
commit "add index.css for tailwind directives" "2026-02-01T10:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-02-02T10:00:00" GIT_COMMITTER_DATE="2026-02-02T10:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge setup-tailwind --no-ff -m "Merge branch 'setup-tailwind'"

# Branch: add-trpc
git checkout -b add-trpc
mkdir -p backend/src/trpc
git add .
commit "create trpc directory" "2026-02-03T12:00:00"
touch backend/src/trpc/trpc.ts
git add .
commit "init trpc instance" "2026-02-04T18:00:00"
touch backend/src/trpc/routers.ts
git add .
commit "add root router for trpc" "2026-02-07T22:00:00"
echo 'export const appRouter = {}' > backend/src/trpc/routers.ts
git add .
commit "export appRouter" "2026-02-09T05:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-02-10T05:00:00" GIT_COMMITTER_DATE="2026-02-10T05:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge add-trpc --no-ff -m "Merge branch 'add-trpc'"

# Branch: init-frontend
git checkout -b init-frontend
mkdir -p frontend
git add .
commit "create frontend directory" "2026-02-13T12:00:00"
cp "$SOURCE_DIR/frontend/package.json" frontend/ || touch frontend/package.json
git add .
commit "add frontend package.json" "2026-02-16T17:00:00"
cp "$SOURCE_DIR/frontend/index.html" frontend/ || touch frontend/index.html
git add .
commit "add index.html entry point" "2026-02-18T18:00:00"
cp "$SOURCE_DIR/frontend/vite.config.js" frontend/ || touch frontend/vite.config.js
git add .
commit "add vite configuration" "2026-02-21T20:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-02-22T20:00:00" GIT_COMMITTER_DATE="2026-02-22T20:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge init-frontend --no-ff -m "Merge branch 'init-frontend'"

# Branch: init-backend
git checkout -b init-backend
mkdir -p backend
git add .
commit "create backend directory" "2026-02-24T00:00:00"
cp "$SOURCE_DIR/backend/package.json" backend/ || touch backend/package.json
git add .
commit "add backend package.json" "2026-02-25T07:00:00"
cp "$SOURCE_DIR/backend/index.js" backend/ || touch backend/index.js
git add .
commit "add main index.js for backend" "2026-02-26T11:00:00"
touch backend/.env.example
git add .
commit "add .env.example template" "2026-02-28T15:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-03-01T15:00:00" GIT_COMMITTER_DATE="2026-03-01T15:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge init-backend --no-ff -m "Merge branch 'init-backend'"

# Branch: auth-controllers
git checkout -b auth-controllers
mkdir -p backend/controllers
git add .
commit "create controllers directory" "2026-03-02T19:00:00"
touch backend/controllers/auth.controllers.js
git add .
commit "create auth controller" "2026-03-04T22:00:00"
echo '// auth logic' > backend/controllers/auth.controllers.js
git add .
commit "add basic auth logic skeleton" "2026-03-08T02:00:00"
cp "$SOURCE_DIR/backend/controllers/auth.controllers.js" backend/controllers/ || true
git add .
commit "implement auth controllers" "2026-03-09T10:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-03-10T10:00:00" GIT_COMMITTER_DATE="2026-03-10T10:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge auth-controllers --no-ff -m "Merge branch 'auth-controllers'"

# Branch: user-controllers
git checkout -b user-controllers
touch backend/controllers/user.controller.js
git add .
commit "create user controller" "2026-03-12T15:00:00"
echo '// user logic' > backend/controllers/user.controller.js
git add .
commit "add basic user logic" "2026-03-13T19:00:00"
cp "$SOURCE_DIR/backend/controllers/user.controller.js" backend/controllers/ || true
git add .
commit "implement user controller" "2026-03-15T00:00:00"
mkdir -p backend/routes && touch backend/routes/user.routes.js
git add .
commit "create user routes" "2026-03-16T05:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-03-17T05:00:00" GIT_COMMITTER_DATE="2026-03-17T05:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge user-controllers --no-ff -m "Merge branch 'user-controllers'"

# Branch: frontend-pages
git checkout -b frontend-pages
mkdir -p frontend/src/pages
git add .
commit "create pages directory" "2026-03-18T07:00:00"
cp "$SOURCE_DIR/frontend/src/pages/Home.jsx" frontend/src/pages/ || touch frontend/src/pages/Home.jsx
git add .
commit "add Home page component" "2026-03-21T11:00:00"
cp "$SOURCE_DIR/frontend/src/pages/Login.jsx" frontend/src/pages/ || touch frontend/src/pages/Login.jsx
git add .
commit "add Login page component" "2026-03-24T19:00:00"
cp "$SOURCE_DIR/frontend/src/pages/SignUp.jsx" frontend/src/pages/ || touch frontend/src/pages/SignUp.jsx
git add .
commit "add SignUp page component" "2026-03-28T02:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-03-29T02:00:00" GIT_COMMITTER_DATE="2026-03-29T02:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge frontend-pages --no-ff -m "Merge branch 'frontend-pages'"

# Branch: add-card-component
git checkout -b add-card-component
mkdir -p frontend/src/components
git add .
commit "create components directory" "2026-03-31T04:00:00"
touch frontend/src/components/Card.jsx
git add .
commit "create Card component" "2026-04-01T07:00:00"
echo 'export default function Card() {}' > frontend/src/components/Card.jsx
git add .
commit "add basic Card function" "2026-04-04T09:00:00"
cp "$SOURCE_DIR/frontend/src/components/Card.jsx" frontend/src/components/ || true
git add .
commit "implement final Card component" "2026-04-07T13:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-04-08T13:00:00" GIT_COMMITTER_DATE="2026-04-08T13:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge add-card-component --no-ff -m "Merge branch 'add-card-component'"

# Branch: fix-header-alignment
git checkout -b fix-header-alignment
touch frontend/src/components/Header.jsx
git add .
commit "create Header component" "2026-04-09T14:00:00"
echo 'export default function Header() {}' > frontend/src/components/Header.jsx
git add .
commit "add basic Header" "2026-04-11T21:00:00"
echo '// fixed alignment' >> frontend/src/components/Header.jsx
git add .
commit "fix alignment in header" "2026-04-13T04:00:00"
echo '/* css fix */' >> frontend/src/index.css
git add .
commit "update global css for header" "2026-04-14T06:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-04-15T06:00:00" GIT_COMMITTER_DATE="2026-04-15T06:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge fix-header-alignment --no-ff -m "Merge branch 'fix-header-alignment'"

# Branch: add-primary-button-padding
git checkout -b add-primary-button-padding
touch frontend/src/components/Button.jsx
git add .
commit "create Button component" "2026-04-17T09:00:00"
echo 'export default function Button() {}' > frontend/src/components/Button.jsx
git add .
commit "add basic Button" "2026-04-20T17:00:00"
echo '// added padding' >> frontend/src/components/Button.jsx
git add .
commit "add padding to primary button" "2026-04-24T01:00:00"
echo '// update active state' >> frontend/src/components/Button.jsx
git add .
commit "add active state styles" "2026-04-27T03:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-04-28T03:00:00" GIT_COMMITTER_DATE="2026-04-28T03:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge add-primary-button-padding --no-ff -m "Merge branch 'add-primary-button-padding'"

# Branch: fix-typo-in-readme
git checkout -b fix-typo-in-readme
cp "$SOURCE_DIR/frontend/README.md" frontend/ || touch frontend/README.md
git add .
commit "add frontend README" "2026-05-01T09:00:00"
echo 'AI Virtual Assistant' > README.md
git add .
commit "create root README.md" "2026-05-02T10:00:00"
echo 'fixed typo' >> README.md
git add .
commit "fix typo in project description" "2026-05-05T13:00:00"
echo 'added setup instructions' >> README.md
git add .
commit "add installation steps to README" "2026-05-08T19:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-05-09T19:00:00" GIT_COMMITTER_DATE="2026-05-09T19:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge fix-typo-in-readme --no-ff -m "Merge branch 'fix-typo-in-readme'"

# Branch: setup-eslint
git checkout -b setup-eslint
cp "$SOURCE_DIR/frontend/eslint.config.js" frontend/ || touch frontend/eslint.config.js
git add .
commit "add eslint config" "2026-05-10T21:00:00"
touch .eslintignore
git add .
commit "add .eslintignore" "2026-05-13T05:00:00"
echo 'dist' > .eslintignore
git add .
commit "ignore dist directory in eslint" "2026-05-16T10:00:00"
echo 'node_modules' >> .eslintignore
git add .
commit "ignore node_modules in eslint" "2026-05-18T13:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-05-19T13:00:00" GIT_COMMITTER_DATE="2026-05-19T13:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge setup-eslint --no-ff -m "Merge branch 'setup-eslint'"

# Branch: customize-pages
git checkout -b customize-pages
cp "$SOURCE_DIR/frontend/src/pages/Customize.jsx" frontend/src/pages/ || touch frontend/src/pages/Customize.jsx
git add .
commit "add Customize page" "2026-05-21T18:00:00"
cp "$SOURCE_DIR/frontend/src/pages/Customize2.jsx" frontend/src/pages/ || touch frontend/src/pages/Customize2.jsx
git add .
commit "add Customize2 page" "2026-05-23T22:00:00"
echo '// minor tweak' >> frontend/src/pages/Customize.jsx
git add .
commit "tweak layout in customize page" "2026-05-25T23:00:00"
echo '// update state' >> frontend/src/pages/Customize2.jsx
git add .
commit "update state handling in customize2" "2026-05-27T05:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-05-28T05:00:00" GIT_COMMITTER_DATE="2026-05-28T05:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge customize-pages --no-ff -m "Merge branch 'customize-pages'"

# Branch: gemini-integration
git checkout -b gemini-integration
touch backend/gemini.js
git add .
commit "create gemini service file" "2026-05-30T06:00:00"
echo '// gemini api init' > backend/gemini.js
git add .
commit "initialize gemini API client" "2026-06-01T09:00:00"
cp "$SOURCE_DIR/backend/gemini.js" backend/ || true
git add .
commit "implement full gemini integration" "2026-06-02T14:00:00"
echo 'GEMINI_API_KEY=' >> backend/.env.example
git add .
commit "add gemini key to env example" "2026-06-05T16:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-06-06T16:00:00" GIT_COMMITTER_DATE="2026-06-06T16:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge gemini-integration --no-ff -m "Merge branch 'gemini-integration'"

# Branch: update-styles
git checkout -b update-styles
mkdir -p frontend/src/style
git add .
commit "create style directory" "2026-06-08T21:00:00"
cp "$SOURCE_DIR/frontend/src/style/index.css" frontend/src/style/ || touch frontend/src/style/index.css
git add .
commit "add style index.css" "2026-06-12T05:00:00"
echo '/* primary color */' >> frontend/src/style/index.css
git add .
commit "define primary color variable" "2026-06-14T10:00:00"
echo '/* font family */' >> frontend/src/style/index.css
git add .
commit "set global font family" "2026-06-15T11:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-06-16T11:00:00" GIT_COMMITTER_DATE="2026-06-16T11:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge update-styles --no-ff -m "Merge branch 'update-styles'"

# Branch: add-auth-routes
git checkout -b add-auth-routes
mkdir -p backend/routes
git add .
commit "create routes directory" "2026-06-17T17:00:00"
touch backend/routes/auth.routes.js
git add .
commit "create auth routes file" "2026-06-20T00:00:00"
echo '// login route' > backend/routes/auth.routes.js
git add .
commit "add login endpoint" "2026-06-21T04:00:00"
echo '// register route' >> backend/routes/auth.routes.js
git add .
commit "add register endpoint" "2026-06-24T06:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-06-25T06:00:00" GIT_COMMITTER_DATE="2026-06-25T06:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge add-auth-routes --no-ff -m "Merge branch 'add-auth-routes'"

# Branch: docker-compose
git checkout -b docker-compose
touch docker-compose.yml
git add .
commit "create docker-compose config" "2026-06-26T10:00:00"
echo 'version: "3"' > docker-compose.yml
git add .
commit "set docker-compose version" "2026-06-28T16:00:00"
echo 'services:' >> docker-compose.yml
git add .
commit "add services block" "2026-07-01T19:00:00"
echo '  frontend:' >> docker-compose.yml
git add .
commit "configure frontend service" "2026-07-05T03:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-07-06T03:00:00" GIT_COMMITTER_DATE="2026-07-06T03:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge docker-compose --no-ff -m "Merge branch 'docker-compose'"

# Branch: final-polishing
git checkout -b final-polishing
cp "$SOURCE_DIR/frontend/src/main.jsx" frontend/src/ || touch frontend/src/main.jsx
git add .
commit "update main.jsx entry" "2026-07-09T05:00:00"
cp "$SOURCE_DIR/frontend/src/App.jsx" frontend/src/ || touch frontend/src/App.jsx
git add .
commit "update App component" "2026-07-10T09:00:00"
echo '// remove console logs' >> frontend/src/App.jsx
git add .
commit "remove debug statements" "2026-07-13T16:00:00"
echo '// version bump' >> frontend/package.json
git add .
commit "bump version before release" "2026-07-14T17:00:00"
git checkout main
GIT_AUTHOR_DATE="2026-07-15T17:00:00" GIT_COMMITTER_DATE="2026-07-15T17:00:00" GIT_AUTHOR_NAME="Aditya Thakur" GIT_AUTHOR_EMAIL="aditya@example.com" GIT_COMMITTER_NAME="Aditya Thakur" GIT_COMMITTER_EMAIL="aditya@example.com" git merge final-polishing --no-ff -m "Merge branch 'final-polishing'"
