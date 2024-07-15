import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import { HydratedDocument } from 'mongoose';

export type UsersDocument = HydratedDocument<Users>;

@Schema()
export class Users {
  @Prop()
  nome: string;

  @Prop()
  sobrenome: string;

  @Prop()
  email: string;

  @Prop()
  senha: string;
  
  @Prop()
  tipo: string;

  @Prop()
  id: string;
}

export const UsersSchema = SchemaFactory.createForClass(Users);