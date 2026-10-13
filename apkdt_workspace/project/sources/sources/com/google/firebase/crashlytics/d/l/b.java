package com.google.firebase.crashlytics.d.l;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

/* compiled from: ClsFileOutputStream.java */
/* loaded from: classes.dex */
public class b extends FileOutputStream {

    /* renamed from: h, reason: collision with root package name */
    public static final FilenameFilter f14641h = new a();

    /* renamed from: e, reason: collision with root package name */
    private final String f14642e;

    /* renamed from: f, reason: collision with root package name */
    private File f14643f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f14644g;

    /* compiled from: ClsFileOutputStream.java */
    /* loaded from: classes.dex */
    class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".cls_temp");
        }
    }

    public b(File file, String str) {
        super(new File(file, str + ".cls_temp"));
        this.f14644g = false;
        this.f14642e = file + File.separator + str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14642e);
        sb.append(".cls_temp");
        this.f14643f = new File(sb.toString());
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.f14644g) {
            return;
        }
        this.f14644g = true;
        super.flush();
        super.close();
        File file = new File(this.f14642e + ".cls");
        if (this.f14643f.renameTo(file)) {
            this.f14643f = null;
            return;
        }
        String str = "";
        if (file.exists()) {
            str = " (target already exists)";
        } else if (!this.f14643f.exists()) {
            str = " (source does not exist)";
        }
        throw new IOException("Could not rename temp file: " + this.f14643f + " -> " + file + str);
    }

    public void i() {
        if (this.f14644g) {
            return;
        }
        this.f14644g = true;
        super.flush();
        super.close();
    }
}
