package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

/* compiled from: FileBackedNativeSessionFile.java */
/* loaded from: classes.dex */
class x implements c0 {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final File f14574a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final String f14575b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final String f14576c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(@NonNull String str, @NonNull String str2, @NonNull File file) {
        this.f14575b = str;
        this.f14576c = str2;
        this.f14574a = file;
    }

    @Nullable
    private byte[] d() {
        byte[] bArr = new byte[FileUtil.STREAM_BUFFER_SIZE];
        try {
            InputStream b2 = b();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    if (b2 == null) {
                        byteArrayOutputStream.close();
                        if (b2 != null) {
                            b2.close();
                        }
                        return null;
                    }
                    while (true) {
                        try {
                            int read = b2.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            gZIPOutputStream.write(bArr, 0, read);
                        } finally {
                            try {
                                gZIPOutputStream.close();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    if (b2 != null) {
                        b2.close();
                    }
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable unused2) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                if (b2 != null) {
                    try {
                        b2.close();
                    } catch (Throwable unused3) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused4) {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.d.h.c0
    @NonNull
    public String a() {
        return this.f14576c;
    }

    @Override // com.google.firebase.crashlytics.d.h.c0
    @Nullable
    public InputStream b() {
        if (this.f14574a.exists() && this.f14574a.isFile()) {
            try {
                return new FileInputStream(this.f14574a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
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
        c2.a(this.f14575b);
        return c2.a();
    }
}
