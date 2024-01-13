FROM node:18-slim AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app

FROM base AS deps

# Install dependencies
COPY package.json pnpm-lock.yaml ./
RUN pnpm install

FROM base AS builder

# Copy dependencies
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Build
RUN pnpm run build

FROM nginx:stable-alpine AS runner

# Copy dist
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
