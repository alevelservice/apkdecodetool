package k.b.a.v;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import k.b.a.m;
import k.b.a.q;
import k.b.a.r;
import k.b.a.u.n;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DateTimeBuilder.java */
/* loaded from: classes2.dex */
public final class a extends k.b.a.w.c implements k.b.a.x.e, Cloneable {

    /* renamed from: e, reason: collision with root package name */
    final Map<k.b.a.x.i, Long> f19766e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    k.b.a.u.i f19767f;

    /* renamed from: g, reason: collision with root package name */
    q f19768g;

    /* renamed from: h, reason: collision with root package name */
    k.b.a.u.b f19769h;

    /* renamed from: i, reason: collision with root package name */
    k.b.a.h f19770i;

    /* renamed from: j, reason: collision with root package name */
    boolean f19771j;

    /* renamed from: k, reason: collision with root package name */
    m f19772k;

    private Long a(k.b.a.x.i iVar) {
        return this.f19766e.get(iVar);
    }

    private a b(k.b.a.x.i iVar, long j2) {
        this.f19766e.put(iVar, Long.valueOf(j2));
        return this;
    }

    private boolean c(i iVar) {
        int i2 = 0;
        loop0: while (i2 < 100) {
            Iterator<Map.Entry<k.b.a.x.i, Long>> it = this.f19766e.entrySet().iterator();
            while (it.hasNext()) {
                k.b.a.x.i key = it.next().getKey();
                k.b.a.x.e resolve = key.resolve(this.f19766e, this, iVar);
                if (resolve != null) {
                    if (resolve instanceof k.b.a.u.g) {
                        k.b.a.u.g gVar = (k.b.a.u.g) resolve;
                        q qVar = this.f19768g;
                        if (qVar == null) {
                            this.f19768g = gVar.getZone();
                        } else if (!qVar.equals(gVar.getZone())) {
                            throw new k.b.a.b("ChronoZonedDateTime must use the effective parsed zone: " + this.f19768g);
                        }
                        resolve = gVar.toLocalDateTime2();
                    }
                    if (resolve instanceof k.b.a.u.b) {
                        a(key, (k.b.a.u.b) resolve);
                    } else if (resolve instanceof k.b.a.h) {
                        a(key, (k.b.a.h) resolve);
                    } else if (resolve instanceof k.b.a.u.c) {
                        k.b.a.u.c cVar = (k.b.a.u.c) resolve;
                        a(key, cVar.toLocalDate());
                        a(key, cVar.toLocalTime());
                    } else {
                        throw new k.b.a.b("Unknown type: " + resolve.getClass().getName());
                    }
                } else if (!this.f19766e.containsKey(key)) {
                    break;
                }
                i2++;
            }
        }
        if (i2 != 100) {
            return i2 > 0;
        }
        throw new k.b.a.b("Badly written field");
    }

