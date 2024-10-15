import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { Users } from './entities/user.entity';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsersService {
  constructor(@InjectModel(Users.name) private UsersModel: Model<Users>) {}

  async create(createUserDto: CreateUserDto): Promise<Users> {
    const saltOrRounds = 10;
    const hash = await bcrypt.hash(createUserDto.senha, saltOrRounds);
    const createdUsers = new this.UsersModel(CreateUserDto);
    return createdUsers.save();
  }

  async findAll(): Promise<Users[]> {
    return this.UsersModel.find().exec()
  }

  async findOne(email: string): Promise<Users> {
    return this.UsersModel.findOne({email}).exec()
  }

  async update(id: string, UserDto: UpdateUserDto): Promise<Users> {
    return this.UsersModel.findByIdAndUpdate(id, UserDto)
  }

  async remove(id: string): Promise<Users> {
    return this.UsersModel.findOneAndDelete().exec()
  }
}