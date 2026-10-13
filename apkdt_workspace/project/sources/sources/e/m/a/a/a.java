package e.m.a.a;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: FileUtils.java */
    /* renamed from: e.m.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0205a implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            if (lastModified < lastModified2) {
                return -1;
            }
            return lastModified == lastModified2 ? 0 : 1;
        }
    }

    @NonNull
    public static File a(@NonNull Context context, @NonNull String str) {
        return new File(context.getFilesDir(), str);
    }

    @NonNull
    public static String b(@NonNull File file) {
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file));
        StringWriter stringWriter = new StringWriter();
        try {
            try {
                try {
                    char[] cArr = new char[4096];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            break;
                        }
                        stringWriter.write(cArr, 0, read);
                    }
                    inputStreamReader.close();
                } catch (IOException e2) {
                    e2.toString();
                    inputStreamReader.close();
                }
            } catch (IOException e3) {
                e3.toString();
            }
            return stringWriter.toString();
        } catch (Throwable th) {
            try {
                inputStreamReader.close();
            } catch (IOException e4) {
                e4.toString();
            }
            throw th;
        }
    }

    public static void a(@NonNull File file, @NonNull String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
        try {
            try {
                try {
                    outputStreamWriter.write(str);
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                } catch (IOException e2) {
                    e2.toString();
                }
            } catch (IOException e3) {
                e3.toString();
                outputStreamWriter.close();
            }
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (IOException e4) {
                e4.toString();
            }
            throw th;
        }
    }

    @NonNull
    public static File[] a(File file) {
        if (file == null) {
            return new File[0];
        }
        File[] listFiles = file.listFiles();
        return listFiles != null ? listFiles : new File[0];
    }

    public static void a(@NonNull File[] fileArr, @NonNull Comparator<File> comparator, int i2) {
        Arrays.sort(fileArr, comparator);
        int min = Math.min(fileArr.length, i2);
        for (int i3 = 0; i3 < min; i3++) {
            if (!fileArr[i3].delete()) {
                String str = "Failed to delete file: " + fileArr[i3];
            }
        }
    }

    public static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
