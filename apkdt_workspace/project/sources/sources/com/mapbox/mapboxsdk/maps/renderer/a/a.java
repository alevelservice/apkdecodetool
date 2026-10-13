package com.mapbox.mapboxsdk.maps.renderer.a;

import android.opengl.GLSurfaceView;
import android.os.Build;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.ArrayList;
import java.util.Collections;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: EGLConfigChooser.java */
/* loaded from: classes2.dex */
public class a implements GLSurfaceView.EGLConfigChooser {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16122a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EGLConfigChooser.java */
    /* renamed from: com.mapbox.mapboxsdk.maps.renderer.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0160a implements Comparable<C0160a> {

        /* renamed from: e, reason: collision with root package name */
        private final b f16123e;

        /* renamed from: f, reason: collision with root package name */
        private final c f16124f;

        /* renamed from: g, reason: collision with root package name */
        private final boolean f16125g;

        /* renamed from: h, reason: collision with root package name */
        private final boolean f16126h;

        /* renamed from: i, reason: collision with root package name */
        private final int f16127i;

        /* renamed from: j, reason: collision with root package name */
        private final EGLConfig f16128j;

        public C0160a(a aVar, b bVar, c cVar, boolean z, boolean z2, int i2, EGLConfig eGLConfig) {
            this.f16123e = bVar;
            this.f16124f = cVar;
            this.f16125g = z;
            this.f16126h = z2;
            this.f16127i = i2;
            this.f16128j = eGLConfig;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NonNull C0160a c0160a) {
            int a2 = com.mapbox.mapboxsdk.utils.c.a(this.f16123e.value, c0160a.f16123e.value);
            if (a2 != 0) {
                return a2;
            }
            int a3 = com.mapbox.mapboxsdk.utils.c.a(this.f16124f.value, c0160a.f16124f.value);
            if (a3 != 0) {
                return a3;
            }
            int a4 = com.mapbox.mapboxsdk.utils.c.a(this.f16125g, c0160a.f16125g);
            if (a4 != 0) {
                return a4;
            }
            int a5 = com.mapbox.mapboxsdk.utils.c.a(this.f16126h, c0160a.f16126h);
            if (a5 != 0) {
                return a5;
            }
            int a6 = com.mapbox.mapboxsdk.utils.c.a(this.f16127i, c0160a.f16127i);
            if (a6 != 0) {
                return a6;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EGLConfigChooser.java */
    /* loaded from: classes2.dex */
    public enum b {
        Format16Bit(3),
        Format32BitNoAlpha(1),
        Format32BitAlpha(2),
        Format24Bit(0),
        Unknown(4);

        int value;

        b(int i2) {
            this.value = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EGLConfigChooser.java */
    /* loaded from: classes2.dex */
    public enum c {
        Format16Depth8Stencil(1),
        Format24Depth8Stencil(0);

        int value;

        c(int i2) {
            this.value = i2;
        }
    }

    public a() {
        this(false);
    }

    @NonNull
    private int[] a(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr) {
        int[] iArr2 = new int[1];
        if (egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2)) {
            return iArr2;
        }
        Logger.e("Mbgl-EGLConfigChooser", String.format(com.mapbox.mapboxsdk.q.a.f16232a, "eglChooseConfig(NULL) returned error %d", Integer.valueOf(egl10.eglGetError())));
        throw new com.mapbox.mapboxsdk.maps.renderer.a.b("eglChooseConfig() failed");
    }

    private boolean b() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT) || System.getProperty("ro.kernel.qemu") != null;
    }

    private boolean c() {
        return Build.MANUFACTURER.contains("Genymotion");
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(@NonNull EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] a2 = a();
        int[] a3 = a(egl10, eGLDisplay, a2);
        if (a3[0] >= 1) {
            EGLConfig a4 = a(egl10, eGLDisplay, a(egl10, eGLDisplay, a2, a3));
            if (a4 != null) {
                return a4;
            }
            Logger.e("Mbgl-EGLConfigChooser", "No config chosen");
            throw new com.mapbox.mapboxsdk.maps.renderer.a.b("No config chosen");
        }
        Logger.e("Mbgl-EGLConfigChooser", "eglChooseConfig() returned no configs.");
        throw new com.mapbox.mapboxsdk.maps.renderer.a.b("eglChooseConfig() failed");
    }

    public a(boolean z) {
        this.f16122a = z;
    }

    @NonNull
    private EGLConfig[] a(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr, int[] iArr2) {
        EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
        if (egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, iArr2[0], iArr2)) {
            return eGLConfigArr;
        }
        Logger.e("Mbgl-EGLConfigChooser", String.format(com.mapbox.mapboxsdk.q.a.f16232a, "eglChooseConfig() returned error %d", Integer.valueOf(egl10.eglGetError())));
        throw new com.mapbox.mapboxsdk.maps.renderer.a.b("eglChooseConfig() failed");
    }

