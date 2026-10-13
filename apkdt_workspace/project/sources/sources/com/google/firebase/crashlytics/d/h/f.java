package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

/* compiled from: BytesBackedNativeSessionFile.java */
/* loaded from: classes.dex */
class f implements c0 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final byte[] f14415a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final String f14416b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final String f14417c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull String str, @NonNull String str2, @Nullable byte[] bArr) {
        this.f14416b = str;
        this.f14417c = str2;
        this.f14415a = bArr;
    }

    @Nullable
    private byte[] d() {
        if (e()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(this.f14415a);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                throw th2;
            }
        } catch (IOException unused3) {
            return null;
        }
    }

    private boolean e() {
        byte[] bArr = this.f14415a;
        return bArr == null || bArr.length == 0;
    }

    @Override // com.google.firebase.crashlytics.d.h.c0
    @NonNull
    public String a() {
        return this.f14417c;
    }

    @Override // com.google.firebase.crashlytics.d.h.c0
    @Nullable
    public InputStream b() {
        if (e()) {
            return null;
        }
        return new ByteArrayInputStream(this.f14415a);
    }

    @Override // com.google.firebase.crashlytics.d.h.c0
    @Nullable
    public CrashlyticsReport.c.b c() {
        byte[] d2 = d();
        if (d2 == null) {
            return null;
        }
        CrashlyticsReport.c.b.a c2 = CrashlyticsReport.c.b.c();
        c2.a(d2);
        c2.a(this.f14416b);
        return c2.a();
    }
}
