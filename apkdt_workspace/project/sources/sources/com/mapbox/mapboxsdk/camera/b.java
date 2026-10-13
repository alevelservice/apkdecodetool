package com.mapbox.mapboxsdk.camera;

import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.n;
import java.util.Arrays;

/* compiled from: CameraUpdateFactory.java */
/* loaded from: classes2.dex */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CameraUpdateFactory.java */
    /* renamed from: com.mapbox.mapboxsdk.camera.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0153b implements com.mapbox.mapboxsdk.camera.a {

        /* renamed from: a, reason: collision with root package name */
        private final double f15742a;

        /* renamed from: b, reason: collision with root package name */
        private final LatLng f15743b;

        /* renamed from: c, reason: collision with root package name */
        private final double f15744c;

        /* renamed from: d, reason: collision with root package name */
        private final double f15745d;

        /* renamed from: e, reason: collision with root package name */
        private final double[] f15746e;

        C0153b(double d2, LatLng latLng, double d3, double d4, double[] dArr) {
            this.f15742a = d2;
            this.f15743b = latLng;
            this.f15744c = d3;
            this.f15745d = d4;
            this.f15746e = dArr;
        }

        public double a() {
            return this.f15742a;
        }

        public double[] b() {
            return this.f15746e;
        }

        public LatLng c() {
            return this.f15743b;
        }

        public double d() {
            return this.f15744c;
        }

        public double e() {
            return this.f15745d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0153b.class != obj.getClass()) {
                return false;
            }
            C0153b c0153b = (C0153b) obj;
            if (Double.compare(c0153b.f15742a, this.f15742a) != 0 || Double.compare(c0153b.f15744c, this.f15744c) != 0 || Double.compare(c0153b.f15745d, this.f15745d) != 0) {
                return false;
            }
            LatLng latLng = this.f15743b;
            if (latLng == null ? c0153b.f15743b == null : latLng.equals(c0153b.f15743b)) {
                return Arrays.equals(this.f15746e, c0153b.f15746e);
            }
            return false;
        }

        public int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.f15742a);
            int i2 = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
            LatLng latLng = this.f15743b;
            int hashCode = latLng != null ? latLng.hashCode() : 0;
            long doubleToLongBits2 = Double.doubleToLongBits(this.f15744c);
            int i3 = ((i2 + hashCode) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
            long doubleToLongBits3 = Double.doubleToLongBits(this.f15745d);
            return (((i3 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + Arrays.hashCode(this.f15746e);
        }

        public String toString() {
            return "CameraPositionUpdate{bearing=" + this.f15742a + ", target=" + this.f15743b + ", tilt=" + this.f15744c + ", zoom=" + this.f15745d + ", padding=" + Arrays.toString(this.f15746e) + '}';
        }

        @Override // com.mapbox.mapboxsdk.camera.a
        public CameraPosition a(@NonNull n nVar) {
            if (this.f15743b == null) {
                CameraPosition b2 = nVar.b();
                CameraPosition.b bVar = new CameraPosition.b(this);
                bVar.a(b2.target);
                return bVar.a();
            }
            return new CameraPosition.b(this).a();
        }
    }

    /* compiled from: CameraUpdateFactory.java */
    /* loaded from: classes2.dex */
    static final class c implements com.mapbox.mapboxsdk.camera.a {

        /* renamed from: a, reason: collision with root package name */
        private final int f15747a;

        /* renamed from: b, reason: collision with root package name */
        private final double f15748b;

        /* renamed from: c, reason: collision with root package name */
        private float f15749c;

        /* renamed from: d, reason: collision with root package name */
        private float f15750d;

        c(int i2) {
            this.f15747a = i2;
            this.f15748b = 0.0d;
        }

        public int a() {
            return this.f15747a;
        }

        public float b() {
            return this.f15749c;
        }

        public float c() {
            return this.f15750d;
        }

        public double d() {
            return this.f15748b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.f15747a == cVar.f15747a && Double.compare(cVar.f15748b, this.f15748b) == 0 && Float.compare(cVar.f15749c, this.f15749c) == 0 && Float.compare(cVar.f15750d, this.f15750d) == 0;
        }

        public int hashCode() {
            int i2 = this.f15747a;
            long doubleToLongBits = Double.doubleToLongBits(this.f15748b);
            int i3 = ((i2 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
            float f2 = this.f15749c;
            int floatToIntBits = (i3 + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f15750d;
            return floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
        }

        public String toString() {
            return "ZoomUpdate{type=" + this.f15747a + ", zoom=" + this.f15748b + ", x=" + this.f15749c + ", y=" + this.f15750d + '}';
        }

        double a(double d2) {
            double d3;
            int a2 = a();
            if (a2 == 0) {
                return d2 + 1.0d;
            }
            if (a2 == 1) {
                double d4 = d2 - 1.0d;
                if (d4 < 0.0d) {
                    return 0.0d;
                }
                return d4;
            }
            if (a2 == 2) {
                d3 = d();
            } else {
                if (a2 == 3) {
                    return d();
                }
                if (a2 != 4) {
                    return d2;
                }
                d3 = d();
            }
            return d2 + d3;
        }

        c(int i2, double d2) {
            this.f15747a = i2;
            this.f15748b = d2;
        }

        @Override // com.mapbox.mapboxsdk.camera.a
        public CameraPosition a(@NonNull n nVar) {
            CameraPosition b2 = nVar.b();
            if (a() != 4) {
                CameraPosition.b bVar = new CameraPosition.b(b2);
                bVar.c(a(b2.zoom));
                return bVar.a();
            }
            CameraPosition.b bVar2 = new CameraPosition.b(b2);
            bVar2.c(a(b2.zoom));
            bVar2.a(nVar.l().a(new PointF(b(), c())));
            return bVar2.a();
        }

        c(double d2, float f2, float f3) {
            this.f15747a = 4;
            this.f15748b = d2;
            this.f15749c = f2;
            this.f15750d = f3;
        }
    }

    public static com.mapbox.mapboxsdk.camera.a a(@NonNull CameraPosition cameraPosition) {
        return new C0153b(cameraPosition.bearing, cameraPosition.target, cameraPosition.tilt, cameraPosition.zoom, cameraPosition.padding);
    }

    public static com.mapbox.mapboxsdk.camera.a b() {
        return new c(1);
    }

    public static com.mapbox.mapboxsdk.camera.a c(double d2) {
        return new c(2, d2);
    }

    public static com.mapbox.mapboxsdk.camera.a d(double d2) {
        return new c(3, d2);
    }

    public static com.mapbox.mapboxsdk.camera.a a(@NonNull LatLng latLng) {
        return new C0153b(-1.0d, latLng, -1.0d, -1.0d, null);
    }

    public static com.mapbox.mapboxsdk.camera.a b(double d2) {
        return new C0153b(-1.0d, null, d2, -1.0d, null);
    }

    public static com.mapbox.mapboxsdk.camera.a a(@NonNull LatLngBounds latLngBounds, int i2, int i3, int i4, int i5) {
        return new a(latLngBounds, null, null, i2, i3, i4, i5);
    }

    public static com.mapbox.mapboxsdk.camera.a a(@NonNull LatLng latLng, double d2) {
        return new C0153b(-1.0d, latLng, -1.0d, d2, null);
    }

    /* compiled from: CameraUpdateFactory.java */
    /* loaded from: classes2.dex */
    static final class a implements com.mapbox.mapboxsdk.camera.a {

        /* renamed from: a, reason: collision with root package name */
        private final LatLngBounds f15738a;

        /* renamed from: b, reason: collision with root package name */
        private final int[] f15739b;

        /* renamed from: c, reason: collision with root package name */
        private final Double f15740c;

        /* renamed from: d, reason: collision with root package name */
        private final Double f15741d;

        a(LatLngBounds latLngBounds, Double d2, Double d3, int[] iArr) {
            this.f15738a = latLngBounds;
            this.f15739b = iArr;
            this.f15740c = d2;
            this.f15741d = d3;
        }

        @Override // com.mapbox.mapboxsdk.camera.a
        public CameraPosition a(@NonNull n nVar) {
            if (this.f15740c == null && this.f15741d == null) {
                return nVar.a(this.f15738a, this.f15739b);
            }
            return nVar.a(this.f15738a, this.f15739b, this.f15740c.doubleValue(), this.f15741d.doubleValue());
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15738a.equals(aVar.f15738a)) {
                return Arrays.equals(this.f15739b, aVar.f15739b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f15738a.hashCode() * 31) + Arrays.hashCode(this.f15739b);
        }

        public String toString() {
            return "CameraBoundsUpdate{bounds=" + this.f15738a + ", padding=" + Arrays.toString(this.f15739b) + '}';
        }

        a(LatLngBounds latLngBounds, Double d2, Double d3, int i2, int i3, int i4, int i5) {
            this(latLngBounds, d2, d3, new int[]{i2, i3, i4, i5});
        }
    }

    public static com.mapbox.mapboxsdk.camera.a a(double d2, Point point) {
        return new c(d2, point.x, point.y);
    }

    public static com.mapbox.mapboxsdk.camera.a a() {
        return new c(0);
    }

    public static com.mapbox.mapboxsdk.camera.a a(double d2) {
        return new C0153b(d2, null, -1.0d, -1.0d, null);
    }
}
