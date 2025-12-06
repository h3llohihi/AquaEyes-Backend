# Use official Bun image
# See all versions at https://hub.docker.com/r/oven/bun/tags
FROM oven/bun:1 AS base
WORKDIR /usr/src/app

# Install dependencies into temp directory
# This will cache them and speed up future builds
FROM base AS install
RUN mkdir -p /temp/prod
COPY package.json bun.lock /temp/prod/
RUN cd /temp/prod && bun install --frozen-lockfile --production

# Copy production dependencies and source code into final image
FROM base AS release
COPY --from=install /temp/prod/node_modules node_modules
COPY . .

# Set environment
ENV NODE_ENV=production

# Run the app as bun user (better security)
USER bun
EXPOSE 4558

# Start the application
ENTRYPOINT ["bun", "run", "src/app.js"]