    private void d(i iVar) {
        Long l2 = this.f19766e.get(k.b.a.x.a.HOUR_OF_DAY);
        Long l3 = this.f19766e.get(k.b.a.x.a.MINUTE_OF_HOUR);
        Long l4 = this.f19766e.get(k.b.a.x.a.SECOND_OF_MINUTE);
        Long l5 = this.f19766e.get(k.b.a.x.a.NANO_OF_SECOND);
        if (l2 == null) {
            return;
        }
        if (l3 != null || (l4 == null && l5 == null)) {
            if (l3 == null || l4 != null || l5 == null) {
                if (iVar != i.LENIENT) {
                    if (l2 != null) {
                        if (iVar == i.SMART && l2.longValue() == 24 && ((l3 == null || l3.longValue() == 0) && ((l4 == null || l4.longValue() == 0) && (l5 == null || l5.longValue() == 0)))) {
                            l2 = 0L;
                            this.f19772k = m.ofDays(1);
                        }
                        int checkValidIntValue = k.b.a.x.a.HOUR_OF_DAY.checkValidIntValue(l2.longValue());
                        if (l3 != null) {
                            int checkValidIntValue2 = k.b.a.x.a.MINUTE_OF_HOUR.checkValidIntValue(l3.longValue());
                            if (l4 != null) {
                                int checkValidIntValue3 = k.b.a.x.a.SECOND_OF_MINUTE.checkValidIntValue(l4.longValue());
                                if (l5 != null) {
                                    a(k.b.a.h.of(checkValidIntValue, checkValidIntValue2, checkValidIntValue3, k.b.a.x.a.NANO_OF_SECOND.checkValidIntValue(l5.longValue())));
                                } else {
                                    a(k.b.a.h.of(checkValidIntValue, checkValidIntValue2, checkValidIntValue3));
                                }
                            } else if (l5 == null) {
                                a(k.b.a.h.of(checkValidIntValue, checkValidIntValue2));
                            }
                        } else if (l4 == null && l5 == null) {
                            a(k.b.a.h.of(checkValidIntValue, 0));
                        }
                    }
                } else if (l2 != null) {
                    long longValue = l2.longValue();
                    if (l3 == null) {
                        int a2 = k.b.a.w.d.a(k.b.a.w.d.b(longValue, 24L));
                        a(k.b.a.h.of(k.b.a.w.d.a(longValue, 24), 0));
                        this.f19772k = m.ofDays(a2);
                    } else if (l4 != null) {
                        if (l5 == null) {
                            l5 = 0L;
                        }
                        long d2 = k.b.a.w.d.d(k.b.a.w.d.d(k.b.a.w.d.d(k.b.a.w.d.e(longValue, 3600000000000L), k.b.a.w.d.e(l3.longValue(), 60000000000L)), k.b.a.w.d.e(l4.longValue(), 1000000000L)), l5.longValue());
                        int b2 = (int) k.b.a.w.d.b(d2, 86400000000000L);
                        a(k.b.a.h.ofNanoOfDay(k.b.a.w.d.c(d2, 86400000000000L)));
                        this.f19772k = m.ofDays(b2);
                    } else {
                        long d3 = k.b.a.w.d.d(k.b.a.w.d.e(longValue, 3600L), k.b.a.w.d.e(l3.longValue(), 60L));
                        int b3 = (int) k.b.a.w.d.b(d3, 86400L);
                        a(k.b.a.h.ofSecondOfDay(k.b.a.w.d.c(d3, 86400L)));
                        this.f19772k = m.ofDays(b3);
                    }
                }
                this.f19766e.remove(k.b.a.x.a.HOUR_OF_DAY);
                this.f19766e.remove(k.b.a.x.a.MINUTE_OF_HOUR);
                this.f19766e.remove(k.b.a.x.a.SECOND_OF_MINUTE);
                this.f19766e.remove(k.b.a.x.a.NANO_OF_SECOND);
            }
        }
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        k.b.a.w.d.a(iVar, "field");
        Long a2 = a(iVar);
        if (a2 == null) {
            k.b.a.u.b bVar = this.f19769h;
            if (bVar != null && bVar.isSupported(iVar)) {
                return this.f19769h.getLong(iVar);
            }
            k.b.a.h hVar = this.f19770i;
            if (hVar != null && hVar.isSupported(iVar)) {
                return this.f19770i.getLong(iVar);
            }
            throw new k.b.a.b("Field not found: " + iVar);
        }
        return a2.longValue();
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        k.b.a.u.b bVar;
        k.b.a.h hVar;
        if (iVar == null) {
            return false;
        }
        return this.f19766e.containsKey(iVar) || ((bVar = this.f19769h) != null && bVar.isSupported(iVar)) || ((hVar = this.f19770i) != null && hVar.isSupported(iVar));
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.g()) {
            return (R) this.f19768g;
        }
        if (kVar == k.b.a.x.j.a()) {
            return (R) this.f19767f;
        }
        if (kVar == k.b.a.x.j.b()) {
            k.b.a.u.b bVar = this.f19769h;
            if (bVar != null) {
                return (R) k.b.a.f.from((k.b.a.x.e) bVar);
            }
            return null;
        }
        if (kVar == k.b.a.x.j.c()) {
            return (R) this.f19770i;
        }
        if (kVar != k.b.a.x.j.f() && kVar != k.b.a.x.j.d()) {
            if (kVar == k.b.a.x.j.e()) {
                return null;
            }
            return kVar.a(this);
        }
        return kVar.a(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("DateTimeBuilder[");
        if (this.f19766e.size() > 0) {
            sb.append("fields=");
            sb.append(this.f19766e);
        }
        sb.append(", ");
        sb.append(this.f19767f);
        sb.append(", ");
        sb.append(this.f19768g);
        sb.append(", ");
        sb.append(this.f19769h);
        sb.append(", ");
        sb.append(this.f19770i);
        sb.append(']');
        return sb.toString();
    }

