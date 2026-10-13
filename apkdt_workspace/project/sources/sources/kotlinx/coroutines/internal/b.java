package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ArrayQueue.kt */
/* loaded from: classes2.dex */
public class b<T> {

    /* renamed from: a, reason: collision with root package name */
    private Object[] f20061a = new Object[16];

    /* renamed from: b, reason: collision with root package name */
    private int f20062b;

    /* renamed from: c, reason: collision with root package name */
    private int f20063c;

    private final void c() {
        Object[] objArr = this.f20061a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        int length2 = objArr.length;
        int i2 = this.f20062b;
        int i3 = length2 - i2;
        a.a(objArr, i2, objArr2, 0, i3);
        a.a(this.f20061a, 0, objArr2, i3, this.f20062b);
        this.f20061a = objArr2;
        this.f20062b = 0;
        this.f20063c = length;
    }

    public final boolean a() {
        return this.f20062b == this.f20063c;
    }

    @Nullable
    public final T b() {
        int i2 = this.f20062b;
        if (i2 == this.f20063c) {
            return null;
        }
        Object[] objArr = this.f20061a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f20062b = (i2 + 1) & (objArr.length - 1);
        if (t != null) {
            return t;
        }
        throw new kotlin.r("null cannot be cast to non-null type T");
    }

    public final void a(@NotNull T t) {
        kotlin.jvm.d.h.b(t, "element");
        Object[] objArr = this.f20061a;
        int i2 = this.f20063c;
        objArr[i2] = t;
        this.f20063c = (objArr.length - 1) & (i2 + 1);
        if (this.f20063c == this.f20062b) {
            c();
        }
    }
}
