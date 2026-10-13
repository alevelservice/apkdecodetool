package com.mapbox.mapboxsdk.p;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: AttributionMeasure.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f16187a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f16188b;

    /* renamed from: c, reason: collision with root package name */
    private Bitmap f16189c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f16190d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f16191e;

    /* renamed from: f, reason: collision with root package name */
    private float f16192f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f16193g;

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private Bitmap f16194a;

        /* renamed from: b, reason: collision with root package name */
        private Bitmap f16195b;

        /* renamed from: c, reason: collision with root package name */
        private Bitmap f16196c;

        /* renamed from: d, reason: collision with root package name */
        private TextView f16197d;

        /* renamed from: e, reason: collision with root package name */
        private TextView f16198e;

        /* renamed from: f, reason: collision with root package name */
        private float f16199f;

        @NonNull
        public b a(Bitmap bitmap) {
            this.f16195b = bitmap;
            return this;
        }

        @NonNull
        public b b(Bitmap bitmap) {
            this.f16196c = bitmap;
            return this;
        }

        @NonNull
        public b c(Bitmap bitmap) {
            this.f16194a = bitmap;
            return this;
        }

        @NonNull
        public b a(TextView textView) {
            this.f16197d = textView;
            return this;
        }

        @NonNull
        public b b(TextView textView) {
            this.f16198e = textView;
            return this;
        }

        @NonNull
        public b a(float f2) {
            this.f16199f = f2;
            return this;
        }

        @NonNull
        public c a() {
            return new c(this.f16194a, this.f16195b, this.f16196c, this.f16197d, this.f16198e, this.f16199f);
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* renamed from: com.mapbox.mapboxsdk.p.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0163c {

        /* renamed from: a, reason: collision with root package name */
        public List<d> f16200a;

        C0163c(c cVar, d... dVarArr) {
            this.f16200a = Arrays.asList(dVarArr);
        }

        @Nullable
        public com.mapbox.mapboxsdk.p.b a(c cVar) {
            Iterator<d> it = this.f16200a.iterator();
            com.mapbox.mapboxsdk.p.b bVar = null;
            while (it.hasNext() && (bVar = it.next().a(cVar)) == null) {
            }
            return bVar;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    public interface d {
        @Nullable
        com.mapbox.mapboxsdk.p.b a(c cVar);
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class e implements d {
        private e() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.c() + cVar.g() <= cVar.e()) {
                return new com.mapbox.mapboxsdk.p.b(cVar.f16187a, c.b(cVar.f16189c, cVar.f16190d, cVar.f16192f), false);
            }
            return null;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class f implements d {
        private f() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.c() + cVar.h() <= cVar.f()) {
                return new com.mapbox.mapboxsdk.p.b(cVar.f16187a, c.b(cVar.f16189c, cVar.f16191e, cVar.f16192f), true);
            }
            return null;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class g implements d {
        private g() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.g() + cVar.f16192f <= cVar.e()) {
                return new com.mapbox.mapboxsdk.p.b(null, c.b(cVar.f16189c, cVar.f16190d, cVar.f16192f), false);
            }
            return null;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class h implements d {
        private h() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @NonNull
        public com.mapbox.mapboxsdk.p.b a(c cVar) {
            return new com.mapbox.mapboxsdk.p.b(null, null, false);
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class i implements d {
        private i() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.h() + cVar.f16192f <= cVar.f()) {
                return new com.mapbox.mapboxsdk.p.b(null, c.b(cVar.f16189c, cVar.f16191e, cVar.f16192f), true);
            }
            return null;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class j implements d {
        private j() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.d() + cVar.g() <= cVar.e()) {
                return new com.mapbox.mapboxsdk.p.b(cVar.f16188b, c.b(cVar.f16189c, cVar.f16190d, cVar.f16192f), false);
            }
            return null;
        }
    }

    /* compiled from: AttributionMeasure.java */
    /* loaded from: classes2.dex */
    private static class k implements d {
        private k() {
        }

        @Override // com.mapbox.mapboxsdk.p.c.d
        @Nullable
        public com.mapbox.mapboxsdk.p.b a(@NonNull c cVar) {
            if (cVar.c() + cVar.h() <= cVar.f()) {
                return new com.mapbox.mapboxsdk.p.b(cVar.f16188b, c.b(cVar.f16189c, cVar.f16191e, cVar.f16192f), true);
            }
            return null;
        }
    }

    c(Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, TextView textView, TextView textView2, float f2) {
        this.f16189c = bitmap;
        this.f16187a = bitmap2;
        this.f16188b = bitmap3;
        this.f16190d = textView;
        this.f16191e = textView2;
        this.f16192f = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float c() {
        return this.f16187a.getWidth() + (this.f16192f * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float d() {
        return this.f16188b.getWidth() + (this.f16192f * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float e() {
        return (this.f16189c.getWidth() * 8) / 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float f() {
        return this.f16189c.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float g() {
        return this.f16190d.getMeasuredWidth() + this.f16192f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float h() {
        return this.f16191e.getMeasuredWidth() + this.f16192f;
    }

    @Nullable
    public com.mapbox.mapboxsdk.p.b b() {
        com.mapbox.mapboxsdk.p.b a2 = new C0163c(this, new e(), new f(), new j(), new k(), new g(), new i(), new h()).a(this);
        this.f16193g = a2.c();
        return a2;
    }

    public TextView a() {
        return this.f16193g ? this.f16191e : this.f16190d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PointF b(Bitmap bitmap, TextView textView, float f2) {
        return new PointF((bitmap.getWidth() - textView.getMeasuredWidth()) - f2, (bitmap.getHeight() - f2) - textView.getMeasuredHeight());
    }
}
