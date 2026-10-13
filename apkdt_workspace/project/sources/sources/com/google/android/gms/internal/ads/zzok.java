package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(17)
/* loaded from: classes.dex */
public final class zzok extends Surface {

    /* renamed from: g, reason: collision with root package name */
    private static boolean f11220g;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f11221h;

    /* renamed from: e, reason: collision with root package name */
    private final fp1 f11222e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f11223f;

    private zzok(fp1 fp1Var, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f11222e = fp1Var;
    }

    public static synchronized boolean a(Context context) {
        boolean z;
        synchronized (zzok.class) {
            if (!f11221h) {
                if (cp1.f6080a >= 17) {
                    boolean z2 = false;
                    String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                    if (eglQueryString != null && eglQueryString.contains("EGL_EXT_protected_content")) {
                        if (!(cp1.f6080a == 24 && (cp1.f6083d.startsWith("SM-G950") || cp1.f6083d.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                            z2 = true;
                        }
                    }
                    f11220g = z2;
                }
                f11221h = true;
            }
            z = f11220g;
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f11222e) {
            if (!this.f11223f) {
                this.f11222e.a();
                this.f11223f = true;
            }
        }
    }

    public static zzok a(Context context, boolean z) {
        if (cp1.f6080a >= 17) {
            no1.b(!z || a(context));
            return new fp1().a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }
}
