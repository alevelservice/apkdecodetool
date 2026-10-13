package com.google.android.gms.vision;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.Camera;
import android.os.SystemClock;
import android.view.SurfaceHolder;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.vision.c;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f13451a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f13452b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("cameraLock")
    private Camera f13453c;

    /* renamed from: d, reason: collision with root package name */
    private int f13454d;

    /* renamed from: e, reason: collision with root package name */
    private int f13455e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.common.images.a f13456f;

    /* renamed from: g, reason: collision with root package name */
    private float f13457g;

    /* renamed from: h, reason: collision with root package name */
    private int f13458h;

    /* renamed from: i, reason: collision with root package name */
    private int f13459i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f13460j;

    /* renamed from: k, reason: collision with root package name */
    private String f13461k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13462l;
    private Thread m;
    private c n;
    private Map<byte[], ByteBuffer> o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public class b implements Camera.PreviewCallback {
        private b() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            a.this.n.a(bArr, camera);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private com.google.android.gms.common.images.a f13474a;

        /* renamed from: b, reason: collision with root package name */
        private com.google.android.gms.common.images.a f13475b;

        public d(Camera.Size size, @Nullable Camera.Size size2) {
            this.f13474a = new com.google.android.gms.common.images.a(size.width, size.height);
            if (size2 != null) {
                this.f13475b = new com.google.android.gms.common.images.a(size2.width, size2.height);
            }
        }

        public final com.google.android.gms.common.images.a a() {
            return this.f13474a;
        }

        @Nullable
        public final com.google.android.gms.common.images.a b() {
            return this.f13475b;
        }
    }

    private a() {
        this.f13452b = new Object();
        this.f13454d = 0;
        this.f13457g = 30.0f;
        this.f13458h = 1024;
        this.f13459i = 768;
        this.f13460j = false;
        this.o = new HashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x018f  */
    @android.annotation.SuppressLint({"InlinedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.hardware.Camera b() {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.vision.a.b():android.hardware.Camera");
    }

    @RequiresPermission("android.permission.CAMERA")
    public a a(SurfaceHolder surfaceHolder) {
        synchronized (this.f13452b) {
            if (this.f13453c != null) {
                return this;
            }
            this.f13453c = b();
            this.f13453c.setPreviewDisplay(surfaceHolder);
            this.f13453c.startPreview();
            this.m = new Thread(this.n);
            this.n.a(true);
            this.m.start();
            this.f13462l = false;
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* renamed from: com.google.android.gms.vision.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0096a {

        /* renamed from: a, reason: collision with root package name */
        private final com.google.android.gms.vision.b<?> f13463a;

        /* renamed from: b, reason: collision with root package name */
        private a f13464b = new a();

        public C0096a(Context context, com.google.android.gms.vision.b<?> bVar) {
            if (context == null) {
                throw new IllegalArgumentException("No context supplied.");
            }
            if (bVar != null) {
                this.f13463a = bVar;
                this.f13464b.f13451a = context;
                return;
            }
            throw new IllegalArgumentException("No detector supplied.");
        }

        public C0096a a(float f2) {
            if (f2 <= 0.0f) {
                StringBuilder sb = new StringBuilder(28);
                sb.append("Invalid fps: ");
                sb.append(f2);
                throw new IllegalArgumentException(sb.toString());
            }
            this.f13464b.f13457g = f2;
            return this;
        }

        public C0096a a(int i2, int i3) {
            if (i2 <= 0 || i2 > 1000000 || i3 <= 0 || i3 > 1000000) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Invalid preview size: ");
                sb.append(i2);
                sb.append("x");
                sb.append(i3);
                throw new IllegalArgumentException(sb.toString());
            }
            this.f13464b.f13458h = i2;
            this.f13464b.f13459i = i3;
            return this;
        }

        public C0096a a(int i2) {
            if (i2 == 0 || i2 == 1) {
                this.f13464b.f13454d = i2;
                return this;
            }
            StringBuilder sb = new StringBuilder(27);
            sb.append("Invalid camera: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }

        public C0096a a(boolean z) {
            this.f13464b.f13460j = z;
            return this;
        }

        public a a() {
            a aVar = this.f13464b;
            aVar.getClass();
            aVar.n = new c(this.f13463a);
            return this.f13464b;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private com.google.android.gms.vision.b<?> f13466e;

        /* renamed from: i, reason: collision with root package name */
        private long f13470i;

        /* renamed from: k, reason: collision with root package name */
        private ByteBuffer f13472k;

        /* renamed from: f, reason: collision with root package name */
        private long f13467f = SystemClock.elapsedRealtime();

        /* renamed from: g, reason: collision with root package name */
        private final Object f13468g = new Object();

        /* renamed from: h, reason: collision with root package name */
        private boolean f13469h = true;

        /* renamed from: j, reason: collision with root package name */
        private int f13471j = 0;

        c(com.google.android.gms.vision.b<?> bVar) {
            this.f13466e = bVar;
        }

        final void a(boolean z) {
            synchronized (this.f13468g) {
                this.f13469h = z;
                this.f13468g.notifyAll();
            }
        }

        @Override // java.lang.Runnable
        @SuppressLint({"InlinedApi"})
        public final void run() {
            com.google.android.gms.vision.c a2;
            ByteBuffer byteBuffer;
            while (true) {
                synchronized (this.f13468g) {
                    while (this.f13469h && this.f13472k == null) {
                        try {
                            this.f13468g.wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                    if (!this.f13469h) {
                        return;
                    }
                    c.a aVar = new c.a();
                    aVar.a(this.f13472k, a.this.f13456f.b(), a.this.f13456f.a(), 17);
                    aVar.a(this.f13471j);
                    aVar.a(this.f13470i);
                    aVar.b(a.this.f13455e);
                    a2 = aVar.a();
                    byteBuffer = this.f13472k;
                    this.f13472k = null;
                }
                try {
                    this.f13466e.b(a2);
                } catch (Exception unused2) {
                } finally {
                    a.this.f13453c.addCallbackBuffer(byteBuffer.array());
                }
            }
        }

        final void a(byte[] bArr, Camera camera) {
            synchronized (this.f13468g) {
                if (this.f13472k != null) {
                    camera.addCallbackBuffer(this.f13472k.array());
                    this.f13472k = null;
                }
                if (a.this.o.containsKey(bArr)) {
                    this.f13470i = SystemClock.elapsedRealtime() - this.f13467f;
                    this.f13471j++;
                    this.f13472k = (ByteBuffer) a.this.o.get(bArr);
                    this.f13468g.notifyAll();
                }
            }
        }
    }

    public void a() {
        synchronized (this.f13452b) {
            this.n.a(false);
            if (this.m != null) {
                try {
                    this.m.join();
                } catch (InterruptedException unused) {
                }
                this.m = null;
            }
            if (this.f13453c != null) {
                this.f13453c.stopPreview();
                this.f13453c.setPreviewCallbackWithBuffer(null);
                try {
                    if (this.f13462l) {
                        this.f13453c.setPreviewTexture(null);
                    } else {
                        this.f13453c.setPreviewDisplay(null);
                    }
                } catch (Exception e2) {
                    String valueOf = String.valueOf(e2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
                    sb.append("Failed to clear camera preview: ");
                    sb.append(valueOf);
                    sb.toString();
                }
                this.f13453c.release();
                this.f13453c = null;
            }
            this.o.clear();
        }
    }

    @SuppressLint({"InlinedApi"})
    private final byte[] a(com.google.android.gms.common.images.a aVar) {
        Double.isNaN(r0);
        byte[] bArr = new byte[((int) Math.ceil(r0 / 8.0d)) + 1];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (wrap.hasArray() && wrap.array() == bArr) {
            this.o.put(bArr, wrap);
            return bArr;
        }
        throw new IllegalStateException("Failed to create valid buffer for camera source.");
    }
}
