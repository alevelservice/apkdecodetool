package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class et0 {
    public static ParcelFileDescriptor a(final InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
        yd.f10540a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.ht0

            /* renamed from: e, reason: collision with root package name */
            private final InputStream f7162e;

            /* renamed from: f, reason: collision with root package name */
            private final ParcelFileDescriptor f7163f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7162e = inputStream;
                this.f7163f = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                et0.a(this.f7162e, this.f7163f);
            }
        });
        return parcelFileDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        try {
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                try {
                    com.google.android.gms.common.util.k.a(inputStream, autoCloseOutputStream);
                    autoCloseOutputStream.close();
                    if (inputStream != null) {
                        a((Throwable) null, inputStream);
                    }
                } finally {
                }
            } catch (IOException unused) {
            }
        } finally {
        }
    }

    private static /* synthetic */ void a(Throwable th, InputStream inputStream) {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            f71.a(th, th2);
        }
    }
}
