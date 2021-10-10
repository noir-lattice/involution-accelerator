import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SubjectModule } from './subject.module';

@Module({
  imports: [TypeOrmModule.forRoot({ autoLoadEntities: true }), SubjectModule],
})
export class AppModule {}
