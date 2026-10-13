package k.b.a.u;

import java.io.Serializable;
import k.b.a.u.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChronoDateImpl.java */
/* loaded from: classes2.dex */
public abstract class a<D extends b> extends b implements k.b.a.x.d, k.b.a.x.f, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChronoDateImpl.java */
    /* renamed from: k.b.a.u.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0253a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19723a = new int[k.b.a.x.b.values().length];

        static {
            try {
                f19723a[k.b.a.x.b.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19723a[k.b.a.x.b.WEEKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19723a[k.b.a.x.b.MONTHS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19723a[k.b.a.x.b.YEARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19723a[k.b.a.x.b.DECADES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19723a[k.b.a.x.b.CENTURIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19723a[k.b.a.x.b.MILLENNIA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // k.b.a.u.b
    public c<?> atTime(k.b.a.h hVar) {
        return d.of(this, hVar);
    }

    a<D> minusDays(long j2) {
        return j2 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j2);
    }

    a<D> minusMonths(long j2) {
        return j2 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j2);
    }

    a<D> minusWeeks(long j2) {
        return j2 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j2);
    }

    a<D> minusYears(long j2) {
        return j2 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j2);
    }

    abstract a<D> plusDays(long j2);

    abstract a<D> plusMonths(long j2);

    a<D> plusWeeks(long j2) {
        return plusDays(k.b.a.w.d.b(j2, 7));
    }

    abstract a<D> plusYears(long j2);

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        b date = getChronology().date(dVar);
        if (lVar instanceof k.b.a.x.b) {
            return k.b.a.f.from((k.b.a.x.e) this).until(date, lVar);
        }
        return lVar.between(this, date);
    }

    @Override // k.b.a.u.b, k.b.a.x.d
    public a<D> plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            switch (C0253a.f19723a[((k.b.a.x.b) lVar).ordinal()]) {
                case 1:
                    return plusDays(j2);
                case 2:
                    return plusDays(k.b.a.w.d.b(j2, 7));
                case 3:
                    return plusMonths(j2);
                case 4:
                    return plusYears(j2);
                case 5:
                    return plusYears(k.b.a.w.d.b(j2, 10));
                case 6:
                    return plusYears(k.b.a.w.d.b(j2, 100));
                case 7:
                    return plusYears(k.b.a.w.d.b(j2, 1000));
                default:
                    throw new k.b.a.b(lVar + " not valid for chronology " + getChronology().getId());
            }
        }
        return (a) getChronology().ensureChronoLocalDate(lVar.addTo(this, j2));
    }

    @Override // k.b.a.u.b
    public e until(b bVar) {
        throw new UnsupportedOperationException("Not supported in ThreeTen backport");
    }
}
