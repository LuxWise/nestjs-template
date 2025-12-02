import { CanActivate, ExecutionContext, Injectable, } from '@nestjs/common';

@Injectable()
export class JwtAuthGuard implements CanActivate {
    canActivate(
        context: ExecutionContext,
    ): boolean | Promise<boolean> {
        return true;
    }
}
