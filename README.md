# NestJS Template - SWC - Fastify - Docker - PNPM

<div align="center">
    <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</div>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Project setup

```bash
$ pnpm install
```

## Compile and run the project in different modes

#### Using Local Environment

```bash
# development
$ pnpm run dev

# watch mode
$ pnpm run start:dev

# production mode
$ pnpm run start:prod
```

#### Using Docker

```bash
# development
$ docker-compose dev-mode up --build
```

## Resources

#### Docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Here are some useful Docker commands:
- Build the Docker image: `docker build -t <your-image-name> .`
- Run the Docker container: `docker run -p 3000:3000 <your-image-name>`
- Stop the Docker container: `docker stop <container-id>`
- Remove the Docker container: `docker rm <container-id>`
- View running containers: `docker ps`
- View all containers (including stopped ones): `docker ps -a`
- View Docker images: `docker images`
- Remove a Docker image: `docker rmi <image-id>`

For more information, visit the [Docker Documentation](https://docs.docker.com).

#### NestJS

Nestjs is a progressive Node.js framework for building efficient, reliable and scalable server-side applications. Here are some useful NestJS commands:
- Create a new NestJS project: `nest new <project-name>`
- Generate a new module: `nest generate module <module-name>`
- Generate a new controller: `nest generate controller <controller-name>`
- Generate a new service: `nest generate service <service-name>`
- Start the NestJS application: `npm run start` or `yarn start` or `pnpm start`
- Start the NestJS application in watch mode: `npm run start:dev` or `yarn start:dev` or `pnpm start:dev`
- Build the NestJS application: `npm run build` or `yarn build` or `pnpm build`
- Test the NestJS application: `npm run test` or `yarn test`

For more information, visit the [NestJS Documentation](https://docs.nestjs.com).
