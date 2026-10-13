package com.facebook.soloader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import java.io.File;

/* compiled from: ApplicationSoSource.java */
/* loaded from: classes.dex */
public class b extends j {

    /* renamed from: a, reason: collision with root package name */
    private Context f4178a;

    /* renamed from: b, reason: collision with root package name */
    private int f4179b;

    /* renamed from: c, reason: collision with root package name */
    private c f4180c;

    public b(Context context, int i2) {
        this.f4178a = context.getApplicationContext();
        if (this.f4178a == null) {
            this.f4178a = context;
        }
        this.f4179b = i2;
        this.f4180c = new c(new File(this.f4178a.getApplicationInfo().nativeLibraryDir), i2);
    }

    public boolean a() {
        try {
            File file = this.f4180c.f4181a;
            Context createPackageContext = this.f4178a.createPackageContext(this.f4178a.getPackageName(), 0);
            File file2 = new File(createPackageContext.getApplicationInfo().nativeLibraryDir);
            if (file.equals(file2)) {
                return false;
            }
            String str = "Native library directory updated from " + file + " to " + file2;
            this.f4179b |= 1;
            this.f4180c = new c(file2, this.f4179b);
            this.f4180c.a(this.f4179b);
            this.f4178a = createPackageContext;
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.facebook.soloader.j
    public String toString() {
        return this.f4180c.toString();
    }

    @Override // com.facebook.soloader.j
    public int a(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        return this.f4180c.a(str, i2, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.j
    public void a(int i2) {
        this.f4180c.a(i2);
    }
}
