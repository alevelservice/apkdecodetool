package e.i.b.c.t;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.Experimental;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ShapePath.java */
@Experimental("The shapes API is currently experimental and subject to change")
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public float f17962a;

    /* renamed from: b, reason: collision with root package name */
    public float f17963b;

    /* renamed from: c, reason: collision with root package name */
    public float f17964c;

    /* renamed from: d, reason: collision with root package name */
    public float f17965d;

    /* renamed from: e, reason: collision with root package name */
    private final List<c> f17966e = new ArrayList();

    /* compiled from: ShapePath.java */
    /* loaded from: classes.dex */
    public static class a extends c {

        /* renamed from: h, reason: collision with root package name */
        private static final RectF f17967h = new RectF();

        /* renamed from: b, reason: collision with root package name */
        public float f17968b;

        /* renamed from: c, reason: collision with root package name */
        public float f17969c;

        /* renamed from: d, reason: collision with root package name */
        public float f17970d;

        /* renamed from: e, reason: collision with root package name */
        public float f17971e;

        /* renamed from: f, reason: collision with root package name */
        public float f17972f;

        /* renamed from: g, reason: collision with root package name */
        public float f17973g;

        public a(float f2, float f3, float f4, float f5) {
            this.f17968b = f2;
            this.f17969c = f3;
            this.f17970d = f4;
            this.f17971e = f5;
        }

        @Override // e.i.b.c.t.d.c
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f17976a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f17967h.set(this.f17968b, this.f17969c, this.f17970d, this.f17971e);
            path.arcTo(f17967h, this.f17972f, this.f17973g, false);
            path.transform(matrix);
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes.dex */
    public static class b extends c {

        /* renamed from: b, reason: collision with root package name */
        private float f17974b;

        /* renamed from: c, reason: collision with root package name */
        private float f17975c;

        @Override // e.i.b.c.t.d.c
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f17976a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f17974b, this.f17975c);
            path.transform(matrix);
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        protected final Matrix f17976a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    public d() {
        b(0.0f, 0.0f);
    }

    public void a(float f2, float f3) {
        b bVar = new b();
        bVar.f17974b = f2;
        bVar.f17975c = f3;
        this.f17966e.add(bVar);
        this.f17964c = f2;
        this.f17965d = f3;
    }

    public void b(float f2, float f3) {
        this.f17962a = f2;
        this.f17963b = f3;
        this.f17964c = f2;
        this.f17965d = f3;
        this.f17966e.clear();
    }

    public void a(float f2, float f3, float f4, float f5, float f6, float f7) {
        a aVar = new a(f2, f3, f4, f5);
        aVar.f17972f = f6;
        aVar.f17973g = f7;
        this.f17966e.add(aVar);
        double d2 = f6 + f7;
        this.f17964c = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d2))));
        this.f17965d = ((f3 + f5) * 0.5f) + (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d2))));
    }

    public void a(Matrix matrix, Path path) {
        int size = this.f17966e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f17966e.get(i2).a(matrix, path);
        }
    }
}
