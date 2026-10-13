package e.f.g.a.a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import e.f.g.a.a.a;
import javax.annotation.Nullable;

/* compiled from: AnimationBackendDelegate.java */
/* loaded from: classes.dex */
public class b<T extends a> implements a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private T f17417a;

    public b(@Nullable T t) {
        this.f17417a = t;
    }

    @Override // e.f.g.a.a.d
    public int a() {
        T t = this.f17417a;
        if (t == null) {
            return 0;
        }
        return t.a();
    }

    @Override // e.f.g.a.a.d
    public int b() {
        T t = this.f17417a;
        if (t == null) {
            return 0;
        }
        return t.b();
    }

    @Override // e.f.g.a.a.a
    public int c() {
        T t = this.f17417a;
        if (t == null) {
            return -1;
        }
        return t.c();
    }

    @Override // e.f.g.a.a.a
    public void clear() {
        T t = this.f17417a;
        if (t != null) {
            t.clear();
        }
    }

    @Override // e.f.g.a.a.a
    public int d() {
        T t = this.f17417a;
        if (t == null) {
            return -1;
        }
        return t.d();
    }

    @Override // e.f.g.a.a.d
    public int a(int i2) {
        T t = this.f17417a;
        if (t == null) {
            return 0;
        }
        return t.a(i2);
    }

    @Override // e.f.g.a.a.a
    public void b(@IntRange(from = 0, to = 255) int i2) {
        T t = this.f17417a;
        if (t != null) {
            t.b(i2);
        }
    }

    @Override // e.f.g.a.a.a
    public boolean a(Drawable drawable, Canvas canvas, int i2) {
        T t = this.f17417a;
        return t != null && t.a(drawable, canvas, i2);
    }

    @Override // e.f.g.a.a.a
    public void a(ColorFilter colorFilter) {
        T t = this.f17417a;
        if (t != null) {
            t.a(colorFilter);
        }
    }

    @Override // e.f.g.a.a.a
    public void a(@Nullable Rect rect) {
        T t = this.f17417a;
        if (t != null) {
            t.a(rect);
        }
    }
}
