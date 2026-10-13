package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: UnpackingSoSource.java */
/* loaded from: classes.dex */
public abstract class l extends com.facebook.soloader.c {

    /* renamed from: c, reason: collision with root package name */
    protected final Context f4199c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    protected String f4200d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Object> f4201e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ File f4202e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ byte[] f4203f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ c f4204g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ File f4205h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ com.facebook.soloader.f f4206i;

        a(File file, byte[] bArr, c cVar, File file2, com.facebook.soloader.f fVar) {
            this.f4202e = file;
            this.f4203f = bArr;
            this.f4204g = cVar;
            this.f4205h = file2;
            this.f4206i = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.f4202e, "rw");
                    try {
                        randomAccessFile.write(this.f4203f);
                        randomAccessFile.setLength(randomAccessFile.getFilePointer());
                        randomAccessFile.close();
                        randomAccessFile = new RandomAccessFile(new File(l.this.f4181a, "dso_manifest"), "rw");
                        try {
                            this.f4204g.a((DataOutput) randomAccessFile);
                            randomAccessFile.close();
                            SysUtil.b(l.this.f4181a);
                            l.b(this.f4205h, (byte) 1);
                        } finally {
                        }
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } finally {
                    String str = "releasing dso store lock for " + l.this.f4181a + " (from syncer thread)";
                    this.f4206i.close();
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: e, reason: collision with root package name */
        public final String f4208e;

        /* renamed from: f, reason: collision with root package name */
        public final String f4209f;

        public b(String str, String str2) {
            this.f4208e = str;
            this.f4209f = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static final class d implements Closeable {

        /* renamed from: e, reason: collision with root package name */
        public final b f4211e;

        /* renamed from: f, reason: collision with root package name */
        public final InputStream f4212f;

        public d(b bVar, InputStream inputStream) {
            this.f4211e = bVar;
            this.f4212f = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f4212f.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static abstract class e implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public abstract boolean i();

        public abstract d j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static abstract class f implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        protected abstract c i();

        protected abstract e j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l(Context context, String str) {
        super(a(context, str), 1);
        this.f4201e = new HashMap();
        this.f4199c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(File file, byte b2) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b2);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void a(String[] strArr) {
    }

    protected abstract f b();

    public static File a(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + "/" + str);
    }

    private void a(b[] bVarArr) {
        String[] list = this.f4181a.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals("dso_state") && !str.equals("dso_lock") && !str.equals("dso_deps") && !str.equals("dso_manifest")) {
                    boolean z = false;
                    for (int i2 = 0; !z && i2 < bVarArr.length; i2++) {
                        if (bVarArr[i2].f4208e.equals(str)) {
                            z = true;
                        }
                    }
                    if (!z) {
                        File file = new File(this.f4181a, str);
                        String str2 = "deleting unaccounted-for file " + file;
                        SysUtil.a(file);
                    }
                }
            }
            return;
        }
        throw new IOException("unable to list directory " + this.f4181a);
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final b[] f4210a;

        public c(b[] bVarArr) {
            this.f4210a = bVarArr;
        }

        static final c a(DataInput dataInput) {
            if (dataInput.readByte() == 1) {
                int readInt = dataInput.readInt();
                if (readInt >= 0) {
                    b[] bVarArr = new b[readInt];
                    for (int i2 = 0; i2 < readInt; i2++) {
                        bVarArr[i2] = new b(dataInput.readUTF(), dataInput.readUTF());
                    }
                    return new c(bVarArr);
                }
                throw new RuntimeException("illegal number of shared libraries");
            }
            throw new RuntimeException("wrong dso manifest version");
        }

        public final void a(DataOutput dataOutput) {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.f4210a.length);
            int i2 = 0;
            while (true) {
                b[] bVarArr = this.f4210a;
                if (i2 >= bVarArr.length) {
                    return;
                }
                dataOutput.writeUTF(bVarArr[i2].f4208e);
                dataOutput.writeUTF(this.f4210a[i2].f4209f);
                i2++;
            }
        }
    }

    private Object b(String str) {
        Object obj;
        synchronized (this.f4201e) {
            obj = this.f4201e.get(str);
            if (obj == null) {
                obj = new Object();
                this.f4201e.put(str, obj);
            }
        }
        return obj;
    }

    private void a(d dVar, byte[] bArr) {
        RandomAccessFile randomAccessFile;
        String str = "extracting DSO " + dVar.f4211e.f4208e;
        if (this.f4181a.setWritable(true, true)) {
            File file = new File(this.f4181a, dVar.f4211e.f4208e);
            try {
                randomAccessFile = new RandomAccessFile(file, "rw");
            } catch (IOException unused) {
                String str2 = "error overwriting " + file + " trying to delete and start over";
                SysUtil.a(file);
                randomAccessFile = new RandomAccessFile(file, "rw");
            }
            try {
                try {
                    int available = dVar.f4212f.available();
                    if (available > 1) {
                        SysUtil.a(randomAccessFile.getFD(), available);
                    }
                    SysUtil.a(randomAccessFile, dVar.f4212f, Integer.MAX_VALUE, bArr);
                    randomAccessFile.setLength(randomAccessFile.getFilePointer());
                    if (file.setExecutable(true, false)) {
                        return;
                    }
                    throw new IOException("cannot make file executable: " + file);
                } catch (IOException e2) {
                    SysUtil.a(file);
                    throw e2;
                }
            } finally {
                randomAccessFile.close();
            }
        }
        throw new IOException("cannot make directory writable for us: " + this.f4181a);
    }

    private void a(byte b2, c cVar, e eVar) {
        String str = "regenerating DSO store " + getClass().getName();
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.f4181a, "dso_manifest"), "rw");
        c cVar2 = null;
        if (b2 == 1) {
            try {
                try {
                    cVar2 = c.a((DataInput) randomAccessFile);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (cVar2 == null) {
            cVar2 = new c(new b[0]);
        }
        a(cVar.f4210a);
        byte[] bArr = new byte[32768];
        while (eVar.i()) {
            d j2 = eVar.j();
            boolean z = true;
            int i2 = 0;
            while (z) {
                try {
                    if (i2 >= cVar2.f4210a.length) {
                        break;
                    }
                    if (cVar2.f4210a[i2].f4208e.equals(j2.f4211e.f4208e) && cVar2.f4210a[i2].f4209f.equals(j2.f4211e.f4209f)) {
                        z = false;
                    }
                    i2++;
                } finally {
                }
            }
            if (z) {
                a(j2, bArr);
            }
            if (j2 != null) {
                j2.close();
            }
        }
        randomAccessFile.close();
        String str2 = "Finished regenerating DSO store " + getClass().getName();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.facebook.soloader.f r11, int r12, byte[] r13) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.l.a(com.facebook.soloader.f, int, byte[]):boolean");
    }

    protected byte[] a() {
        Parcel obtain = Parcel.obtain();
        f b2 = b();
        try {
            b[] bVarArr = b2.i().f4210a;
            obtain.writeByte((byte) 1);
            obtain.writeInt(bVarArr.length);
            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                obtain.writeString(bVarArr[i2].f4208e);
                obtain.writeString(bVarArr[i2].f4209f);
            }
            if (b2 != null) {
                b2.close();
            }
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return marshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (b2 != null) {
                    try {
                        b2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.j
    public void a(int i2) {
        SysUtil.c(this.f4181a);
        com.facebook.soloader.f a2 = com.facebook.soloader.f.a(new File(this.f4181a, "dso_lock"));
        try {
            String str = "locked dso store " + this.f4181a;
            if (a(a2, i2, a())) {
                a2 = null;
            } else {
                String str2 = "dso store is up-to-date: " + this.f4181a;
            }
        } finally {
            if (a2 != null) {
                String str3 = "releasing dso store lock for " + this.f4181a;
                a2.close();
            } else {
                String str4 = "not releasing dso store lock for " + this.f4181a + " (syncer thread started)";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str) {
        synchronized (b(str)) {
            this.f4200d = str;
            a(2);
        }
    }

    @Override // com.facebook.soloader.c, com.facebook.soloader.j
    public int a(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        int a2;
        synchronized (b(str)) {
            a2 = a(str, i2, this.f4181a, threadPolicy);
        }
        return a2;
    }
}
