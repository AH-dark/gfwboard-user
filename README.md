## Introduction

This is a frontend that is almost fully compatible with the V2Board API, offering more features and customizability than the original v2board-user frontend.
We built this project using React + Redux + Material UI, without the `antd` package but following the style of Ant Design. 
As a service provider whose customers are mostly from mainland China, we need to make a frontend that conforms to the usage habits of Chinese people as much as possible.

## Warning

This project **does not allow** any copyright notices to be removed, including but not limited to:

1. The copyright logo and its link on the left side of the Footer.
2. The `<meta name="copyright">` and `<meta name="author">` tags in the `index.html` file.
3. Other copyright notices hidden on this page.

If we detect that your site directly or indirectly uses our source code but has tampered with or deleted the copyright information, we will take relevant measures.

## Development

First of all, you need to pay attention: According to the AGPL-3.0 agreement, as long as you modify our code, no matter whether you publish this code or only use the code to provide services, you need to open source your code.
Our open source behavior is to build a better open source ecosystem. If you can not respect and follow the rules of the opensource community, please do not use our code. 
If you use our code illegally, then we will actively collect evidence and initiate lawsuits against you and your company.

1. Installation
   - fork this repository, and then clone it to your computer.
   - download pnpm. (https://pnpm.io/installation)
   - run `pnpm install` in the project directory.
2. Development process
   - start dev server run `pnpm start`
   - go to http://localhost:3000 for development
3. Deployment process
   - commit code to GitHub via `git commit` and `git push`
   - run `pnpm run build` to build the production version
   - upload files in the `dist` directory to your server
   - go to http://yourdomain.com for production

## Deployment

### Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fstar-horizon%2Fgfwboard-user)

### Static Hosting

1. Run `pnpm run build` to build the production version.
2. Upload files in the `dist` directory to your server.
3. Go to http://yourdomain.com for production.

## License Scanning

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fstar-horizon%2Fgfwservice-frontend.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fstar-horizon%2Fgfwservice-frontend?ref=badge_large)
