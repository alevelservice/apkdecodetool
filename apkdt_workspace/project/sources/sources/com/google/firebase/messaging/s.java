package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class s implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    private final URL f15265e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e.i.b.b.d.h<Bitmap> f15266f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private volatile InputStream f15267g;

    private s(URL url) {
        this.f15265e = url;
    }

    @Nullable
    public static s b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new s(new URL(str));
        } catch (MalformedURLException unused) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Not downloading image, bad URL: ".concat(valueOf);
            } else {
                new String("Not downloading image, bad URL: ");
            }
            return null;
        }
    }

    private byte[] k() {
        URLConnection openConnection = this.f15265e.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.f15267g = inputStream;
                byte[] a2 = e.i.b.b.b.b.g.a(e.i.b.b.b.b.g.a(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    String valueOf = String.valueOf(this.f15265e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Downloaded ");
                    sb.append(a2.length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                    sb.toString();
                }
                if (a2.length <= 1048576) {
                    return a2;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        e.i.b.b.b.b.o.a(th, th2);
                    }
                }
                throw th;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    public void a(Executor executor) {
        this.f15266f = e.i.b.b.d.k.a(executor, new Callable(this) { // from class: com.google.firebase.messaging.r

            /* renamed from: e, reason: collision with root package name */
            private final s f15264e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15264e = this;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return this.f15264e.i();
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            e.i.b.b.b.b.h.a(this.f15267g);
        } catch (NullPointerException unused) {
        }
    }

    public Bitmap i() {
        String valueOf = String.valueOf(this.f15265e);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Starting download of: ");
        sb.append(valueOf);
        sb.toString();
        byte[] k2 = k();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(k2, 0, k2.length);
        if (decodeByteArray != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(this.f15265e);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 31);
                sb2.append("Successfully downloaded image: ");
                sb2.append(valueOf2);
                sb2.toString();
            }
            return decodeByteArray;
        }
        String valueOf3 = String.valueOf(this.f15265e);
        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 24);
        sb3.append("Failed to decode image: ");
        sb3.append(valueOf3);
        throw new IOException(sb3.toString());
    }

    public e.i.b.b.d.h<Bitmap> j() {
        e.i.b.b.d.h<Bitmap> hVar = this.f15266f;
        com.google.android.gms.common.internal.m.a(hVar);
        return hVar;
    }
}
