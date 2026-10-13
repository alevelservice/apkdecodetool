package e.b.b.a.a.d.a;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/* compiled from: AnalyticsLogAppender.java */
/* loaded from: classes.dex */
public abstract class a extends f {

    /* renamed from: h, reason: collision with root package name */
    private static final String f16955h = "e.b.b.a.a.d.a.a";

    public a(e.b.b.a.a.a.d dVar, String str) {
        super(dVar, str);
    }

    @Override // e.b.b.a.a.d.a.b
    protected boolean a(String str) {
        try {
            File a2 = a();
            e.b.b.a.a.d.i.c().c(f16955h, "the saveFile is: " + a2.getAbsolutePath());
            if (a2 != null) {
                e.b.b.a.a.e.g.a(a2, str, true);
            }
            return true;
        } catch (Throwable unused) {
            if (this.f16960e) {
                return false;
            }
            this.f16960e = true;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean a(byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        BufferedOutputStream bufferedOutputStream;
        DataOutputStream dataOutputStream;
        FileOutputStream fileOutputStream = null;
        try {
            bArr2 = e.b.b.a.a.e.j.a(bArr, i2, i3);
        } catch (Throwable unused) {
            if (!this.f16961f) {
                this.f16961f = true;
            }
            bArr2 = null;
        }
        if (bArr2 == null) {
            return false;
        }
        File a2 = a();
        try {
            if (!a2.getParentFile().exists()) {
                a2.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(a2, true);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream2);
                try {
                    dataOutputStream = new DataOutputStream(bufferedOutputStream);
                } catch (Throwable unused2) {
                    dataOutputStream = null;
                }
            } catch (Throwable unused3) {
                bufferedOutputStream = null;
                dataOutputStream = null;
            }
            try {
                dataOutputStream.write(bArr2);
                dataOutputStream.flush();
                e.b.b.a.a.e.g.a(dataOutputStream);
                e.b.b.a.a.e.g.a(bufferedOutputStream);
                e.b.b.a.a.e.g.a(fileOutputStream2);
                return true;
            } catch (Throwable unused4) {
                fileOutputStream = fileOutputStream2;
                try {
                    if (!this.f16962g) {
                        this.f16962g = true;
                    }
                    return false;
                } finally {
                    e.b.b.a.a.e.g.a(dataOutputStream);
                    e.b.b.a.a.e.g.a(bufferedOutputStream);
                    e.b.b.a.a.e.g.a(fileOutputStream);
                }
            }
        } catch (Throwable unused5) {
            bufferedOutputStream = null;
            dataOutputStream = null;
        }
    }
}
