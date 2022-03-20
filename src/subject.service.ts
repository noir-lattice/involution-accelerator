import { Injectable } from '@nestjs/common';
import { Connection } from 'typeorm';

@Injectable()
export class SubjectService {
  constructor(private connection: Connection) {}

  async randomSubject(take = 15): Promise<Array<any>> {
    const recordStr = await this.queryDay();
    if (!!recordStr.length) {
      return JSON.parse(recordStr[0].subject_string);
    }
    const records = await this.connection.query(`
    select * from
      (select *, ROW_NUMBER() over(partition by type order by RAND()) as new_index from leetcode_question)
    a
    where a.new_index=1 limit ${take}
    `);
    await this.saveDay(JSON.stringify(records));
    return records;
  }

  async randomEnterpriseSubject(
    enterpriseName: string,
    take = 15,
  ): Promise<Array<any>> {
    const recordStr = await this.queryEnterpriseDay(enterpriseName);
    if (!!recordStr.length) {
      return JSON.parse(recordStr[0].subject_string);
    }
    const records = await this.connection.query(`
    select * from
      (select *, ROW_NUMBER() over(partition by type order by RAND()) as new_index from leetcode_question_enterprise)
    a
    where a.type = '${enterpriseName}' limit ${take}
    `);
    await this.saveEnterpriseDay(JSON.stringify(records), enterpriseName);
    return records;
  }

  async finishied(id: number): Promise<string> {
    const dayStr = this.dayFomat('yyyy-MM-dd');
    const subjects = await this.randomSubject();
    const matchedList = subjects.filter((item) => item.id == id);
    if (!matchedList.length) {
      return '已经超过提交时间限制了!';
    }
    matchedList[0].done = true;
    await this.updateDay(dayStr, JSON.stringify(subjects));

    await this.inc(matchedList[0].id, matchedList[0].finish_frequency);
    return null;
  }

  async finishiedEnterprise(
    id: number,
    enterpriseName: string,
  ): Promise<string> {
    const dayStr = this.dayFomat('yyyy-MM-dd') + '_' + enterpriseName;
    const subjects = await this.randomSubject();
    const matchedList = subjects.filter((item) => item.id == id);
    if (!matchedList.length) {
      return '已经超过提交时间限制了!';
    }
    matchedList[0].done = true;
    await this.updateDay(dayStr, JSON.stringify(subjects));

    await this.incEnterprise(
      matchedList[0].id,
      matchedList[0].finish_frequency,
    );
    return null;
  }

  private inc(id: number, freq: number) {
    return this.connection.query(`
      update leetcode_question set finish_frequency = ${
        freq + 1
      } where finish_frequency = ${freq} and id = ${id}
    `);
  }

  private incEnterprise(id: number, freq: number) {
    return this.connection.query(`
      update leetcode_question_enterprise set finish_frequency = ${
        freq + 1
      } where finish_frequency = ${freq} and id = ${id}
    `);
  }

  private queryDay() {
    const dayStr = this.dayFomat('yyyy-MM-dd');
    return this.connection.query(`
      select subject_string from ac_record where day_str = '${dayStr}'
    `);
  }

  private queryEnterpriseDay(enterpriseName: string) {
    const dayStr = this.dayFomat('yyyy-MM-dd');
    return this.connection.query(`
      select subject_string from ac_record where day_str = '${dayStr}_${enterpriseName}'
    `);
  }

  private saveDay(subjectStr: string) {
    const dayStr = this.dayFomat('yyyy-MM-dd');
    return this.connection.query(`
      insert ac_record(day_str, subject_string) values('${dayStr}', '${subjectStr}')
    `);
  }

  private saveEnterpriseDay(subjectStr: string, enterpriseName: string) {
    const dayStr = this.dayFomat('yyyy-MM-dd');
    return this.connection.query(`
      insert ac_record(day_str, subject_string) values('${dayStr}_${enterpriseName}', '${subjectStr}')
    `);
  }

  private updateDay(dayStr: string, subjectStr: string) {
    return this.connection.query(`
      update ac_record set subject_string='${subjectStr}' where day_str='${dayStr}'
    `);
  }

  private dayFomat(fmt: string): string {
    const now = new Date();
    const o = {
      'M+': now.getMonth() + 1, //月份
      'd+': now.getDate(), //日
      'h+': now.getHours() % 12 == 0 ? 12 : now.getHours() % 12, //小时
      'H+': now.getHours(), //小时
      'm+': now.getMinutes(), //分
      's+': now.getSeconds(), //秒
      'q+': Math.floor((now.getMonth() + 3) / 3),
    };
    if (/(y+)/.test(fmt))
      fmt = fmt.replace(
        RegExp.$1,
        (now.getFullYear() + '').substr(4 - RegExp.$1.length),
      );
    for (const k in o)
      if (new RegExp('(' + k + ')').test(fmt))
        fmt = fmt.replace(
          RegExp.$1,
          RegExp.$1.length == 1
            ? o[k]
            : ('00' + o[k]).substr(('' + o[k]).length),
        );
    return fmt;
  }
}
