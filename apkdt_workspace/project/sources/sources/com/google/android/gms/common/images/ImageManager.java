package com.google.android.gms.common.images;

import a.e.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepName;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class ImageManager {

    /* renamed from: i, reason: collision with root package name */
    private static final Object f5189i = new Object();

    /* renamed from: j, reason: collision with root package name */
    private static HashSet<Uri> f5190j = new HashSet<>();

    /* renamed from: a, reason: collision with root package name */
    private final Context f5191a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f5192b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f5193c;

    /* renamed from: d, reason: collision with root package name */
    private final a f5194d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.internal.base.b f5195e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<com.google.android.gms.common.images.c, ImageReceiver> f5196f;

    /* renamed from: g, reason: collision with root package name */
    private final Map<Uri, ImageReceiver> f5197g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<Uri, Long> f5198h;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepName
    /* loaded from: classes.dex */
    private final class ImageReceiver extends ResultReceiver {

        /* renamed from: e, reason: collision with root package name */
        private final Uri f5199e;

        /* renamed from: f, reason: collision with root package name */
        private final ArrayList<com.google.android.gms.common.images.c> f5200f;

        /* renamed from: g, reason: collision with root package name */
        private final /* synthetic */ ImageManager f5201g;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i2, Bundle bundle) {
            this.f5201g.f5193c.execute(new b(this.f5199e, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    private static final class a extends e<com.google.android.gms.common.images.b, Bitmap> {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    private final class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final Uri f5202e;

        /* renamed from: f, reason: collision with root package name */
        private final ParcelFileDescriptor f5203f;

        public b(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f5202e = uri;
            this.f5203f = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            Bitmap bitmap;
            com.google.android.gms.common.internal.b.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f5203f;
            boolean z2 = false;
            Bitmap bitmap2 = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError unused) {
                    String valueOf = String.valueOf(this.f5202e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    sb.toString();
                    z2 = true;
                }
                try {
                    this.f5203f.close();
                } catch (IOException unused2) {
                }
                z = z2;
                bitmap = bitmap2;
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f5192b.post(new c(this.f5202e, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException unused3) {
                String valueOf2 = String.valueOf(this.f5202e);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                sb2.toString();
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    private final class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final Uri f5205e;

        /* renamed from: f, reason: collision with root package name */
        private final Bitmap f5206f;

        /* renamed from: g, reason: collision with root package name */
        private final CountDownLatch f5207g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f5208h;

        public c(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f5205e = uri;
            this.f5206f = bitmap;
            this.f5208h = z;
            this.f5207g = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.google.android.gms.common.internal.b.a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f5206f != null;
            if (ImageManager.this.f5194d != null) {
                if (this.f5208h) {
                    ImageManager.this.f5194d.a();
                    System.gc();
                    this.f5208h = false;
                    ImageManager.this.f5192b.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.f5194d.a(new com.google.android.gms.common.images.b(this.f5205e), this.f5206f);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f5197g.remove(this.f5205e);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.f5200f;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    com.google.android.gms.common.images.c cVar = (com.google.android.gms.common.images.c) arrayList.get(i2);
                    if (z) {
                        cVar.a(ImageManager.this.f5191a, this.f5206f, false);
                    } else {
                        ImageManager.this.f5198h.put(this.f5205e, Long.valueOf(SystemClock.elapsedRealtime()));
                        cVar.a(ImageManager.this.f5191a, ImageManager.this.f5195e, false);
                    }
                    ImageManager.this.f5196f.remove(cVar);
                }
            }
            this.f5207g.countDown();
            synchronized (ImageManager.f5189i) {
                ImageManager.f5190j.remove(this.f5205e);
            }
        }
    }
}
