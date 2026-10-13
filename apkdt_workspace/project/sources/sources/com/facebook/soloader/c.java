package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: DirectorySoSource.java */
/* loaded from: classes.dex */
public class c extends j {

    /* renamed from: a, reason: collision with root package name */
    protected final File f4181a;

    /* renamed from: b, reason: collision with root package name */
    protected final int f4182b;

    public c(File file, int i2) {
        this.f4181a = file;
        this.f4182b = i2;
    }

    @Override // com.facebook.soloader.j
    public int a(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        return a(str, i2, this.f4181a, threadPolicy);
    }

    @Override // com.facebook.soloader.j
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f4181a.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f4181a.getName();
        }
        return getClass().getName() + "[root = " + name + " flags = " + this.f4182b + ']';
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(String str, int i2, File file, StrictMode.ThreadPolicy threadPolicy) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            String str2 = str + " not found on " + file.getCanonicalPath();
            return 0;
        }
        String str3 = str + " found on " + file.getCanonicalPath();
        if ((i2 & 1) != 0 && (this.f4182b & 2) != 0) {
            String str4 = str + " loaded implicitly";
            return 2;
        }
        if ((this.f4182b & 1) != 0) {
            a(file2, i2, threadPolicy);
        } else {
            String str5 = "Not resolving dependencies for " + str;
        }
        try {
            SoLoader.f4158b.a(file2.getAbsolutePath(), i2);
            return 1;
        } catch (UnsatisfiedLinkError e2) {
            if (e2.getMessage().contains("bad ELF magic")) {
                return 3;
            }
            throw e2;
        }
    }

    private void a(File file, int i2, StrictMode.ThreadPolicy threadPolicy) {
        String[] a2 = a(file);
        String str = "Loading lib dependencies: " + Arrays.toString(a2);
        for (String str2 : a2) {
            if (!str2.startsWith("/")) {
                SoLoader.b(str2, i2 | 1, threadPolicy);
            }
        }
    }

    private static String[] a(File file) {
        if (SoLoader.f4157a) {
            Api18TraceUtils.a("SoLoader.getElfDependencies[" + file.getName() + "]");
        }
        try {
            return h.a(file);
        } finally {
            if (SoLoader.f4157a) {
                Api18TraceUtils.a();
            }
        }
    }
}