    private void b(i iVar) {
        if (this.f19766e.containsKey(k.b.a.x.a.CLOCK_HOUR_OF_DAY)) {
            long longValue = this.f19766e.remove(k.b.a.x.a.CLOCK_HOUR_OF_DAY).longValue();
            if (iVar != i.LENIENT && (iVar != i.SMART || longValue != 0)) {
                k.b.a.x.a.CLOCK_HOUR_OF_DAY.checkValidValue(longValue);
            }
            k.b.a.x.a aVar = k.b.a.x.a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            a(aVar, longValue);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.CLOCK_HOUR_OF_AMPM)) {
            long longValue2 = this.f19766e.remove(k.b.a.x.a.CLOCK_HOUR_OF_AMPM).longValue();
            if (iVar != i.LENIENT && (iVar != i.SMART || longValue2 != 0)) {
                k.b.a.x.a.CLOCK_HOUR_OF_AMPM.checkValidValue(longValue2);
            }
            a(k.b.a.x.a.HOUR_OF_AMPM, longValue2 != 12 ? longValue2 : 0L);
        }
        if (iVar != i.LENIENT) {
            if (this.f19766e.containsKey(k.b.a.x.a.AMPM_OF_DAY)) {
                k.b.a.x.a aVar2 = k.b.a.x.a.AMPM_OF_DAY;
                aVar2.checkValidValue(this.f19766e.get(aVar2).longValue());
            }
            if (this.f19766e.containsKey(k.b.a.x.a.HOUR_OF_AMPM)) {
                k.b.a.x.a aVar3 = k.b.a.x.a.HOUR_OF_AMPM;
                aVar3.checkValidValue(this.f19766e.get(aVar3).longValue());
            }
        }
        if (this.f19766e.containsKey(k.b.a.x.a.AMPM_OF_DAY) && this.f19766e.containsKey(k.b.a.x.a.HOUR_OF_AMPM)) {
            a(k.b.a.x.a.HOUR_OF_DAY, (this.f19766e.remove(k.b.a.x.a.AMPM_OF_DAY).longValue() * 12) + this.f19766e.remove(k.b.a.x.a.HOUR_OF_AMPM).longValue());
        }
        if (this.f19766e.containsKey(k.b.a.x.a.NANO_OF_DAY)) {
            long longValue3 = this.f19766e.remove(k.b.a.x.a.NANO_OF_DAY).longValue();
            if (iVar != i.LENIENT) {
                k.b.a.x.a.NANO_OF_DAY.checkValidValue(longValue3);
            }
            a(k.b.a.x.a.SECOND_OF_DAY, longValue3 / 1000000000);
            a(k.b.a.x.a.NANO_OF_SECOND, longValue3 % 1000000000);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MICRO_OF_DAY)) {
            long longValue4 = this.f19766e.remove(k.b.a.x.a.MICRO_OF_DAY).longValue();
            if (iVar != i.LENIENT) {
                k.b.a.x.a.MICRO_OF_DAY.checkValidValue(longValue4);
            }
            a(k.b.a.x.a.SECOND_OF_DAY, longValue4 / 1000000);
            a(k.b.a.x.a.MICRO_OF_SECOND, longValue4 % 1000000);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MILLI_OF_DAY)) {
            long longValue5 = this.f19766e.remove(k.b.a.x.a.MILLI_OF_DAY).longValue();
            if (iVar != i.LENIENT) {
                k.b.a.x.a.MILLI_OF_DAY.checkValidValue(longValue5);
            }
            a(k.b.a.x.a.SECOND_OF_DAY, longValue5 / 1000);
            a(k.b.a.x.a.MILLI_OF_SECOND, longValue5 % 1000);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.SECOND_OF_DAY)) {
            long longValue6 = this.f19766e.remove(k.b.a.x.a.SECOND_OF_DAY).longValue();
            if (iVar != i.LENIENT) {
                k.b.a.x.a.SECOND_OF_DAY.checkValidValue(longValue6);
            }
            a(k.b.a.x.a.HOUR_OF_DAY, longValue6 / 3600);
            a(k.b.a.x.a.MINUTE_OF_HOUR, (longValue6 / 60) % 60);
            a(k.b.a.x.a.SECOND_OF_MINUTE, longValue6 % 60);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MINUTE_OF_DAY)) {
            long longValue7 = this.f19766e.remove(k.b.a.x.a.MINUTE_OF_DAY).longValue();
            if (iVar != i.LENIENT) {
                k.b.a.x.a.MINUTE_OF_DAY.checkValidValue(longValue7);
            }
            a(k.b.a.x.a.HOUR_OF_DAY, longValue7 / 60);
            a(k.b.a.x.a.MINUTE_OF_HOUR, longValue7 % 60);
        }
        if (iVar != i.LENIENT) {
            if (this.f19766e.containsKey(k.b.a.x.a.MILLI_OF_SECOND)) {
                k.b.a.x.a aVar4 = k.b.a.x.a.MILLI_OF_SECOND;
                aVar4.checkValidValue(this.f19766e.get(aVar4).longValue());
            }
            if (this.f19766e.containsKey(k.b.a.x.a.MICRO_OF_SECOND)) {
                k.b.a.x.a aVar5 = k.b.a.x.a.MICRO_OF_SECOND;
                aVar5.checkValidValue(this.f19766e.get(aVar5).longValue());
            }
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MILLI_OF_SECOND) && this.f19766e.containsKey(k.b.a.x.a.MICRO_OF_SECOND)) {
            a(k.b.a.x.a.MICRO_OF_SECOND, (this.f19766e.remove(k.b.a.x.a.MILLI_OF_SECOND).longValue() * 1000) + (this.f19766e.get(k.b.a.x.a.MICRO_OF_SECOND).longValue() % 1000));
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MICRO_OF_SECOND) && this.f19766e.containsKey(k.b.a.x.a.NANO_OF_SECOND)) {
            a(k.b.a.x.a.MICRO_OF_SECOND, this.f19766e.get(k.b.a.x.a.NANO_OF_SECOND).longValue() / 1000);
            this.f19766e.remove(k.b.a.x.a.MICRO_OF_SECOND);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MILLI_OF_SECOND) && this.f19766e.containsKey(k.b.a.x.a.NANO_OF_SECOND)) {
            a(k.b.a.x.a.MILLI_OF_SECOND, this.f19766e.get(k.b.a.x.a.NANO_OF_SECOND).longValue() / 1000000);
            this.f19766e.remove(k.b.a.x.a.MILLI_OF_SECOND);
        }
        if (this.f19766e.containsKey(k.b.a.x.a.MICRO_OF_SECOND)) {
            a(k.b.a.x.a.NANO_OF_SECOND, this.f19766e.remove(k.b.a.x.a.MICRO_OF_SECOND).longValue() * 1000);
        } else if (this.f19766e.containsKey(k.b.a.x.a.MILLI_OF_SECOND)) {
            a(k.b.a.x.a.NANO_OF_SECOND, this.f19766e.remove(k.b.a.x.a.MILLI_OF_SECOND).longValue() * 1000000);
        }
    }

    a a(k.b.a.x.i iVar, long j2) {
        k.b.a.w.d.a(iVar, "field");
        Long a2 = a(iVar);
        if (a2 != null && a2.longValue() != j2) {
            throw new k.b.a.b("Conflict found: " + iVar + HanziToPinyin.Token.SEPARATOR + a2 + " differs from " + iVar + HanziToPinyin.Token.SEPARATOR + j2 + ": " + this);
        }
        b(iVar, j2);
        return this;
    }

    void a(k.b.a.u.b bVar) {
        this.f19769h = bVar;
    }

    void a(k.b.a.h hVar) {
        this.f19770i = hVar;
    }

    public a a(i iVar, Set<k.b.a.x.i> set) {
        k.b.a.u.b bVar;
        if (set != null) {
            this.f19766e.keySet().retainAll(set);
        }
        b();
        a(iVar);
        b(iVar);
        if (c(iVar)) {
            b();
            a(iVar);
            b(iVar);
        }
        d(iVar);
        a();
        m mVar = this.f19772k;
        if (mVar != null && !mVar.isZero() && (bVar = this.f19769h) != null && this.f19770i != null) {
            this.f19769h = bVar.plus((k.b.a.x.h) this.f19772k);
            this.f19772k = m.ZERO;
        }
        c();
        d();
        return this;
    }

    private void c() {
        if (this.f19770i == null) {
            if (this.f19766e.containsKey(k.b.a.x.a.INSTANT_SECONDS) || this.f19766e.containsKey(k.b.a.x.a.SECOND_OF_DAY) || this.f19766e.containsKey(k.b.a.x.a.SECOND_OF_MINUTE)) {
                if (this.f19766e.containsKey(k.b.a.x.a.NANO_OF_SECOND)) {
                    long longValue = this.f19766e.get(k.b.a.x.a.NANO_OF_SECOND).longValue();
                    this.f19766e.put(k.b.a.x.a.MICRO_OF_SECOND, Long.valueOf(longValue / 1000));
                    this.f19766e.put(k.b.a.x.a.MILLI_OF_SECOND, Long.valueOf(longValue / 1000000));
                } else {
                    this.f19766e.put(k.b.a.x.a.NANO_OF_SECOND, 0L);
                    this.f19766e.put(k.b.a.x.a.MICRO_OF_SECOND, 0L);
                    this.f19766e.put(k.b.a.x.a.MILLI_OF_SECOND, 0L);
                }
            }
        }
    }

    private void a(k.b.a.x.i iVar, k.b.a.u.b bVar) {
        if (this.f19767f.equals(bVar.getChronology())) {
            long epochDay = bVar.toEpochDay();
            Long put = this.f19766e.put(k.b.a.x.a.EPOCH_DAY, Long.valueOf(epochDay));
            if (put == null || put.longValue() == epochDay) {
                return;
            }
            throw new k.b.a.b("Conflict found: " + k.b.a.f.ofEpochDay(put.longValue()) + " differs from " + k.b.a.f.ofEpochDay(epochDay) + " while resolving  " + iVar);
        }
        throw new k.b.a.b("ChronoLocalDate must use the effective parsed chronology: " + this.f19767f);
    }

    private void a(k.b.a.x.i iVar, k.b.a.h hVar) {
        long nanoOfDay = hVar.toNanoOfDay();
        Long put = this.f19766e.put(k.b.a.x.a.NANO_OF_DAY, Long.valueOf(nanoOfDay));
        if (put == null || put.longValue() == nanoOfDay) {
            return;
        }
        throw new k.b.a.b("Conflict found: " + k.b.a.h.ofNanoOfDay(put.longValue()) + " differs from " + hVar + " while resolving  " + iVar);
    }

    private void a(i iVar) {
        if (this.f19767f instanceof n) {
            a(n.INSTANCE.resolveDate(this.f19766e, iVar));
        } else if (this.f19766e.containsKey(k.b.a.x.a.EPOCH_DAY)) {
            a(k.b.a.f.ofEpochDay(this.f19766e.remove(k.b.a.x.a.EPOCH_DAY).longValue()));
        }
    }

    private void a(k.b.a.f fVar) {
        if (fVar != null) {
            a((k.b.a.u.b) fVar);
            for (k.b.a.x.i iVar : this.f19766e.keySet()) {
                if ((iVar instanceof k.b.a.x.a) && iVar.isDateBased()) {
                    try {
                        long j2 = fVar.getLong(iVar);
                        Long l2 = this.f19766e.get(iVar);
                        if (j2 != l2.longValue()) {
                            throw new k.b.a.b("Conflict found: Field " + iVar + HanziToPinyin.Token.SEPARATOR + j2 + " differs from " + iVar + HanziToPinyin.Token.SEPARATOR + l2 + " derived from " + fVar);
                        }
                    } catch (k.b.a.b unused) {
                    }
                }
            }
        }
    }

    private void d() {
        if (this.f19769h == null || this.f19770i == null) {
            return;
        }
        Long l2 = this.f19766e.get(k.b.a.x.a.OFFSET_SECONDS);
        if (l2 != null) {
            this.f19766e.put(k.b.a.x.a.INSTANT_SECONDS, Long.valueOf(this.f19769h.atTime(this.f19770i).atZone2(r.ofTotalSeconds(l2.intValue())).getLong(k.b.a.x.a.INSTANT_SECONDS)));
        } else if (this.f19768g != null) {
            this.f19766e.put(k.b.a.x.a.INSTANT_SECONDS, Long.valueOf(this.f19769h.atTime(this.f19770i).atZone2(this.f19768g).getLong(k.b.a.x.a.INSTANT_SECONDS)));
        }
    }

    private void a(q qVar) {
        k.b.a.u.g<?> zonedDateTime = this.f19767f.zonedDateTime(k.b.a.e.ofEpochSecond(this.f19766e.remove(k.b.a.x.a.INSTANT_SECONDS).longValue()), qVar);
        if (this.f19769h == null) {
            a(zonedDateTime.toLocalDate());
        } else {
            a(k.b.a.x.a.INSTANT_SECONDS, zonedDateTime.toLocalDate());
        }
        a(k.b.a.x.a.SECOND_OF_DAY, zonedDateTime.toLocalTime().toSecondOfDay());
    }

    private void a() {
        k.b.a.h hVar;
        if (this.f19766e.size() > 0) {
            k.b.a.u.b bVar = this.f19769h;
            if (bVar != null && (hVar = this.f19770i) != null) {
                a(bVar.atTime(hVar));
                return;
            }
            k.b.a.u.b bVar2 = this.f19769h;
            if (bVar2 != null) {
                a((k.b.a.x.e) bVar2);
                return;
            }
            k.b.a.h hVar2 = this.f19770i;
            if (hVar2 != null) {
                a((k.b.a.x.e) hVar2);
            }
        }
    }

    private void a(k.b.a.x.e eVar) {
        Iterator<Map.Entry<k.b.a.x.i, Long>> it = this.f19766e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<k.b.a.x.i, Long> next = it.next();
            k.b.a.x.i key = next.getKey();
            long longValue = next.getValue().longValue();
            if (eVar.isSupported(key)) {
                try {
                    long j2 = eVar.getLong(key);
                    if (j2 == longValue) {
                        it.remove();
                    } else {
                        throw new k.b.a.b("Cross check failed: " + key + HanziToPinyin.Token.SEPARATOR + j2 + " vs " + key + HanziToPinyin.Token.SEPARATOR + longValue);
                    }
                } catch (RuntimeException unused) {
                }
            }
        }
    }

    public <R> R a(k.b.a.x.k<R> kVar) {
        return kVar.a(this);
    }

    private void b() {
        if (this.f19766e.containsKey(k.b.a.x.a.INSTANT_SECONDS)) {
            q qVar = this.f19768g;
            if (qVar != null) {
                a(qVar);
                return;
            }
            Long l2 = this.f19766e.get(k.b.a.x.a.OFFSET_SECONDS);
            if (l2 != null) {
                a((q) r.ofTotalSeconds(l2.intValue()));
            }
        }
    }
}
