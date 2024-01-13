FROM node:lts-slim AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base AS deps
WORKDIR ~/app

# Install dependencies
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

FROM base AS builder
WORKDIR ~/app

# Copy dependencies
COPY --from=deps ~/app/node_modules ./node_modules
COPY . .

# Build
RUN pnpm run build

FROM nginx:stable-alpine AS runner
WORKDIR ~/app

# Copy dist
COPY --from=builder ~/app/dist /usr/share/nginx/html

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
