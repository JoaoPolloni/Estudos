import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { MongooseModule } from '@nestjs/mongoose';
import { AuthModule } from './auth/auth.module';
import { TimeoutInterceptor } from './timeout.interceptor';
import { ConsultaModule } from './consulta/consulta.module';

@Module({
  imports: [UsersModule, MongooseModule.forRoot('mongodb://localhost/nest'), AuthModule, ConsultaModule],
  controllers: [AppController],
  providers: [AppService, TimeoutInterceptor],
})
export class AppModule {}
