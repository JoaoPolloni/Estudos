// import { Socket } from "dgram";
// // Implemente um sistema de notificações em tempo real usando Websockets
// // que alerte os pacientes sobre mudanças no status de suas consultas (por exemplo, se uma
// // consulta foi cancelada ou reagendada). (UpgradeConsultaDto)
// // Implemente essa funcionalidade tanto no lado do servidor quanto no lado do cliente.
// // Quando a consulta for atualizada isso deve ser alterado no navegador do usuário.
// // Não funciona, não sei como montar isso

// import { UpdateConsultaDto } from "./consulta/dto/update-consulta.dto";

// Socket.emit(UpdateConsultaDto, { name: 'TesteAlerta' }, (data) => console.log(data));
// @SubscribeMessage(UpdateConsultaDto)
// handleEvent(@MessageBody('id') id: number): number {
//   id === MessageBody.id
//   return id;
  
// }