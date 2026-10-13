package e.f.f.f;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* compiled from: ScalingUtils.java */
/* loaded from: classes.dex */
public class q {

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public static abstract class a implements b {
        @Override // e.f.f.f.q.b
        public Matrix a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3) {
            a(matrix, rect, i2, i3, f2, f3, rect.width() / i2, rect.height() / i3);
            return matrix;
        }

        public abstract void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17362a = j.f17378j;

        /* renamed from: b, reason: collision with root package name */
        public static final b f17363b = i.f17377j;

        /* renamed from: c, reason: collision with root package name */
        public static final b f17364c = g.f17375j;

        /* renamed from: d, reason: collision with root package name */
        public static final b f17365d = h.f17376j;

        /* renamed from: e, reason: collision with root package name */
        public static final b f17366e = c.f17371j;

        /* renamed from: f, reason: collision with root package name */
        public static final b f17367f = e.f17373j;

        /* renamed from: g, reason: collision with root package name */
        public static final b f17368g = d.f17372j;

        /* renamed from: h, reason: collision with root package name */
        public static final b f17369h = k.f17379j;

        /* renamed from: i, reason: collision with root package name */
        public static final b f17370i = f.f17374j;

        Matrix a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class c extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17371j = new c();

        private c() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            matrix.setTranslate((int) (rect.left + ((rect.width() - i2) * 0.5f) + 0.5f), (int) (rect.top + ((rect.height() - i3) * 0.5f) + 0.5f));
        }

        public String toString() {
            return "center";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class d extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17372j = new d();

        private d() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float f6;
            float height;
            if (f5 > f4) {
                float width = rect.left + ((rect.width() - (i2 * f5)) * 0.5f);
                height = rect.top;
                f6 = width;
                f4 = f5;
            } else {
                f6 = rect.left;
                height = ((rect.height() - (i3 * f4)) * 0.5f) + rect.top;
            }
            matrix.setScale(f4, f4);
            matrix.postTranslate((int) (f6 + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class e extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17373j = new e();

        private e() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float min = Math.min(Math.min(f4, f5), 1.0f);
            float width = rect.left + ((rect.width() - (i2 * min)) * 0.5f);
            float height = rect.top + ((rect.height() - (i3 * min)) * 0.5f);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_inside";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class f extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17374j = new f();

        private f() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float min = Math.min(f4, f5);
            float f6 = rect.left;
            float height = rect.top + (rect.height() - (i3 * min));
            matrix.setScale(min, min);
            matrix.postTranslate((int) (f6 + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_bottom_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class g extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17375j = new g();

        private g() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float min = Math.min(f4, f5);
            float width = rect.left + ((rect.width() - (i2 * min)) * 0.5f);
            float height = rect.top + ((rect.height() - (i3 * min)) * 0.5f);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_center";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class h extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17376j = new h();

        private h() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float min = Math.min(f4, f5);
            float width = rect.left + (rect.width() - (i2 * min));
            float height = rect.top + (rect.height() - (i3 * min));
            matrix.setScale(min, min);
            matrix.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_end";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class i extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17377j = new i();

        private i() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float min = Math.min(f4, f5);
            float f6 = rect.left;
            float f7 = rect.top;
            matrix.setScale(min, min);
            matrix.postTranslate((int) (f6 + 0.5f), (int) (f7 + 0.5f));
        }

        public String toString() {
            return "fit_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class j extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17378j = new j();

        private j() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float f6 = rect.left;
            float f7 = rect.top;
            matrix.setScale(f4, f5);
            matrix.postTranslate((int) (f6 + 0.5f), (int) (f7 + 0.5f));
        }

        public String toString() {
            return "fit_xy";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class k extends a {

        /* renamed from: j, reason: collision with root package name */
        public static final b f17379j = new k();

        private k() {
        }

        @Override // e.f.f.f.q.a
        public void a(Matrix matrix, Rect rect, int i2, int i3, float f2, float f3, float f4, float f5) {
            float f6;
            float max;
            if (f5 > f4) {
                float f7 = i2 * f5;
                f6 = rect.left + Math.max(Math.min((rect.width() * 0.5f) - (f2 * f7), 0.0f), rect.width() - f7);
                max = rect.top;
                f4 = f5;
            } else {
                f6 = rect.left;
                float f8 = i3 * f4;
                max = Math.max(Math.min((rect.height() * 0.5f) - (f3 * f8), 0.0f), rect.height() - f8) + rect.top;
            }
            matrix.setScale(f4, f4);
            matrix.postTranslate((int) (f6 + 0.5f), (int) (max + 0.5f));
        }

        public String toString() {
            return "focus_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public interface l {
        Object b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static p a(@Nullable Drawable drawable) {
        if (drawable == 0) {
            return null;
        }
        if (drawable instanceof p) {
            return (p) drawable;
        }
        if (drawable instanceof e.f.f.f.d) {
            return a(((e.f.f.f.d) drawable).a());
        }
        if (drawable instanceof e.f.f.f.a) {
            e.f.f.f.a aVar = (e.f.f.f.a) drawable;
            int a2 = aVar.a();
            for (int i2 = 0; i2 < a2; i2++) {
                p a3 = a(aVar.a(i2));
                if (a3 != null) {
                    return a3;
                }
            }
        }
        return null;
    }
}
