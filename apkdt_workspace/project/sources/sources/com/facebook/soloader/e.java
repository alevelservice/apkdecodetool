package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.l;
import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.annotation.Nullable;

/* compiled from: ExtractFromZipSoSource.java */
/* loaded from: classes.dex */
public class e extends l {

    /* renamed from: f, reason: collision with root package name */
    protected final File f4187f;

    /* renamed from: g, reason: collision with root package name */
    protected final String f4188g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes.dex */
    public static final class b extends l.b implements Comparable {

        /* renamed from: g, reason: collision with root package name */
        final ZipEntry f4189g;

        /* renamed from: h, reason: collision with root package name */
        final int f4190h;

        b(String str, ZipEntry zipEntry, int i2) {
            super(str, a(zipEntry));
            this.f4189g = zipEntry;
            this.f4190h = i2;
        }

        private static String a(ZipEntry zipEntry) {
            return String.format("pseudo-zip-hash-1-%s-%s-%s-%s", zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc()));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f4208e.compareTo(((b) obj).f4208e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes.dex */
    public class c extends l.f {

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        private b[] f4191e;

        /* renamed from: f, reason: collision with root package name */
        private final ZipFile f4192f;

        /* renamed from: g, reason: collision with root package name */
        private final l f4193g;

        /* compiled from: ExtractFromZipSoSource.java */
        /* loaded from: classes.dex */
        private final class a extends l.e {

            /* renamed from: e, reason: collision with root package name */
            private int f4195e;

            private a() {
            }

            @Override // com.facebook.soloader.l.e
            public boolean i() {
                c.this.k();
                return this.f4195e < c.this.f4191e.length;
            }

            @Override // com.facebook.soloader.l.e
            public l.d j() {
                c.this.k();
                b[] bVarArr = c.this.f4191e;
                int i2 = this.f4195e;
                this.f4195e = i2 + 1;
                b bVar = bVarArr[i2];
                InputStream inputStream = c.this.f4192f.getInputStream(bVar.f4189g);
                try {
                    return new l.d(bVar, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(l lVar) {
            this.f4192f = new ZipFile(e.this.f4187f);
            this.f4193g = lVar;
        }

        protected boolean a(ZipEntry zipEntry, String str) {
            throw null;
        }

        @Override // com.facebook.soloader.l.f, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f4192f.close();
        }

        @Override // com.facebook.soloader.l.f
        protected final l.c i() {
            return new l.c(k());
        }

        @Override // com.facebook.soloader.l.f
        protected final l.e j() {
            return new a();
        }

        final b[] k() {
            if (this.f4191e == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap hashMap = new HashMap();
                Pattern compile = Pattern.compile(e.this.f4188g);
                String[] a2 = SysUtil.a();
                Enumeration<? extends ZipEntry> entries = this.f4192f.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    Matcher matcher = compile.matcher(nextElement.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        int a3 = SysUtil.a(a2, group);
                        if (a3 >= 0) {
                            linkedHashSet.add(group);
                            b bVar = (b) hashMap.get(group2);
                            if (bVar == null || a3 < bVar.f4190h) {
                                hashMap.put(group2, new b(group2, nextElement, a3));
                            }
                        }
                    }
                }
                this.f4193g.a((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                b[] bVarArr = (b[]) hashMap.values().toArray(new b[hashMap.size()]);
                Arrays.sort(bVarArr);
                int i2 = 0;
                for (int i3 = 0; i3 < bVarArr.length; i3++) {
                    b bVar2 = bVarArr[i3];
                    if (a(bVar2.f4189g, bVar2.f4208e)) {
                        i2++;
                    } else {
                        bVarArr[i3] = null;
                    }
                }
                b[] bVarArr2 = new b[i2];
                int i4 = 0;
                for (b bVar3 : bVarArr) {
                    if (bVar3 != null) {
                        bVarArr2[i4] = bVar3;
                        i4++;
                    }
                }
                this.f4191e = bVarArr2;
            }
            return this.f4191e;
        }
    }

    public e(Context context, String str, File file, String str2) {
        super(context, str);
        this.f4187f = file;
        this.f4188g = str2;
    }
}
