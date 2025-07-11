export const weekdayList = ["sunday","monday","tuesday","wednesday","thursday","friday","saturday"];

export function resolveRelativeWeekday(txt){
  const m = /(this|next)\s+(monday|tuesday|wednesday|thursday|friday|saturday|sunday)/i.exec(txt);
  if(!m) return;
  const tgt = weekdayList.indexOf(m[2].toLowerCase());
  const today=new Date();
  let d=(tgt-today.getDay()+7)%7;
  if(m[1].toLowerCase()==="next"||d===0) d+=7;
  return new Date(today.getFullYear(),today.getMonth(),today.getDate()+d).toISOString();
}

export function parseAbsDate(txt){
  const m=/(\d{1,4})[\/.\-](\d{1,2})[\/.\-](\d{1,4})/.exec(txt);
  if(!m) return;
  let [,a,b,c]=m.map(Number),y,mo,d;
  if(c>31){y=c;mo=a;d=b;}else if(a>31){y=a;mo=b;d=c;}else{y=c<100?2000+c:c;mo=a;d=b;}
  if(mo<1||mo>12||d<1||d>31) return;
  return new Date(y,mo-1,d).toISOString();
}

export function resolveRelativeWeek(txt){
  const m=/(this|next)\s+week/i.exec(txt);
  if(!m) return;
  const today=new Date(), delta=(today.getDay()+6)%7;
  let mon=new Date(today); mon.setDate(today.getDate()-delta);
  if(m[1].toLowerCase()==="next") mon.setDate(mon.getDate()+7);
  const sun=new Date(mon); sun.setDate(mon.getDate()+6);
  return [mon.toISOString(),sun.toISOString()];
}

export function parseExplicitRange(txt){
  const m=/\s*(\d{1,2}[\/.\-]\d{1,2}[\/.\-]\d{2,4})\s*(?:to|\-|–|—)\s*(\d{1,2}[\/.\-]\d{1,2}[\/.\-]\d{2,4})\s*/i.exec(txt);
  if(!m) return;
  const s=parseAbsDate(m[1]),e=parseAbsDate(m[2]);
  return s&&e?[s,e]:undefined;
}
