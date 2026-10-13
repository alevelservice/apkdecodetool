package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.v.v;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes2.dex */
public final class i extends v {

    /* renamed from: e, reason: collision with root package name */
    private final int f19964e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f19965f;

    /* renamed from: g, reason: collision with root package name */
    private int f19966g;

    /* renamed from: h, reason: collision with root package name */
    private final int f19967h;

    public i(int i2, int i3, int i4) {
        this.f19967h = i4;
        this.f19964e = i3;
        boolean z = true;
        if (this.f19967h <= 0 ? i2 < i3 : i2 > i3) {
            z = false;
        }
        this.f19965f = z;
        this.f19966g = this.f19965f ? i2 : this.f19964e;
    }

    @Override // kotlin.v.v
    public int a() {
        int i2 = this.f19966g;
        if (i2 == this.f19964e) {
            if (this.f19965f) {
                this.f19965f = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f19966g = this.f19967h + i2;
        }
        return i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f19965f;
    }
}
