import { Module } from '@nestjs/common';
import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import mongoose from 'mongoose';
import { MongooseModule } from '@nestjs/mongoose';
import { Users, UsersSchema } from './entities/user.entity';

@Module({
  controllers: [UsersController],
  providers: [UsersService],
  exports: [UsersService],
  imports: [MongooseModule.forFeature([{name: Users.name, schema: UsersSchema}])]
})
export class UsersModule {}
