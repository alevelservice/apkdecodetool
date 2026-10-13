package com.google.firebase.crashlytics.d.i;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.google.firebase.crashlytics.d.h.h;
import com.google.firebase.crashlytics.d.i.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;

/* compiled from: QueueFileLogStore.java */
/* loaded from: classes.dex */
class d implements com.google.firebase.crashlytics.d.i.a {

    /* renamed from: d, reason: collision with root package name */
    private static final Charset f14603d = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    private final File f14604a;

    /* renamed from: b, reason: collision with root package name */
    private final int f14605b;

    /* renamed from: c, reason: collision with root package name */
    private c f14606c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFileLogStore.java */
    /* loaded from: classes.dex */
    public class a implements c.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ byte[] f14607a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int[] f14608b;

        a(d dVar, byte[] bArr, int[] iArr) {
            this.f14607a = bArr;
            this.f14608b = iArr;
        }

        @Override // com.google.firebase.crashlytics.d.i.c.d
        public void a(InputStream inputStream, int i2) {
            try {
                inputStream.read(this.f14607a, this.f14608b[0], i2);
                int[] iArr = this.f14608b;
                iArr[0] = iArr[0] + i2;
            } finally {
                inputStream.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: QueueFileLogStore.java */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f14609a;

        /* renamed from: b, reason: collision with root package name */
        public final int f14610b;

        b(d dVar, byte[] bArr, int i2) {
            this.f14609a = bArr;
            this.f14610b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(File file, int i2) {
        this.f14604a = file;
        this.f14605b = i2;
    }

    private b e() {
        if (!this.f14604a.exists()) {
            return null;
        }
        f();
        c cVar = this.f14606c;
        if (cVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[cVar.l()];
        try {
            this.f14606c.a(new a(this, bArr, iArr));
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().b("A problem occurred while reading the Crashlytics log file.", e2);
        }
        return new b(this, bArr, iArr[0]);
    }

    private void f() {
        if (this.f14606c == null) {
            try {
                this.f14606c = new c(this.f14604a);
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().b("Could not open log file: " + this.f14604a, e2);
            }
        }
    }

    @Override // com.google.firebase.crashlytics.d.i.a
    public void a(long j2, String str) {
        f();
        b(j2, str);
    }

    @Override // com.google.firebase.crashlytics.d.i.a
    public String b() {
        byte[] c2 = c();
        if (c2 != null) {
            return new String(c2, f14603d);
        }
        return null;
    }

    @Override // com.google.firebase.crashlytics.d.i.a
    public byte[] c() {
        b e2 = e();
        if (e2 == null) {
            return null;
        }
        int i2 = e2.f14610b;
        byte[] bArr = new byte[i2];
        System.arraycopy(e2.f14609a, 0, bArr, 0, i2);
        return bArr;
    }

    @Override // com.google.firebase.crashlytics.d.i.a
    public void d() {
        a();
        this.f14604a.delete();
    }

    private void b(long j2, String str) {
        if (this.f14606c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i2 = this.f14605b / 4;
            if (str.length() > i2) {
                str = "..." + str.substring(str.length() - i2);
            }
            this.f14606c.a(String.format(Locale.US, "%d %s%n", Long.valueOf(j2), str.replaceAll("\r", HanziToPinyin.Token.SEPARATOR).replaceAll("\n", HanziToPinyin.Token.SEPARATOR)).getBytes(f14603d));
            while (!this.f14606c.j() && this.f14606c.l() > this.f14605b) {
                this.f14606c.k();
            }
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().b("There was a problem writing to the Crashlytics log.", e2);
        }
    }

    @Override // com.google.firebase.crashlytics.d.i.a
    public void a() {
        h.a(this.f14606c, "There was a problem closing the Crashlytics log file.");
        this.f14606c = null;
    }
}
