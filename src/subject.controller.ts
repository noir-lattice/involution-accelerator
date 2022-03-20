import { Controller, Get, Param, Render } from '@nestjs/common';
import { SubjectService } from './subject.service';

@Controller()
export class SubjectController {
  constructor(private readonly subjectServiec: SubjectService) {}

  @Get()
  @Render('index')
  async root() {
    const resp = await this.subjectServiec.randomSubject();
    return { subjects: resp, _subjects: JSON.stringify(resp) };
  }

  @Get('/enterprise/:name')
  @Render('enterprise')
  async enterprise(@Param('name') name: string) {
    const resp = await this.subjectServiec.randomEnterpriseSubject(name);
    return { subjects: resp, _subjects: JSON.stringify(resp) };
  }

  @Get('/enterprise/:name/done/:id')
  async enterpriseDone(@Param('name') name: string, @Param('id') id: number) {
    const error = await this.subjectServiec.finishiedEnterprise(id, name);
    if (!!error) {
      return {
        code: -1,
        msg: error,
      };
    }

    return {
      code: 0,
      msg: 'DONE',
    };
  }

  @Get('/done/:id')
  async done(@Param('id') id: number) {
    const error = await this.subjectServiec.finishied(id);
    if (!!error) {
      return {
        code: -1,
        msg: error,
      };
    }

    return {
      code: 0,
      msg: 'DONE',
    };
  }
}
