package kotlin.ranges;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Ranges.kt */
/* loaded from: classes2.dex */
final class d implements f<Double> {

    /* renamed from: e, reason: collision with root package name */
    private final double f19956e;

    /* renamed from: f, reason: collision with root package name */
    private final double f19957f;

    public boolean a() {
        return this.f19956e > this.f19957f;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            if (!a() || !((d) obj).a()) {
                d dVar = (d) obj;
                if (this.f19956e != dVar.f19956e || this.f19957f != dVar.f19957f) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (a()) {
            return -1;
        }
        return (Double.valueOf(this.f19956e).hashCode() * 31) + Double.valueOf(this.f19957f).hashCode();
    }

    @NotNull
    public String toString() {
        return this.f19956e + ".." + this.f19957f;
    }
}
