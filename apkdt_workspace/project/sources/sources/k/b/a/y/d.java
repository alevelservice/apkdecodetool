package k.b.a.y;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import k.b.a.r;

/* compiled from: ZoneOffsetTransition.java */
/* loaded from: classes2.dex */
public final class d implements Comparable<d>, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;
    private final r offsetAfter;
    private final r offsetBefore;
    private final k.b.a.g transition;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(k.b.a.g gVar, r rVar, r rVar2) {
        this.transition = gVar;
        this.offsetBefore = rVar;
        this.offsetAfter = rVar2;
    }

    private int a() {
        return getOffsetAfter().getTotalSeconds() - getOffsetBefore().getTotalSeconds();
    }

    public static d of(k.b.a.g gVar, r rVar, r rVar2) {
        k.b.a.w.d.a(gVar, "transition");
        k.b.a.w.d.a(rVar, "offsetBefore");
        k.b.a.w.d.a(rVar2, "offsetAfter");
        if (!rVar.equals(rVar2)) {
            if (gVar.getNano() == 0) {
                return new d(gVar, rVar, rVar2);
            }
            throw new IllegalArgumentException("Nano-of-second must be zero");
        }
        throw new IllegalArgumentException("Offsets must not be equal");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d readExternal(DataInput dataInput) {
        long readEpochSec = a.readEpochSec(dataInput);
        r readOffset = a.readOffset(dataInput);
        r readOffset2 = a.readOffset(dataInput);
        if (!readOffset.equals(readOffset2)) {
            return new d(readEpochSec, readOffset, readOffset2);
        }
        throw new IllegalArgumentException("Offsets must not be equal");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.transition.equals(dVar.transition) && this.offsetBefore.equals(dVar.offsetBefore) && this.offsetAfter.equals(dVar.offsetAfter);
    }

    public k.b.a.g getDateTimeAfter() {
        return this.transition.plusSeconds(a());
    }

    public k.b.a.g getDateTimeBefore() {
        return this.transition;
    }

    public k.b.a.d getDuration() {
        return k.b.a.d.ofSeconds(a());
    }

    public k.b.a.e getInstant() {
        return this.transition.toInstant(this.offsetBefore);
    }

    public r getOffsetAfter() {
        return this.offsetAfter;
    }

    public r getOffsetBefore() {
        return this.offsetBefore;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<r> getValidOffsets() {
        return isGap() ? Collections.emptyList() : Arrays.asList(getOffsetBefore(), getOffsetAfter());
    }

    public int hashCode() {
        return (this.transition.hashCode() ^ this.offsetBefore.hashCode()) ^ Integer.rotateLeft(this.offsetAfter.hashCode(), 16);
    }

    public boolean isGap() {
        return getOffsetAfter().getTotalSeconds() > getOffsetBefore().getTotalSeconds();
    }

    public boolean isOverlap() {
        return getOffsetAfter().getTotalSeconds() < getOffsetBefore().getTotalSeconds();
    }

    public boolean isValidOffset(r rVar) {
        if (isGap()) {
            return false;
        }
        return getOffsetBefore().equals(rVar) || getOffsetAfter().equals(rVar);
    }

    public long toEpochSecond() {
        return this.transition.toEpochSecond(this.offsetBefore);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Transition[");
        sb.append(isGap() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.transition);
        sb.append(this.offsetBefore);
        sb.append(" to ");
        sb.append(this.offsetAfter);
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        a.writeEpochSec(toEpochSecond(), dataOutput);
        a.writeOffset(this.offsetBefore, dataOutput);
        a.writeOffset(this.offsetAfter, dataOutput);
    }

    @Override // java.lang.Comparable
    public int compareTo(d dVar) {
        return getInstant().compareTo(dVar.getInstant());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(long j2, r rVar, r rVar2) {
        this.transition = k.b.a.g.ofEpochSecond(j2, 0, rVar);
        this.offsetBefore = rVar;
        this.offsetAfter = rVar2;
    }
}
