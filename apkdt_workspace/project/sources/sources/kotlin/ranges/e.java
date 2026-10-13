package kotlin.ranges;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: RangesJVM.kt */
/* loaded from: classes2.dex */
final class e implements f<Float> {

    /* renamed from: e, reason: collision with root package name */
    private final float f19958e;

    /* renamed from: f, reason: collision with root package name */
    private final float f19959f;

    public boolean a() {
        return this.f19958e > this.f19959f;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof e) {
            if (!a() || !((e) obj).a()) {
                e eVar = (e) obj;
                if (this.f19958e != eVar.f19958e || this.f19959f != eVar.f19959f) {
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
        return (Float.valueOf(this.f19958e).hashCode() * 31) + Float.valueOf(this.f19959f).hashCode();
    }

    @NotNull
    public String toString() {
        return this.f19958e + ".." + this.f19959f;
    }
}
