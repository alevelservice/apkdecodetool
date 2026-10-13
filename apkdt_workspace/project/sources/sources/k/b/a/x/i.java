package k.b.a.x;

import java.util.Map;

/* compiled from: TemporalField.java */
/* loaded from: classes2.dex */
public interface i {
    <R extends d> R adjustInto(R r, long j2);

    long getFrom(e eVar);

    boolean isDateBased();

    boolean isSupportedBy(e eVar);

    boolean isTimeBased();

    n range();

    n rangeRefinedBy(e eVar);

    e resolve(Map<i, Long> map, e eVar, k.b.a.v.i iVar);
}