    private EGLConfig a(@NonNull EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        b bVar;
        c cVar;
        a aVar = this;
        EGL10 egl102 = egl10;
        EGLConfig[] eGLConfigArr2 = eGLConfigArr;
        ArrayList arrayList = new ArrayList();
        int length = eGLConfigArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            EGLConfig eGLConfig = eGLConfigArr2[i3];
            int i4 = i2 + 1;
            int a2 = aVar.a(egl102, eGLDisplay, eGLConfig, 12327);
            int a3 = aVar.a(egl102, eGLDisplay, eGLConfig, 12354);
            int a4 = aVar.a(egl102, eGLDisplay, eGLConfig, 12320);
            int a5 = aVar.a(egl102, eGLDisplay, eGLConfig, 12324);
            int a6 = aVar.a(egl102, eGLDisplay, eGLConfig, 12323);
            int a7 = aVar.a(egl102, eGLDisplay, eGLConfig, 12322);
            int a8 = aVar.a(egl102, eGLDisplay, eGLConfig, 12321);
            aVar.a(egl102, eGLDisplay, eGLConfig, 12350);
            int a9 = aVar.a(egl102, eGLDisplay, eGLConfig, 12325);
            int a10 = aVar.a(egl102, eGLDisplay, eGLConfig, 12326);
            int i5 = length;
            int i6 = i3;
            if ((a9 == 24 || a9 == 16) & (a10 == 8) & (aVar.a(egl102, eGLDisplay, eGLConfig, 12338) == 0) & (aVar.a(egl102, eGLDisplay, eGLConfig, 12337) == 0)) {
                if (a4 == 16 && a5 == 5 && a6 == 6 && a7 == 5 && a8 == 0) {
                    bVar = b.Format16Bit;
                } else if (a4 == 32 && a5 == 8 && a6 == 8 && a7 == 8 && a8 == 0) {
                    bVar = b.Format32BitNoAlpha;
                } else if (a4 == 32 && a5 == 8 && a6 == 8 && a7 == 8 && a8 == 8) {
                    bVar = b.Format32BitAlpha;
                } else if (a4 == 24 && a5 == 8 && a6 == 8 && a7 == 8 && a8 == 0) {
                    bVar = b.Format24Bit;
                } else {
                    bVar = b.Unknown;
                }
                b bVar2 = bVar;
                if (a9 == 16 && a10 == 8) {
                    cVar = c.Format16Depth8Stencil;
                } else {
                    cVar = c.Format24Depth8Stencil;
                }
                c cVar2 = cVar;
                boolean z = (a3 & 4) != 4;
                boolean z2 = a2 != 12344;
                if (bVar2 != b.Unknown) {
                    arrayList.add(new C0160a(this, bVar2, cVar2, z, z2, i4, eGLConfig));
                }
            }
            i3 = i6 + 1;
            aVar = this;
            egl102 = egl10;
            eGLConfigArr2 = eGLConfigArr;
            i2 = i4;
            length = i5;
        }
        Collections.sort(arrayList);
        if (arrayList.size() != 0) {
            C0160a c0160a = (C0160a) arrayList.get(0);
            if (c0160a.f16126h) {
                Logger.w("Mbgl-EGLConfigChooser", "Chosen config has a caveat.");
            }
            if (c0160a.f16125g) {
                Logger.w("Mbgl-EGLConfigChooser", "Chosen config is not conformant.");
            }
            return c0160a.f16128j;
        }
        throw new com.mapbox.mapboxsdk.maps.renderer.a.b("No matching configurations after filtering");
    }

    private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2) {
        int[] iArr = new int[1];
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, iArr)) {
            return iArr[0];
        }
        Logger.e("Mbgl-EGLConfigChooser", String.format(com.mapbox.mapboxsdk.q.a.f16232a, "eglGetConfigAttrib(%d) returned error %d", Integer.valueOf(i2), Integer.valueOf(egl10.eglGetError())));
        throw new com.mapbox.mapboxsdk.maps.renderer.a.b("eglGetConfigAttrib() failed");
    }

    private int[] a() {
        boolean z = b() || c();
        Logger.i("Mbgl-EGLConfigChooser", String.format("In emulator: %s", Boolean.valueOf(z)));
        int[] iArr = new int[25];
        iArr[0] = 12327;
        iArr[1] = 12344;
        iArr[2] = 12339;
        iArr[3] = 4;
        iArr[4] = 12320;
        iArr[5] = 16;
        iArr[6] = 12324;
        iArr[7] = 5;
        iArr[8] = 12323;
        iArr[9] = 6;
        iArr[10] = 12322;
        iArr[11] = 5;
        iArr[12] = 12321;
        iArr[13] = this.f16122a ? 8 : 0;
        iArr[14] = 12325;
        iArr[15] = 16;
        iArr[16] = 12326;
        iArr[17] = 8;
        iArr[18] = z ? 12344 : 12354;
        iArr[19] = 4;
        iArr[20] = z ? 12344 : 12351;
        iArr[21] = 12430;
        iArr[22] = 12352;
        iArr[23] = 4;
        iArr[24] = 12344;
        return iArr;
    }
}
