package com.facebook.cache.disk;

import android.os.Environment;
import com.facebook.cache.disk.c;
import com.facebook.common.internal.VisibleForTesting;
import e.f.b.a.a;
import e.f.b.a.j;
import e.f.c.c.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class DefaultDiskStorage implements com.facebook.cache.disk.c {

    /* renamed from: f, reason: collision with root package name */
    private static final Class<?> f3453f = DefaultDiskStorage.class;

    /* renamed from: g, reason: collision with root package name */
    static final long f3454g = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a, reason: collision with root package name */
    private final File f3455a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f3456b;

    /* renamed from: c, reason: collision with root package name */
    private final File f3457c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.b.a.a f3458d;

    /* renamed from: e, reason: collision with root package name */
    private final com.facebook.common.time.a f3459e;

    /* loaded from: classes.dex */
    public @interface FileType {
        public static final String CONTENT = ".cnt";
        public static final String TEMP = ".tmp";
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    static class c implements c.a {

        /* renamed from: a, reason: collision with root package name */
        private final String f3462a;

        /* renamed from: b, reason: collision with root package name */
        private final e.f.a.b f3463b;

        /* renamed from: c, reason: collision with root package name */
        private long f3464c;

        /* renamed from: d, reason: collision with root package name */
        private long f3465d;

        public e.f.a.b a() {
            return this.f3463b;
        }

        @Override // com.facebook.cache.disk.c.a
        public String getId() {
            return this.f3462a;
        }

        @Override // com.facebook.cache.disk.c.a
        public long i() {
            if (this.f3464c < 0) {
                this.f3464c = this.f3463b.size();
            }
            return this.f3464c;
        }

        @Override // com.facebook.cache.disk.c.a
        public long j() {
            if (this.f3465d < 0) {
                this.f3465d = this.f3463b.b().lastModified();
            }
            return this.f3465d;
        }

        private c(String str, File file) {
            com.facebook.common.internal.h.a(file);
            com.facebook.common.internal.h.a(str);
            this.f3462a = str;
            this.f3463b = e.f.a.b.a(file);
            this.f3464c = -1L;
            this.f3465d = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        @FileType
        public final String f3466a;

        /* renamed from: b, reason: collision with root package name */
        public final String f3467b;

        @Nullable
        public static d b(File file) {
            String d2;
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf <= 0 || (d2 = DefaultDiskStorage.d(name.substring(lastIndexOf))) == null) {
                return null;
            }
            String substring = name.substring(0, lastIndexOf);
            if (d2.equals(FileType.TEMP)) {
                int lastIndexOf2 = substring.lastIndexOf(46);
                if (lastIndexOf2 <= 0) {
                    return null;
                }
                substring = substring.substring(0, lastIndexOf2);
            }
            return new d(d2, substring);
        }

        public String a(String str) {
            return str + File.separator + this.f3467b + this.f3466a;
        }

        public String toString() {
            return this.f3466a + "(" + this.f3467b + ")";
        }

        private d(@FileType String str, String str2) {
            this.f3466a = str;
            this.f3467b = str2;
        }

        public File a(File file) {
            return File.createTempFile(this.f3467b + ".", FileType.TEMP, file);
        }
    }

    /* loaded from: classes.dex */
    private static class e extends IOException {
        public final long actual;
        public final long expected;

        public e(long j2, long j3) {
            super("File was not written completely. Expected: " + j2 + ", found: " + j3);
            this.expected = j2;
            this.actual = j3;
        }
    }

    /* loaded from: classes.dex */
    private class g implements e.f.c.c.b {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3471a;

        private g() {
        }

        private boolean d(File file) {
            d b2 = DefaultDiskStorage.this.b(file);
            if (b2 == null) {
                return false;
            }
            String str = b2.f3466a;
            if (str == FileType.TEMP) {
                return e(file);
            }
            com.facebook.common.internal.h.b(str == FileType.CONTENT);
            return true;
        }

        private boolean e(File file) {
            return file.lastModified() > DefaultDiskStorage.this.f3459e.now() - DefaultDiskStorage.f3454g;
        }

        @Override // e.f.c.c.b
        public void a(File file) {
            if (this.f3471a && d(file)) {
                return;
            }
            file.delete();
        }

        @Override // e.f.c.c.b
        public void b(File file) {
            if (this.f3471a || !file.equals(DefaultDiskStorage.this.f3457c)) {
                return;
            }
            this.f3471a = true;
        }

        @Override // e.f.c.c.b
        public void c(File file) {
            if (!DefaultDiskStorage.this.f3455a.equals(file) && !this.f3471a) {
                file.delete();
            }
            if (this.f3471a && file.equals(DefaultDiskStorage.this.f3457c)) {
                this.f3471a = false;
            }
        }
    }

    public DefaultDiskStorage(File file, int i2, e.f.b.a.a aVar) {
        com.facebook.common.internal.h.a(file);
        this.f3455a = file;
        this.f3456b = a(file, aVar);
        this.f3457c = new File(this.f3455a, a(i2));
        this.f3458d = aVar;
        e();
        this.f3459e = com.facebook.common.time.c.a();
    }

    private void e() {
        boolean z = true;
        if (this.f3455a.exists()) {
            if (this.f3457c.exists()) {
                z = false;
            } else {
                e.f.c.c.a.b(this.f3455a);
            }
        }
        if (z) {
            try {
                e.f.c.c.c.a(this.f3457c);
            } catch (c.a unused) {
                this.f3458d.a(a.EnumC0181a.WRITE_CREATE_DIR, f3453f, "version directory could not be created: " + this.f3457c, null);
            }
        }
    }

    private File f(String str) {
        return new File(g(str));
    }

    private String g(String str) {
        return this.f3457c + File.separator + String.valueOf(Math.abs(str.hashCode() % 100));
    }

    @VisibleForTesting
    File b(String str) {
        return new File(e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements e.f.c.c.b {

        /* renamed from: a, reason: collision with root package name */
        private final List<c.a> f3460a;

        private b() {
            this.f3460a = new ArrayList();
        }

        @Override // e.f.c.c.b
        public void a(File file) {
            d b2 = DefaultDiskStorage.this.b(file);
            if (b2 == null || b2.f3466a != FileType.CONTENT) {
                return;
            }
            this.f3460a.add(new c(b2.f3467b, file));
        }

        @Override // e.f.c.c.b
        public void b(File file) {
        }

        @Override // e.f.c.c.b
        public void c(File file) {
        }

        public List<c.a> a() {
            return Collections.unmodifiableList(this.f3460a);
        }
    }

    private static boolean a(File file, e.f.b.a.a aVar) {
        String str;
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return false;
            }
            String file2 = externalStorageDirectory.toString();
            try {
                str = file.getCanonicalPath();
            } catch (IOException e2) {
                e = e2;
                str = null;
            }
            try {
                return str.contains(file2);
            } catch (IOException e3) {
                e = e3;
                aVar.a(a.EnumC0181a.OTHER, f3453f, "failed to read folder to check if external: " + str, e);
                return false;
            }
        } catch (Exception e4) {
            aVar.a(a.EnumC0181a.OTHER, f3453f, "failed to get the external storage directory!", e4);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @FileType
    @Nullable
    public static String d(String str) {
        if (FileType.CONTENT.equals(str)) {
            return FileType.CONTENT;
        }
        if (FileType.TEMP.equals(str)) {
            return FileType.TEMP;
        }
        return null;
    }

    @Override // com.facebook.cache.disk.c
    public void b() {
        e.f.c.c.a.a(this.f3455a, new g());
    }

    @Override // com.facebook.cache.disk.c
    @Nullable
    public e.f.a.a b(String str, Object obj) {
        File b2 = b(str);
        if (!b2.exists()) {
            return null;
        }
        b2.setLastModified(this.f3459e.now());
        return e.f.a.b.a(b2);
    }

    @Override // com.facebook.cache.disk.c
    public List<c.a> c() {
        b bVar = new b();
        e.f.c.c.a.a(this.f3457c, bVar);
        return bVar.a();
    }

    private String e(String str) {
        d dVar = new d(FileType.CONTENT, str);
        return dVar.a(g(dVar.f3467b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public d b(File file) {
        d b2 = d.b(file);
        if (b2 != null && f(b2.f3467b).equals(file.getParentFile())) {
            return b2;
        }
        return null;
    }

    @VisibleForTesting
    static String a(int i2) {
        return String.format(null, "%s.ols%d.%d", "v2", 100, Integer.valueOf(i2));
    }

    @Override // com.facebook.cache.disk.c
    public boolean a() {
        return this.f3456b;
    }

    private void a(File file, String str) {
        try {
            e.f.c.c.c.a(file);
        } catch (c.a e2) {
            this.f3458d.a(a.EnumC0181a.WRITE_CREATE_DIR, f3453f, str, e2);
            throw e2;
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    class f implements c.b {

        /* renamed from: a, reason: collision with root package name */
        private final String f3468a;

        /* renamed from: b, reason: collision with root package name */
        @VisibleForTesting
        final File f3469b;

        public f(String str, File file) {
            this.f3468a = str;
            this.f3469b = file;
        }

        @Override // com.facebook.cache.disk.c.b
        public void a(j jVar, Object obj) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.f3469b);
                try {
                    com.facebook.common.internal.c cVar = new com.facebook.common.internal.c(fileOutputStream);
                    jVar.a(cVar);
                    cVar.flush();
                    long i2 = cVar.i();
                    fileOutputStream.close();
                    if (this.f3469b.length() != i2) {
                        throw new e(i2, this.f3469b.length());
                    }
                } catch (Throwable th) {
                    fileOutputStream.close();
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                DefaultDiskStorage.this.f3458d.a(a.EnumC0181a.WRITE_UPDATE_FILE_NOT_FOUND, DefaultDiskStorage.f3453f, "updateResource", e2);
                throw e2;
            }
        }

        @Override // com.facebook.cache.disk.c.b
        public boolean n() {
            return !this.f3469b.exists() || this.f3469b.delete();
        }

        @Override // com.facebook.cache.disk.c.b
        public e.f.a.a a(Object obj) {
            a.EnumC0181a enumC0181a;
            File b2 = DefaultDiskStorage.this.b(this.f3468a);
            try {
                e.f.c.c.c.a(this.f3469b, b2);
                if (b2.exists()) {
                    b2.setLastModified(DefaultDiskStorage.this.f3459e.now());
                }
                return e.f.a.b.a(b2);
            } catch (c.d e2) {
                Throwable cause = e2.getCause();
                if (cause != null) {
                    if (!(cause instanceof c.C0183c)) {
                        if (cause instanceof FileNotFoundException) {
                            enumC0181a = a.EnumC0181a.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
                        } else {
                            enumC0181a = a.EnumC0181a.WRITE_RENAME_FILE_OTHER;
                        }
                    } else {
                        enumC0181a = a.EnumC0181a.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
                    }
                } else {
                    enumC0181a = a.EnumC0181a.WRITE_RENAME_FILE_OTHER;
                }
                DefaultDiskStorage.this.f3458d.a(enumC0181a, DefaultDiskStorage.f3453f, "commit", e2);
                throw e2;
            }
        }
    }

    @Override // com.facebook.cache.disk.c
    public c.b a(String str, Object obj) {
        d dVar = new d(FileType.TEMP, str);
        File f2 = f(dVar.f3467b);
        if (!f2.exists()) {
            a(f2, "insert");
        }
        try {
            return new f(str, dVar.a(f2));
        } catch (IOException e2) {
            this.f3458d.a(a.EnumC0181a.WRITE_CREATE_TEMPFILE, f3453f, "insert", e2);
            throw e2;
        }
    }

    @Override // com.facebook.cache.disk.c
    public long a(c.a aVar) {
        return a(((c) aVar).a().b());
    }

    @Override // com.facebook.cache.disk.c
    public long a(String str) {
        return a(b(str));
    }

    private long a(File file) {
        if (!file.exists()) {
            return 0L;
        }
        long length = file.length();
        if (file.delete()) {
            return length;
        }
        return -1L;
    }
}
