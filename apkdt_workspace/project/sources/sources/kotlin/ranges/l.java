package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.v.w;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes2.dex */
public final class l extends w {

    /* renamed from: e, reason: collision with root package name */
    private final long f19973e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f19974f;

    /* renamed from: g, reason: collision with root package name */
    private long f19975g;

    /* renamed from: h, reason: collision with root package name */
    private final long f19976h;

    public l(long j2, long j3, long j4) {
        this.f19976h = j4;
        this.f19973e = j3;
        boolean z = true;
        if (this.f19976h <= 0 ? j2 < j3 : j2 > j3) {
            z = false;
        }
        this.f19974f = z;
        this.f19975g = this.f19974f ? j2 : this.f19973e;
    }

    @Override // kotlin.v.w
    public long a() {
        long j2 = this.f19975g;
        if (j2 == this.f19973e) {
            if (this.f19974f) {
                this.f19974f = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f19975g = this.f19976h + j2;
        }
        return j2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f19974f;
    }
}
