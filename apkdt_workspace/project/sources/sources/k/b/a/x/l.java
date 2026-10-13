package k.b.a.x;

/* compiled from: TemporalUnit.java */
/* loaded from: classes2.dex */
public interface l {
    <R extends d> R addTo(R r, long j2);

    long between(d dVar, d dVar2);

    k.b.a.d getDuration();

    boolean isDateBased();

    boolean isDurationEstimated();

    boolean isSupportedBy(d dVar);

    boolean isTimeBased();
}
