package e.i.a;

import com.alipay.zoloz.hardware.camera.CameraConstants;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.google.android.gms.ads.d;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static final c f17646b = new c(-1, -2, "mb");

    /* renamed from: c, reason: collision with root package name */
    public static final c f17647c = new c(320, 50, "mb");

    /* renamed from: d, reason: collision with root package name */
    public static final c f17648d = new c(300, 250, "as");

    /* renamed from: e, reason: collision with root package name */
    public static final c f17649e = new c(468, 60, "as");

    /* renamed from: f, reason: collision with root package name */
    public static final c f17650f = new c(728, 90, "as");

    /* renamed from: g, reason: collision with root package name */
    public static final c f17651g = new c(BlobStatic.MONITOR_IMAGE_WIDTH, CameraConstants.CAMERA_MAX_WIDTH, "as");

    /* renamed from: a, reason: collision with root package name */
    private final d f17652a;

    public c(d dVar) {
        this.f17652a = dVar;
    }

    public final int a() {
        return this.f17652a.a();
    }

    public final int b() {
        return this.f17652a.b();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f17652a.equals(((c) obj).f17652a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f17652a.hashCode();
    }

    public final String toString() {
        return this.f17652a.toString();
    }

    private c(int i2, int i3, String str) {
        this(new d(i2, i3));
    }
}
