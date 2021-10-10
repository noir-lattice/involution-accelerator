import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import { SubjectController } from './subject.controller';
import { SubjectService } from './subject.service';

@Module({
  imports: [TypeOrmModule.forFeature([])],
  exports: [TypeOrmModule],
  controllers: [SubjectController],
  providers: [SubjectService],
})
export class SubjectModule {}
