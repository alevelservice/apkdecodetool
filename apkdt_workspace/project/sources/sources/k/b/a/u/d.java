package k.b.a.u;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import k.b.a.u.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChronoLocalDateTimeImpl.java */
/* loaded from: classes2.dex */
public final class d<D extends b> extends c<D> implements k.b.a.x.d, k.b.a.x.f, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    private final D date;
    private final k.b.a.h time;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChronoLocalDateTimeImpl.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19726a = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19726a[k.b.a.x.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19726a[k.b.a.x.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19726a[k.b.a.x.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19726a[k.b.a.x.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19726a[k.b.a.x.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19726a[k.b.a.x.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19726a[k.b.a.x.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private d(D d2, k.b.a.h hVar) {
        k.b.a.w.d.a(d2, "date");
        k.b.a.w.d.a(hVar, "time");
        this.date = d2;
        this.time = hVar;
    }

    private d<D> a(k.b.a.x.d dVar, k.b.a.h hVar) {
        return (this.date == dVar && this.time == hVar) ? this : new d<>(this.date.getChronology().ensureChronoLocalDate(dVar), hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> d<R> of(R r, k.b.a.h hVar) {
        return new d<>(r, hVar);
    }

    private d<D> plusDays(long j2) {
        return a(this.date.plus(j2, k.b.a.x.b.DAYS), this.time);
    }

    private d<D> plusHours(long j2) {
        return a(this.date, j2, 0L, 0L, 0L);
    }

    private d<D> plusMinutes(long j2) {
        return a(this.date, 0L, j2, 0L, 0L);
    }

    private d<D> plusNanos(long j2) {
        return a(this.date, 0L, 0L, 0L, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c<?> readExternal(ObjectInput objectInput) {
        return ((b) objectInput.readObject()).atTime((k.b.a.h) objectInput.readObject());
    }

    private Object writeReplace() {
        return new v((byte) 12, this);
    }

    @Override // k.b.a.u.c
    /* renamed from: atZone */
    public g<D> atZone2(k.b.a.q qVar) {
        return h.ofBest(this, qVar, null);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.get(iVar) : this.date.get(iVar);
        }
        return range(iVar).checkValidIntValue(getLong(iVar), iVar);
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.getLong(iVar) : this.date.getLong(iVar);
        }
        return iVar.getFrom(this);
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar.isDateBased() || iVar.isTimeBased() : iVar != null && iVar.isSupportedBy(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<D> plusSeconds(long j2) {
        return a(this.date, 0L, 0L, j2, 0L);
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar instanceof k.b.a.x.a) {
            return iVar.isTimeBased() ? this.time.range(iVar) : this.date.range(iVar);
        }
        return iVar.rangeRefinedBy(this);
    }

    @Override // k.b.a.u.c
    public D toLocalDate() {
        return this.date;
    }

    @Override // k.b.a.u.c
    public k.b.a.h toLocalTime() {
        return this.time;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [k.b.a.u.b] */
    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        c<?> localDateTime = toLocalDate().getChronology().localDateTime(dVar);
        if (lVar instanceof k.b.a.x.b) {
            k.b.a.x.b bVar = (k.b.a.x.b) lVar;
            if (bVar.isTimeBased()) {
                long j2 = localDateTime.getLong(k.b.a.x.a.EPOCH_DAY) - this.date.getLong(k.b.a.x.a.EPOCH_DAY);
                switch (a.f19726a[bVar.ordinal()]) {
                    case 1:
                        j2 = k.b.a.w.d.e(j2, 86400000000000L);
                        break;
                    case 2:
                        j2 = k.b.a.w.d.e(j2, 86400000000L);
                        break;
                    case 3:
                        j2 = k.b.a.w.d.e(j2, 86400000L);
                        break;
                    case 4:
                        j2 = k.b.a.w.d.b(j2, 86400);
                        break;
                    case 5:
                        j2 = k.b.a.w.d.b(j2, 1440);
                        break;
                    case 6:
                        j2 = k.b.a.w.d.b(j2, 24);
                        break;
                    case 7:
                        j2 = k.b.a.w.d.b(j2, 2);
                        break;
                }
                return k.b.a.w.d.d(j2, this.time.until(localDateTime.toLocalTime(), lVar));
            }
            ?? localDate = localDateTime.toLocalDate();
            b bVar2 = localDate;
            if (localDateTime.toLocalTime().isBefore(this.time)) {
                bVar2 = localDate.minus(1L, k.b.a.x.b.DAYS);
            }
            return this.date.until(bVar2, lVar);
        }
        return lVar.between(this, localDateTime);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.date);
        objectOutput.writeObject(this.time);
    }

    @Override // k.b.a.u.c, k.b.a.x.d
    public d<D> plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (a.f19726a[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusNanos(j2);
                case 2:
                    return plusDays(j2 / 86400000000L).plusNanos((j2 % 86400000000L) * 1000);
                case 3:
                    return plusDays(j2 / 86400000).plusNanos((j2 % 86400000) * 1000000);
                case 4:
                    return plusSeconds(j2);
                case 5:
                    return plusMinutes(j2);
                case 6:
                    return plusHours(j2);
                case 7:
                    return plusDays(j2 / 256).plusHours((j2 % 256) * 12);
                default:
                    return a(this.date.plus(j2, lVar), this.time);
            }
        }
        return this.date.getChronology().ensureChronoLocalDateTime(lVar.addTo(this, j2));
    }

    private d<D> a(D d2, long j2, long j3, long j4, long j5) {
        if ((j2 | j3 | j4 | j5) == 0) {
            return a(d2, this.time);
        }
        long nanoOfDay = this.time.toNanoOfDay();
        long j6 = (j5 % 86400000000000L) + ((j4 % 86400) * 1000000000) + ((j3 % 1440) * 60000000000L) + ((j2 % 24) * 3600000000000L) + nanoOfDay;
        long b2 = (j5 / 86400000000000L) + (j4 / 86400) + (j3 / 1440) + (j2 / 24) + k.b.a.w.d.b(j6, 86400000000000L);
        long c2 = k.b.a.w.d.c(j6, 86400000000000L);
        return a(d2.plus(b2, k.b.a.x.b.DAYS), c2 == nanoOfDay ? this.time : k.b.a.h.ofNanoOfDay(c2));
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isDateBased() || lVar.isTimeBased() : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.u.c, k.b.a.w.b, k.b.a.x.d
    public d<D> with(k.b.a.x.f fVar) {
        if (fVar instanceof b) {
            return a((b) fVar, this.time);
        }
        if (fVar instanceof k.b.a.h) {
            return a(this.date, (k.b.a.h) fVar);
        }
        if (fVar instanceof d) {
            return this.date.getChronology().ensureChronoLocalDateTime((d) fVar);
        }
        return this.date.getChronology().ensureChronoLocalDateTime((d) fVar.adjustInto(this));
    }

    @Override // k.b.a.u.c, k.b.a.x.d
    public d<D> with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            if (iVar.isTimeBased()) {
                return a(this.date, this.time.with(iVar, j2));
            }
            return a(this.date.with(iVar, j2), this.time);
        }
        return this.date.getChronology().ensureChronoLocalDateTime(iVar.adjustInto(this, j2));
    }
}
