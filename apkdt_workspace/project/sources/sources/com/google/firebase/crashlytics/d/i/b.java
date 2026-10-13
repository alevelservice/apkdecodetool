package com.google.firebase.crashlytics.d.i;

import android.content.Context;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.firebase.crashlytics.d.h.h;
import java.io.File;
import java.util.Set;

/* compiled from: LogFileManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: d, reason: collision with root package name */
    private static final c f14584d = new c();

    /* renamed from: a, reason: collision with root package name */
    private final Context f14585a;

    /* renamed from: b, reason: collision with root package name */
    private final InterfaceC0116b f14586b;

    /* renamed from: c, reason: collision with root package name */
    private com.google.firebase.crashlytics.d.i.a f14587c;

    /* compiled from: LogFileManager.java */
    /* renamed from: com.google.firebase.crashlytics.d.i.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0116b {
        File a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LogFileManager.java */
    /* loaded from: classes.dex */
    public static final class c implements com.google.firebase.crashlytics.d.i.a {
        private c() {
        }

        @Override // com.google.firebase.crashlytics.d.i.a
        public void a() {
        }

        @Override // com.google.firebase.crashlytics.d.i.a
        public void a(long j2, String str) {
        }

        @Override // com.google.firebase.crashlytics.d.i.a
        public String b() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.d.i.a
        public byte[] c() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.d.i.a
        public void d() {
        }
    }

    public b(Context context, InterfaceC0116b interfaceC0116b) {
        this(context, interfaceC0116b, null);
    }

    public final void a(String str) {
        this.f14587c.a();
        this.f14587c = f14584d;
        if (str == null) {
            return;
        }
        if (!h.a(this.f14585a, "com.crashlytics.CollectCustomLogs", true)) {
            com.google.firebase.crashlytics.d.b.a().a("Preferences requested no custom logs. Aborting log file creation.");
        } else {
            a(b(str), AntDetector.ACTION_ID_SAMPLE);
        }
    }

    public byte[] b() {
        return this.f14587c.c();
    }

    @Nullable
    public String c() {
        return this.f14587c.b();
    }

    public b(Context context, InterfaceC0116b interfaceC0116b, String str) {
        this.f14585a = context;
        this.f14586b = interfaceC0116b;
        this.f14587c = f14584d;
        a(str);
    }

    private File b(String str) {
        return new File(this.f14586b.a(), "crashlytics-userlog-" + str + ".temp");
    }

    public void a(long j2, String str) {
        this.f14587c.a(j2, str);
    }

    public void a() {
        this.f14587c.d();
    }

    public void a(Set<String> set) {
        File[] listFiles = this.f14586b.a().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!set.contains(a(file))) {
                    file.delete();
                }
            }
        }
    }

    void a(File file, int i2) {
        this.f14587c = new d(file, i2);
    }

    private String a(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".temp");
        return lastIndexOf == -1 ? name : name.substring(20, lastIndexOf);
    }
}
