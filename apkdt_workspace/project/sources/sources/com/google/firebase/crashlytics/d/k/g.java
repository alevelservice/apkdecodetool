package com.google.firebase.crashlytics.d.k;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.google.firebase.crashlytics.d.h.q;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.v;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: g, reason: collision with root package name */
    private static final Charset f14627g = Charset.forName("UTF-8");

    /* renamed from: h, reason: collision with root package name */
    private static final int f14628h = 15;

    /* renamed from: i, reason: collision with root package name */
    private static final com.google.firebase.crashlytics.internal.model.w.h f14629i = new com.google.firebase.crashlytics.internal.model.w.h();

    /* renamed from: j, reason: collision with root package name */
    private static final Comparator<? super File> f14630j = e.a();

    /* renamed from: k, reason: collision with root package name */
    private static final FilenameFilter f14631k = f.a();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final AtomicInteger f14632a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final File f14633b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final File f14634c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private final File f14635d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final File f14636e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final com.google.firebase.crashlytics.d.o.e f14637f;

    public g(@NonNull File file, @NonNull com.google.firebase.crashlytics.d.o.e eVar) {
        File file2 = new File(file, "report-persistence");
        this.f14633b = new File(file2, "sessions");
        this.f14634c = new File(file2, "priority-reports");
        this.f14635d = new File(file2, "reports");
        this.f14636e = new File(file2, "native-reports");
        this.f14637f = eVar;
    }

    @NonNull
    private List<File> d() {
        return b((List<File>[]) new List[]{a((List<File>[]) new List[]{a(this.f14634c), a(this.f14636e)}), a(this.f14635d)});
    }

    private static boolean e(@NonNull String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    public void a(@NonNull CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.d h2 = crashlyticsReport.h();
        if (h2 == null) {
            com.google.firebase.crashlytics.d.b.a().a("Could not get session for report");
            return;
        }
        String g2 = h2.g();
        try {
            File d2 = d(g2);
            c(d2);
            d(new File(d2, "report"), f14629i.a(crashlyticsReport));
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Could not persist report for session " + g2, e2);
        }
    }

    private void c() {
        int i2 = this.f14637f.b().b().f14718b;
        List<File> d2 = d();
        int size = d2.size();
        if (size <= i2) {
            return;
        }
        Iterator<File> it = d2.subList(i2, size).iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    private static void e(@Nullable File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                e(file2);
            }
        }
        file.delete();
    }

    @NonNull
    public List<q> b() {
        List<File> d2 = d();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(d2.size());
        for (File file : d()) {
            try {
                arrayList.add(q.a(f14629i.b(d(file)), file.getName()));
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().a("Could not load report file " + file + "; deleting", e2);
                file.delete();
            }
        }
        return arrayList;
    }

    @NonNull
    private File d(@NonNull String str) {
        return new File(this.f14633b, str);
    }

    private static void d(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f14627g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public void a(@NonNull CrashlyticsReport.d.AbstractC0121d abstractC0121d, @NonNull String str, boolean z) {
        int i2 = this.f14637f.b().b().f14717a;
        File d2 = d(str);
        try {
            d(new File(d2, a(this.f14632a.getAndIncrement(), z)), f14629i.a(abstractC0121d));
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Could not persist event for session " + str, e2);
        }
        a(d2, i2);
    }

    @NonNull
    private static String c(@NonNull String str) {
        return str.substring(0, f14628h);
    }

    @NonNull
    private List<File> b(@Nullable String str) {
        List<File> a2 = a(this.f14633b, b.a(str));
        Collections.sort(a2, f14630j);
        if (a2.size() <= 8) {
            return a2;
        }
        Iterator<File> it = a2.subList(8, a2.size()).iterator();
        while (it.hasNext()) {
            e(it.next());
        }
        return a2.subList(0, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(@NonNull File file, @NonNull File file2) {
        return c(file.getName()).compareTo(c(file2.getName()));
    }

    @NonNull
    private static String d(@NonNull File file) {
        byte[] bArr = new byte[FileUtil.STREAM_BUFFER_SIZE];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f14627g);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
    }

    @NonNull
    private static File c(@NonNull File file) {
        if (b(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    public void a(@NonNull String str, @NonNull String str2) {
        try {
            d(new File(d(str2), "user"), str);
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Could not persist user ID for session " + str2, e2);
        }
    }

    @NonNull
    private static List<File> b(@NonNull List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, f14630j);
        }
        return a(listArr);
    }

    public void a() {
        Iterator<File> it = d().iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    public void a(String str) {
        FilenameFilter a2 = a.a(str);
        Iterator<File> it = a((List<File>[]) new List[]{a(this.f14634c, a2), a(this.f14636e, a2), a(this.f14635d, a2)}).iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(@NonNull File file, @NonNull String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    private static boolean b(@NonNull File file) {
        return file.exists() || file.mkdirs();
    }

    public void a(@Nullable String str, long j2) {
        for (File file : b(str)) {
            com.google.firebase.crashlytics.d.b.a().a("Finalizing report for session " + file.getName());
            a(file, j2);
            e(file);
        }
        c();
    }

    public void a(@NonNull String str, @NonNull CrashlyticsReport.c cVar) {
        a(new File(d(str), "report"), this.f14636e, cVar, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    private void a(@NonNull File file, long j2) {
        boolean z;
        List<File> a2 = a(file, f14631k);
        if (a2.isEmpty()) {
            com.google.firebase.crashlytics.d.b.a().a("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(a2);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : a2) {
                try {
                    arrayList.add(f14629i.a(d(file2)));
                } catch (IOException e2) {
                    com.google.firebase.crashlytics.d.b.a().a("Could not add event to report for " + file2, e2);
                }
                if (z || e(file2.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            com.google.firebase.crashlytics.d.b.a().a("Could not parse event files for session " + file.getName());
            return;
        }
        String str = null;
        File file3 = new File(file, "user");
        if (file3.isFile()) {
            try {
                str = d(file3);
            } catch (IOException e3) {
                com.google.firebase.crashlytics.d.b.a().a("Could not read user ID file in " + file.getName(), e3);
            }
        }
        a(new File(file, "report"), z ? this.f14634c : this.f14635d, arrayList, j2, z, str);
    }

    private static void a(@NonNull File file, @NonNull File file2, @NonNull CrashlyticsReport.c cVar, @NonNull String str) {
        try {
            CrashlyticsReport a2 = f14629i.b(d(file)).a(cVar);
            c(file2);
            d(new File(file2, str), f14629i.a(a2));
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Could not synthesize final native report file for " + file, e2);
        }
    }

    private static void a(@NonNull File file, @NonNull File file2, @NonNull List<CrashlyticsReport.d.AbstractC0121d> list, long j2, boolean z, @Nullable String str) {
        try {
            CrashlyticsReport a2 = f14629i.b(d(file)).a(j2, z, str).a(v.a(list));
            CrashlyticsReport.d h2 = a2.h();
            if (h2 == null) {
                return;
            }
            c(file2);
            d(new File(file2, h2.g()), f14629i.a(a2));
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Could not synthesize final report file for " + file, e2);
        }
    }

    @NonNull
    private static List<File> a(@NonNull List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (List<File> list : listArr) {
            i2 += list.size();
        }
        arrayList.ensureCapacity(i2);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    @NonNull
    private static String a(int i2, boolean z) {
        return "event" + String.format(Locale.US, "%010d", Integer.valueOf(i2)) + (z ? "_" : "");
    }

    private static int a(@NonNull File file, int i2) {
        List<File> a2 = a(file, c.a());
        Collections.sort(a2, d.a());
        return a(a2, i2);
    }

    @NonNull
    private static List<File> a(@NonNull File file) {
        return a(file, (FileFilter) null);
    }

    @NonNull
    private static List<File> a(@NonNull File file, @Nullable FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    @NonNull
    private static List<File> a(@NonNull File file, @Nullable FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private static int a(List<File> list, int i2) {
        int size = list.size();
        for (File file : list) {
            if (size <= i2) {
                return size;
            }
            e(file);
            size--;
        }
        return size;
    }
}
