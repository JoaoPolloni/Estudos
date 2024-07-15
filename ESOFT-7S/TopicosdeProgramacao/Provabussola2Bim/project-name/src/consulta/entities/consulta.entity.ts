import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import { HydratedDocument } from 'mongoose';

export type consultaDocument = HydratedDocument<consulta>;

@Schema()
export class consulta {
  @Prop()
  pacienteId: string;

  @Prop()
  medicoId: string;

  @Prop()
  dataHora: Date;

  @Prop()
  especialidade: string;
  
  @Prop()
  status: Enumerator;

  @Prop()
  idconsulta: String;
}

export const UsersSchema = SchemaFactory.createForClass(consulta);