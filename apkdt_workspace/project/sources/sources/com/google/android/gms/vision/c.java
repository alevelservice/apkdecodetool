package com.google.android.gms.vision;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private b f13544a;

    /* renamed from: b, reason: collision with root package name */
    private ByteBuffer f13545b;

    /* renamed from: c, reason: collision with root package name */
    private Bitmap f13546c;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private int f13548a;

        /* renamed from: b, reason: collision with root package name */
        private int f13549b;

        /* renamed from: c, reason: collision with root package name */
        private int f13550c;

        /* renamed from: d, reason: collision with root package name */
        private long f13551d;

        /* renamed from: e, reason: collision with root package name */
        private int f13552e;

        /* renamed from: f, reason: collision with root package name */
        private int f13553f;

        public b() {
        }

        public int a() {
            return this.f13549b;
        }

        public int b() {
            return this.f13550c;
        }

        public int c() {
            return this.f13552e;
        }

        public long d() {
            return this.f13551d;
        }

        public int e() {
            return this.f13548a;
        }

        public final void f() {
            if (this.f13552e % 2 != 0) {
                int i2 = this.f13548a;
                this.f13548a = this.f13549b;
                this.f13549b = i2;
            }
            this.f13552e = 0;
        }

        public b(b bVar) {
            this.f13548a = bVar.e();
            this.f13549b = bVar.a();
            this.f13550c = bVar.b();
            this.f13551d = bVar.d();
            this.f13552e = bVar.c();
        }
    }

    private c() {
        this.f13544a = new b();
        this.f13545b = null;
        this.f13546c = null;
    }

    public Bitmap a() {
        return this.f13546c;
    }

    public ByteBuffer b() {
        Bitmap bitmap = this.f13546c;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = this.f13546c.getHeight();
            int i2 = width * height;
            int[] iArr = new int[i2];
            this.f13546c.getPixels(iArr, 0, width, 0, 0, width, height);
            byte[] bArr = new byte[i2];
            for (int i3 = 0; i3 < iArr.length; i3++) {
                bArr[i3] = (byte) ((Color.red(iArr[i3]) * 0.299f) + (Color.green(iArr[i3]) * 0.587f) + (Color.blue(iArr[i3]) * 0.114f));
            }
            return ByteBuffer.wrap(bArr);
        }
        return this.f13545b;
    }

    public b c() {
        return this.f13544a;
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private c f13547a = new c();

        public a a(ByteBuffer byteBuffer, int i2, int i3, int i4) {
            if (byteBuffer != null) {
                if (byteBuffer.capacity() < i2 * i3) {
                    throw new IllegalArgumentException("Invalid image data size.");
                }
                if (i4 == 16 || i4 == 17 || i4 == 842094169) {
                    this.f13547a.f13545b = byteBuffer;
                    b c2 = this.f13547a.c();
                    c2.f13548a = i2;
                    c2.f13549b = i3;
                    c2.f13553f = i4;
                    return this;
                }
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unsupported image format: ");
                sb.append(i4);
                throw new IllegalArgumentException(sb.toString());
            }
            throw new IllegalArgumentException("Null image data supplied.");
        }

        public a b(int i2) {
            this.f13547a.c().f13552e = i2;
            return this;
        }

        public a a(int i2) {
            this.f13547a.c().f13550c = i2;
            return this;
        }

        public a a(long j2) {
            this.f13547a.c().f13551d = j2;
            return this;
        }

        public c a() {
            if (this.f13547a.f13545b == null && this.f13547a.f13546c == null) {
                throw new IllegalStateException("Missing image data.  Call either setBitmap or setImageData to specify the image");
            }
            return this.f13547a;
        }
    }
}
