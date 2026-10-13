package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import com.facebook.soloader.e;
import com.facebook.soloader.l;
import java.io.File;
import java.util.zip.ZipEntry;

/* compiled from: ApkSoSource.java */
/* loaded from: classes.dex */
public class a extends e {

    /* renamed from: h, reason: collision with root package name */
    private final int f4174h;

    /* compiled from: ApkSoSource.java */
    /* renamed from: com.facebook.soloader.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected class C0072a extends e.c {

        /* renamed from: i, reason: collision with root package name */
        private File f4175i;

        /* renamed from: j, reason: collision with root package name */
        private final int f4176j;

        C0072a(e eVar) {
            super(eVar);
            this.f4175i = new File(a.this.f4199c.getApplicationInfo().nativeLibraryDir);
            this.f4176j = a.this.f4174h;
        }

        @Override // com.facebook.soloader.e.c
        protected boolean a(ZipEntry zipEntry, String str) {
            String name = zipEntry.getName();
            if (str.equals(a.this.f4200d)) {
                a.this.f4200d = null;
                String.format("allowing consideration of corrupted lib %s", str);
                return true;
            }
            if ((this.f4176j & 1) == 0) {
                String str2 = "allowing consideration of " + name + ": self-extraction preferred";
                return true;
            }
            File file = new File(this.f4175i, str);
            if (!file.isFile()) {
                String.format("allowing considering of %s: %s not in system lib dir", name, str);
                return true;
            }
            long length = file.length();
            long size = zipEntry.getSize();
            if (length != size) {
                String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", file, Long.valueOf(length), Long.valueOf(size));
                return true;
            }
            String str3 = "not allowing consideration of " + name + ": deferring to libdir";
            return false;
        }
    }

    public a(Context context, File file, String str, int i2) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.f4174h = i2;
    }

    @Override // com.facebook.soloader.l
    protected l.f b() {
        return new C0072a(this);
    }

    @Override // com.facebook.soloader.l
    protected byte[] a() {
        File canonicalFile = this.f4187f.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(SysUtil.a(this.f4199c));
            if ((this.f4174h & 1) == 0) {
                obtain.writeByte((byte) 0);
                return obtain.marshall();
            }
            String str = this.f4199c.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile2.getPath());
            obtain.writeLong(canonicalFile2.lastModified());
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }
}
