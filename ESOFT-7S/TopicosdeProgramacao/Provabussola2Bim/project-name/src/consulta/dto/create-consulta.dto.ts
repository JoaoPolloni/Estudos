export class CreateConsultaDto {
  pacienteId: string;

  medicoId: string;

  dataHora: Date;

  especialidade: string;
  
  status: Enumerator;

  idconsulta: string;
}