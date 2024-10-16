import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { MongooseModule } from '@nestjs/mongoose';
import { AuthModule } from './auth/auth.module';
import { TimeoutInterceptor } from './timeout.interceptor';

@Module({
  imports: [UsersModule, MongooseModule.forRoot('mongodb://localhost/nest'), AuthModule],
  controllers: [AppController],
  providers: [AppService, TimeoutInterceptor],
})
export class AppModule {}
