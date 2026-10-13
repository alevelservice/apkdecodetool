package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.v.g;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes2.dex */
public final class b extends g {

    /* renamed from: e, reason: collision with root package name */
    private final int f19952e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f19953f;

    /* renamed from: g, reason: collision with root package name */
    private int f19954g;

    /* renamed from: h, reason: collision with root package name */
    private final int f19955h;

    public b(char c2, char c3, int i2) {
        this.f19955h = i2;
        this.f19952e = c3;
        boolean z = true;
        if (this.f19955h <= 0 ? c2 < c3 : c2 > c3) {
            z = false;
        }
        this.f19953f = z;
        this.f19954g = this.f19953f ? c2 : this.f19952e;
    }

    @Override // kotlin.v.g
    public char a() {
        int i2 = this.f19954g;
        if (i2 == this.f19952e) {
            if (this.f19953f) {
                this.f19953f = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f19954g = this.f19955h + i2;
        }
        return (char) i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f19953f;
    }
}
