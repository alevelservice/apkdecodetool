package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class SysUtil {

    @DoNotOptimize
    @TargetApi(21)
    /* loaded from: classes.dex */
    private static final class LollipopSysdeps {
        private LollipopSysdeps() {
        }

        @DoNotOptimize
        public static void fallocateIfSupported(FileDescriptor fileDescriptor, long j2) {
            try {
                Os.posix_fallocate(fileDescriptor, 0L, j2);
            } catch (ErrnoException e2) {
                int i2 = e2.errno;
                if (i2 != OsConstants.EOPNOTSUPP && i2 != OsConstants.ENOSYS && i2 != OsConstants.EINVAL) {
                    throw new IOException(e2.toString(), e2);
                }
            }
        }

        @DoNotOptimize
        public static String[] getSupportedAbis() {
            return Build.SUPPORTED_ABIS;
        }
    }

    public static int a(String[] strArr, String str) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (strArr[i2] != null && str.equals(strArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    b(file2);
                }
                return;
            }
            throw new IOException("cannot list directory " + file);
        }
        if (file.getPath().endsWith("_lock")) {
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(File file) {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("cannot mkdir: " + file);
    }

    public static String[] a() {
        return Build.VERSION.SDK_INT < 21 ? new String[]{Build.CPU_ABI, Build.CPU_ABI2} : LollipopSysdeps.getSupportedAbis();
    }

    public static void a(FileDescriptor fileDescriptor, long j2) {
        if (Build.VERSION.SDK_INT >= 21) {
            LollipopSysdeps.fallocateIfSupported(fileDescriptor, j2);
        }
    }

    public static void a(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                a(file2);
            }
        }
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("could not delete: " + file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RandomAccessFile randomAccessFile, InputStream inputStream, int i2, byte[] bArr) {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, 0, Math.min(bArr.length, i2 - i3));
            if (read == -1) {
                break;
            }
            randomAccessFile.write(bArr, 0, read);
            i3 += read;
        }
        return i3;
    }

    public static int a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return 0;
    }
}
