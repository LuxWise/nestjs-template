import { Controller, Get } from '@nestjs/common';

@Controller('health')
export class HealthController {

  @Get()
  getHealth(): HealthResponse {
    return {
      success: true,
      message: 'Server is running'
    }
  }
}
