import { Injectable } from '@nestjs/common';
import { CreateConsultaDto } from './dto/create-consulta.dto';
import { UpdateConsultaDto } from './dto/update-consulta.dto';
import { consulta } from './entities/consulta.entity';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsersService {
  constructor(@InjectModel(consulta.name) private ConsultaModel: Model<consulta>) {}

  async create(createConsultaDto: CreateConsultaDto): Promise<consulta> {
    const saltOrRounds = 10;
    const hash = await bcrypt.hash(CreateConsultaDto.name, saltOrRounds);
    const createdConsulta = new this.ConsultaModel(CreateConsultaDto);
    return createdConsulta.save();
  }

  async findAll(): Promise<consulta[]> {
    return this.ConsultaModel.find().exec()
  }

  async findOne(idconsulta: string): Promise<consulta> {
    return this.ConsultaModel.findOne({idconsulta}).exec()
  }

  async update(idconsulta: string, ConsultaDto: UpdateConsultaDto): Promise<consulta> {
    return this.ConsultaModel.findByIdAndUpdate(idconsulta, ConsultaDto)
  }

  async remove(idconsulta: string): Promise<consulta> {
    return this.ConsultaModel.findOneAndDelete().exec()
  }
}