package k.b.a.u;

import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;
import k.b.a.u.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChronoZonedDateTimeImpl.java */
/* loaded from: classes2.dex */
public final class h<D extends b> extends g<D> implements Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final d<D> dateTime;
    private final k.b.a.r offset;
    private final k.b.a.q zone;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChronoZonedDateTimeImpl.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19729a = new int[k.b.a.x.a.values().length];

        static {
            try {
                f19729a[k.b.a.x.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19729a[k.b.a.x.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private h(d<D> dVar, k.b.a.r rVar, k.b.a.q qVar) {
        k.b.a.w.d.a(dVar, "dateTime");
        this.dateTime = dVar;
        k.b.a.w.d.a(rVar, "offset");
        this.offset = rVar;
        k.b.a.w.d.a(qVar, "zone");
        this.zone = qVar;
    }

    private h<D> a(k.b.a.e eVar, k.b.a.q qVar) {
        return ofInstant(toLocalDate().getChronology(), eVar, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> g<R> ofBest(d<R> dVar, k.b.a.q qVar, k.b.a.r rVar) {
        k.b.a.w.d.a(dVar, "localDateTime");
        k.b.a.w.d.a(qVar, "zone");
        if (qVar instanceof k.b.a.r) {
            return new h(dVar, (k.b.a.r) qVar, qVar);
        }
        k.b.a.y.f rules = qVar.getRules();
        k.b.a.g from = k.b.a.g.from((k.b.a.x.e) dVar);
        List<k.b.a.r> validOffsets = rules.getValidOffsets(from);
        if (validOffsets.size() == 1) {
            rVar = validOffsets.get(0);
        } else if (validOffsets.size() == 0) {
            k.b.a.y.d transition = rules.getTransition(from);
            dVar = dVar.plusSeconds(transition.getDuration().getSeconds());
            rVar = transition.getOffsetAfter();
        } else if (rVar == null || !validOffsets.contains(rVar)) {
            rVar = validOffsets.get(0);
        }
        k.b.a.w.d.a(rVar, "offset");
        return new h(dVar, rVar, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> h<R> ofInstant(i iVar, k.b.a.e eVar, k.b.a.q qVar) {
        k.b.a.r offset = qVar.getRules().getOffset(eVar);
        k.b.a.w.d.a(offset, "offset");
        return new h<>((d) iVar.localDateTime(k.b.a.g.ofEpochSecond(eVar.getEpochSecond(), eVar.getNano(), offset)), offset, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g<?> readExternal(ObjectInput objectInput) {
        c cVar = (c) objectInput.readObject();
        k.b.a.r rVar = (k.b.a.r) objectInput.readObject();
        return cVar.atZone2(rVar).withZoneSameLocal2((k.b.a.q) objectInput.readObject());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new v((byte) 13, this);
    }

    @Override // k.b.a.u.g
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && compareTo((g<?>) obj) == 0;
    }

    @Override // k.b.a.u.g
    public k.b.a.r getOffset() {
        return this.offset;
    }

    @Override // k.b.a.u.g
    public k.b.a.q getZone() {
        return this.zone;
    }

    @Override // k.b.a.u.g
    public int hashCode() {
        return (toLocalDateTime2().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    public boolean isSupported(k.b.a.x.l lVar) {
        return lVar instanceof k.b.a.x.b ? lVar.isDateBased() || lVar.isTimeBased() : lVar != null && lVar.isSupportedBy(this);
    }

    @Override // k.b.a.u.g
    /* renamed from: toLocalDateTime */
    public c<D> toLocalDateTime2() {
        return this.dateTime;
    }

    @Override // k.b.a.u.g
    public String toString() {
        String str = toLocalDateTime2().toString() + getOffset().toString();
        if (getOffset() == getZone()) {
            return str;
        }
        return str + '[' + getZone().toString() + ']';
    }

    @Override // k.b.a.x.d
    public long until(k.b.a.x.d dVar, k.b.a.x.l lVar) {
        g<?> zonedDateTime = toLocalDate().getChronology().zonedDateTime(dVar);
        if (lVar instanceof k.b.a.x.b) {
            return this.dateTime.until(zonedDateTime.withZoneSameInstant2(this.offset).toLocalDateTime2(), lVar);
        }
        return lVar.between(this, zonedDateTime);
    }

    @Override // k.b.a.u.g
    /* renamed from: withEarlierOffsetAtOverlap */
    public g<D> withEarlierOffsetAtOverlap2() {
        k.b.a.y.d transition = getZone().getRules().getTransition(k.b.a.g.from((k.b.a.x.e) this));
        if (transition != null && transition.isOverlap()) {
            k.b.a.r offsetBefore = transition.getOffsetBefore();
            if (!offsetBefore.equals(this.offset)) {
                return new h(this.dateTime, offsetBefore, this.zone);
            }
        }
        return this;
    }

    @Override // k.b.a.u.g
    /* renamed from: withLaterOffsetAtOverlap */
    public g<D> withLaterOffsetAtOverlap2() {
        k.b.a.y.d transition = getZone().getRules().getTransition(k.b.a.g.from((k.b.a.x.e) this));
        if (transition != null) {
            k.b.a.r offsetAfter = transition.getOffsetAfter();
            if (!offsetAfter.equals(getOffset())) {
                return new h(this.dateTime, offsetAfter, this.zone);
            }
        }
        return this;
    }

    @Override // k.b.a.u.g
    /* renamed from: withZoneSameInstant */
    public g<D> withZoneSameInstant2(k.b.a.q qVar) {
        k.b.a.w.d.a(qVar, "zone");
        return this.zone.equals(qVar) ? this : a(this.dateTime.toInstant(this.offset), qVar);
    }

    @Override // k.b.a.u.g
    /* renamed from: withZoneSameLocal */
    public g<D> withZoneSameLocal2(k.b.a.q qVar) {
        return ofBest(this.dateTime, qVar, this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.dateTime);
        objectOutput.writeObject(this.offset);
        objectOutput.writeObject(this.zone);
    }

    @Override // k.b.a.u.g, k.b.a.x.d
    public g<D> plus(long j2, k.b.a.x.l lVar) {
        if (lVar instanceof k.b.a.x.b) {
            return with((k.b.a.x.f) this.dateTime.plus(j2, lVar));
        }
        return toLocalDate().getChronology().ensureChronoZonedDateTime(lVar.addTo(this, j2));
    }

    @Override // k.b.a.u.g, k.b.a.x.d
    public g<D> with(k.b.a.x.i iVar, long j2) {
        if (iVar instanceof k.b.a.x.a) {
            k.b.a.x.a aVar = (k.b.a.x.a) iVar;
            int i2 = a.f19729a[aVar.ordinal()];
            if (i2 == 1) {
                return plus(j2 - toEpochSecond(), (k.b.a.x.l) k.b.a.x.b.SECONDS);
            }
            if (i2 != 2) {
                return ofBest(this.dateTime.with(iVar, j2), this.zone, this.offset);
            }
            return a(this.dateTime.toInstant(k.b.a.r.ofTotalSeconds(aVar.checkValidIntValue(j2))), this.zone);
        }
        return toLocalDate().getChronology().ensureChronoZonedDateTime(iVar.adjustInto(this, j2));
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return (iVar instanceof k.b.a.x.a) || (iVar != null && iVar.isSupportedBy(this));
    }
}
