package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* compiled from: MultiDexExtractor.java */
/* loaded from: classes.dex */
final class b implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    private final File f2507e;

    /* renamed from: f, reason: collision with root package name */
    private final long f2508f;

    /* renamed from: g, reason: collision with root package name */
    private final File f2509g;

    /* renamed from: h, reason: collision with root package name */
    private final RandomAccessFile f2510h;

    /* renamed from: i, reason: collision with root package name */
    private final FileChannel f2511i;

    /* renamed from: j, reason: collision with root package name */
    private final FileLock f2512j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiDexExtractor.java */
    /* loaded from: classes.dex */
    public class a implements FileFilter {
        a(b bVar) {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiDexExtractor.java */
    /* renamed from: androidx.multidex.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0045b extends File {
        public long crc;

        public C0045b(File file, String str) {
            super(file, str);
            this.crc = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(File file, File file2) {
        String str = "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")";
        this.f2507e = file;
        this.f2509g = file2;
        this.f2508f = b(file);
        File file3 = new File(file2, "MultiDex.lock");
        this.f2510h = new RandomAccessFile(file3, "rw");
        try {
            this.f2511i = this.f2510h.getChannel();
            try {
                String str2 = "Blocking on lock " + file3.getPath();
                this.f2512j = this.f2511i.lock();
                String str3 = file3.getPath() + " locked";
            } catch (IOException e2) {
                e = e2;
                a(this.f2511i);
                throw e;
            } catch (Error e3) {
                e = e3;
                a(this.f2511i);
                throw e;
            } catch (RuntimeException e4) {
                e = e4;
                a(this.f2511i);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e5) {
            a(this.f2510h);
            throw e5;
        }
    }

    private static long b(File file) {
        long a2 = c.a(file);
        return a2 == -1 ? a2 - 1 : a2;
    }

    private void i() {
        File[] listFiles = this.f2509g.listFiles(new a(this));
        if (listFiles == null) {
            String str = "Failed to list secondary dex dir content (" + this.f2509g.getPath() + ").";
            return;
        }
        for (File file : listFiles) {
            String str2 = "Trying to delete old file " + file.getPath() + " of size " + file.length();
            if (file.delete()) {
                String str3 = "Deleted old file " + file.getPath();
            } else {
                String str4 = "Failed to delete old file " + file.getPath();
            }
        }
    }

    private List<C0045b> j() {
        String str = this.f2507e.getName() + ".classes";
        i();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f2507e);
        int i2 = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                C0045b c0045b = new C0045b(this.f2509g, str + i2 + ".zip");
                arrayList.add(c0045b);
                String str2 = "Extraction is needed for file " + c0045b;
                int i3 = 0;
                boolean z = false;
                while (i3 < 3 && !z) {
                    i3++;
                    a(zipFile, entry, c0045b, str);
                    try {
                        c0045b.crc = b(c0045b);
                        z = true;
                    } catch (IOException unused) {
                        String str3 = "Failed to read crc from " + c0045b.getAbsolutePath();
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(c0045b.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(c0045b.length());
                    sb.append(" - crc: ");
                    sb.append(c0045b.crc);
                    sb.toString();
                    if (!z) {
                        c0045b.delete();
                        if (c0045b.exists()) {
                            String str4 = "Failed to delete corrupted secondary dex '" + c0045b.getPath() + "'";
                        }
                    }
                }
                if (z) {
                    i2++;
                    entry = zipFile.getEntry("classes" + i2 + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + c0045b.getAbsolutePath() + " for secondary dex (" + i2 + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends File> a(Context context, String str, boolean z) {
        List<C0045b> j2;
        String str2 = "MultiDexExtractor.load(" + this.f2507e.getPath() + ", " + z + ", " + str + ")";
        if (this.f2512j.isValid()) {
            if (!z && !a(context, this.f2507e, this.f2508f, str)) {
                try {
                    j2 = a(context, str);
                } catch (IOException unused) {
                    j2 = j();
                    a(context, str, a(this.f2507e), this.f2508f, j2);
                }
            } else {
                j2 = j();
                a(context, str, a(this.f2507e), this.f2508f, j2);
            }
            String str3 = "load found " + j2.size() + " secondary dex files";
            return j2;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2512j.release();
        this.f2511i.close();
        this.f2510h.close();
    }

    private List<C0045b> a(Context context, String str) {
        String str2 = this.f2507e.getName() + ".classes";
        SharedPreferences a2 = a(context);
        int i2 = a2.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i2 + (-1));
        int i3 = 2;
        while (i3 <= i2) {
            C0045b c0045b = new C0045b(this.f2509g, str2 + i3 + ".zip");
            if (c0045b.isFile()) {
                c0045b.crc = b(c0045b);
                long j2 = a2.getLong(str + "dex.crc." + i3, -1L);
                long j3 = a2.getLong(str + "dex.time." + i3, -1L);
                long lastModified = c0045b.lastModified();
                if (j3 == lastModified) {
                    String str3 = str2;
                    SharedPreferences sharedPreferences = a2;
                    if (j2 == c0045b.crc) {
                        arrayList.add(c0045b);
                        i3++;
                        a2 = sharedPreferences;
                        str2 = str3;
                    }
                }
                throw new IOException("Invalid extracted dex: " + c0045b + " (key \"" + str + "\"), expected modification time: " + j3 + ", modification time: " + lastModified + ", expected crc: " + j2 + ", file crc: " + c0045b.crc);
            }
            throw new IOException("Missing extracted secondary dex file '" + c0045b.getPath() + "'");
        }
        return arrayList;
    }

    private static boolean a(Context context, File file, long j2, String str) {
        SharedPreferences a2 = a(context);
        if (a2.getLong(str + "timestamp", -1L) == a(file)) {
            if (a2.getLong(str + "crc", -1L) == j2) {
                return false;
            }
        }
        return true;
    }

    private static long a(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    private static void a(Context context, String str, long j2, long j3, List<C0045b> list) {
        SharedPreferences.Editor edit = a(context).edit();
        edit.putLong(str + "timestamp", j2);
        edit.putLong(str + "crc", j3);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i2 = 2;
        for (C0045b c0045b : list) {
            edit.putLong(str + "dex.crc." + i2, c0045b.crc);
            edit.putLong(str + "dex.time." + i2, c0045b.lastModified());
            i2++;
        }
        edit.commit();
    }

    private static SharedPreferences a(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private static void a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        String str2 = "Extracting " + createTempFile.getPath();
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (createTempFile.setReadOnly()) {
                    String str3 = "Renaming to " + file.getPath();
                    if (createTempFile.renameTo(file)) {
                        return;
                    }
                    throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
                }
                throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            a(inputStream);
            createTempFile.delete();
        }
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
