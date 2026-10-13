package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n5 implements a {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, f7> f8272a;

    /* renamed from: b, reason: collision with root package name */
    private long f8273b;

    /* renamed from: c, reason: collision with root package name */
    private final File f8274c;

    /* renamed from: d, reason: collision with root package name */
    private final int f8275d;

    public n5(File file, int i2) {
        this.f8272a = new LinkedHashMap(16, 0.75f, true);
        this.f8273b = 0L;
        this.f8274c = file;
        this.f8275d = i2;
    }

    private final void b(String str) {
        f7 remove = this.f8272a.remove(str);
        if (remove != null) {
            this.f8273b -= remove.f6581a;
        }
    }

    private static String c(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private final File d(String str) {
        return new File(this.f8274c, c(str));
    }

    @Override // com.google.android.gms.internal.ads.a
    public final synchronized void a(String str, zw0 zw0Var) {
        long j2;
        if (this.f8273b + zw0Var.f10856a.length <= this.f8275d || zw0Var.f10856a.length <= this.f8275d * 0.9f) {
            File d2 = d(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(d2));
                f7 f7Var = new f7(str, zw0Var);
                if (f7Var.a(bufferedOutputStream)) {
                    bufferedOutputStream.write(zw0Var.f10856a);
                    bufferedOutputStream.close();
                    f7Var.f6581a = d2.length();
                    a(str, f7Var);
                    if (this.f8273b >= this.f8275d) {
                        if (w1.f10014a) {
                            w1.c("Pruning old cache entries.", new Object[0]);
                        }
                        long j3 = this.f8273b;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator<Map.Entry<String, f7>> it = this.f8272a.entrySet().iterator();
                        int i2 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                j2 = j3;
                                break;
                            }
                            f7 value = it.next().getValue();
                            if (d(value.f6582b).delete()) {
                                j2 = j3;
                                this.f8273b -= value.f6581a;
                            } else {
                                j2 = j3;
                                w1.a("Could not delete cache entry for key=%s, filename=%s", value.f6582b, c(value.f6582b));
                            }
                            it.remove();
                            i2++;
                            if (((float) this.f8273b) < this.f8275d * 0.9f) {
                                break;
                            } else {
                                j3 = j2;
                            }
                        }
                        if (w1.f10014a) {
                            w1.c("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f8273b - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                    return;
                }
                bufferedOutputStream.close();
                w1.a("Failed to write header for %s", d2.getAbsolutePath());
                throw new IOException();
            } catch (IOException unused) {
                if (d2.delete()) {
                    return;
                }
                w1.a("Could not clean up file %s", d2.getAbsolutePath());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.a
    public final synchronized void initialize() {
        long length;
        q6 q6Var;
        if (!this.f8274c.exists()) {
            if (!this.f8274c.mkdirs()) {
                w1.b("Unable to create cache dir %s", this.f8274c.getAbsolutePath());
            }
            return;
        }
        File[] listFiles = this.f8274c.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            try {
                length = file.length();
                q6Var = new q6(new BufferedInputStream(a(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                f7 a2 = f7.a(q6Var);
                a2.f6581a = length;
                a(a2.f6582b, a2);
                q6Var.close();
            } catch (Throwable th) {
                q6Var.close();
                throw th;
                break;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.a
    public final synchronized zw0 zza(String str) {
        f7 f7Var = this.f8272a.get(str);
        if (f7Var == null) {
            return null;
        }
        File d2 = d(str);
        try {
            q6 q6Var = new q6(new BufferedInputStream(a(d2)), d2.length());
            try {
                f7 a2 = f7.a(q6Var);
                if (!TextUtils.equals(str, a2.f6582b)) {
                    w1.a("%s: key=%s, found=%s", d2.getAbsolutePath(), str, a2.f6582b);
                    b(str);
                    return null;
                }
                byte[] a3 = a(q6Var, q6Var.i());
                zw0 zw0Var = new zw0();
                zw0Var.f10856a = a3;
                zw0Var.f10857b = f7Var.f6583c;
                zw0Var.f10858c = f7Var.f6584d;
                zw0Var.f10859d = f7Var.f6585e;
                zw0Var.f10860e = f7Var.f6586f;
                zw0Var.f10861f = f7Var.f6587g;
                List<wk1> list = f7Var.f6588h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (wk1 wk1Var : list) {
                    treeMap.put(wk1Var.a(), wk1Var.b());
                }
                zw0Var.f10862g = treeMap;
                zw0Var.f10863h = Collections.unmodifiableList(f7Var.f6588h);
                return zw0Var;
            } finally {
                q6Var.close();
            }
        } catch (IOException e2) {
            w1.a("%s: %s", d2.getAbsolutePath(), e2.toString());
            a(str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(InputStream inputStream) {
        return (a(inputStream) << 24) | a(inputStream) | 0 | (a(inputStream) << 8) | (a(inputStream) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(InputStream inputStream) {
        return (a(inputStream) & 255) | 0 | ((a(inputStream) & 255) << 8) | ((a(inputStream) & 255) << 16) | ((a(inputStream) & 255) << 24) | ((a(inputStream) & 255) << 32) | ((a(inputStream) & 255) << 40) | ((a(inputStream) & 255) << 48) | ((255 & a(inputStream)) << 56);
    }

    public n5(File file) {
        this(file, 5242880);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<wk1> b(q6 q6Var) {
        int b2 = b((InputStream) q6Var);
        if (b2 >= 0) {
            List<wk1> emptyList = b2 == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i2 = 0; i2 < b2; i2++) {
                emptyList.add(new wk1(a(q6Var).intern(), a(q6Var).intern()));
            }
            return emptyList;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("readHeaderList size=");
        sb.append(b2);
        throw new IOException(sb.toString());
    }

    private final synchronized void a(String str) {
        boolean delete = d(str).delete();
        b(str);
        if (!delete) {
            w1.a("Could not delete cache entry for key=%s, filename=%s", str, c(str));
        }
    }

    private final void a(String str, f7 f7Var) {
        if (!this.f8272a.containsKey(str)) {
            this.f8273b += f7Var.f6581a;
        } else {
            this.f8273b += f7Var.f6581a - this.f8272a.get(str).f6581a;
        }
        this.f8272a.put(str, f7Var);
    }

    @VisibleForTesting
    private static byte[] a(q6 q6Var, long j2) {
        long i2 = q6Var.i();
        if (j2 >= 0 && j2 <= i2) {
            int i3 = (int) j2;
            if (i3 == j2) {
                byte[] bArr = new byte[i3];
                new DataInputStream(q6Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j2);
        sb.append(", maxLength=");
        sb.append(i2);
        throw new IOException(sb.toString());
    }

    @VisibleForTesting
    private static InputStream a(File file) {
        return new FileInputStream(file);
    }

    private static int a(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, int i2) {
        outputStream.write(i2 & 255);
        outputStream.write((i2 >> 8) & 255);
        outputStream.write((i2 >> 16) & 255);
        outputStream.write(i2 >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, long j2) {
        outputStream.write((byte) j2);
        outputStream.write((byte) (j2 >>> 8));
        outputStream.write((byte) (j2 >>> 16));
        outputStream.write((byte) (j2 >>> 24));
        outputStream.write((byte) (j2 >>> 32));
        outputStream.write((byte) (j2 >>> 40));
        outputStream.write((byte) (j2 >>> 48));
        outputStream.write((byte) (j2 >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(q6 q6Var) {
        return new String(a(q6Var, c(q6Var)), "UTF-8");
    }
}
