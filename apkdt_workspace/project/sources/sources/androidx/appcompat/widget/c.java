package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActivityChooserModel.java */
/* loaded from: classes.dex */
public class c extends DataSetObservable {
    static final String n = c.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    private final Object f1287a;

    /* renamed from: b, reason: collision with root package name */
    private final List<b> f1288b;

    /* renamed from: c, reason: collision with root package name */
    private final List<d> f1289c;

    /* renamed from: d, reason: collision with root package name */
    final Context f1290d;

    /* renamed from: e, reason: collision with root package name */
    final String f1291e;

    /* renamed from: f, reason: collision with root package name */
    private Intent f1292f;

    /* renamed from: g, reason: collision with root package name */
    private InterfaceC0025c f1293g;

    /* renamed from: h, reason: collision with root package name */
    private int f1294h;

    /* renamed from: i, reason: collision with root package name */
    boolean f1295i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f1296j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f1297k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f1298l;
    private e m;

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: e, reason: collision with root package name */
        public final ResolveInfo f1299e;

        /* renamed from: f, reason: collision with root package name */
        public float f1300f;

        public b(ResolveInfo resolveInfo) {
            this.f1299e = resolveInfo;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return Float.floatToIntBits(bVar.f1300f) - Float.floatToIntBits(this.f1300f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && b.class == obj.getClass() && Float.floatToIntBits(this.f1300f) == Float.floatToIntBits(((b) obj).f1300f);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f1300f) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.f1299e.toString() + "; weight:" + new BigDecimal(this.f1300f) + "]";
        }
    }

    /* compiled from: ActivityChooserModel.java */
    /* renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0025c {
        void a(Intent intent, List<b> list, List<d> list2);
    }

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public final ComponentName f1301a;

        /* renamed from: b, reason: collision with root package name */
        public final long f1302b;

        /* renamed from: c, reason: collision with root package name */
        public final float f1303c;

        public d(String str, long j2, float f2) {
            this(ComponentName.unflattenFromString(str), j2, f2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            ComponentName componentName = this.f1301a;
            if (componentName == null) {
                if (dVar.f1301a != null) {
                    return false;
                }
            } else if (!componentName.equals(dVar.f1301a)) {
                return false;
            }
            return this.f1302b == dVar.f1302b && Float.floatToIntBits(this.f1303c) == Float.floatToIntBits(dVar.f1303c);
        }

        public int hashCode() {
            ComponentName componentName = this.f1301a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j2 = this.f1302b;
            return ((((hashCode + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Float.floatToIntBits(this.f1303c);
        }

        public String toString() {
            return "[; activity:" + this.f1301a + "; time:" + this.f1302b + "; weight:" + new BigDecimal(this.f1303c) + "]";
        }

        public d(ComponentName componentName, long j2, float f2) {
            this.f1301a = componentName;
            this.f1302b = j2;
            this.f1303c = f2;
        }
    }

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public interface e {
        boolean a(c cVar, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public final class f extends AsyncTask<Object, Void, Void> {
        f() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x006d, code lost:
        
            if (r15 != null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x00c6, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        
            r15.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00c3, code lost:
        
            if (r15 == null) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x008d, code lost:
        
            if (r15 == null) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00a8, code lost:
        
            if (r15 == null) goto L27;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Object... r15) {
            /*
                r14 = this;
                java.lang.String r0 = "historical-record"
                java.lang.String r1 = "historical-records"
                java.lang.String r2 = "Error writing historical record file: "
                r3 = 0
                r4 = r15[r3]
                java.util.List r4 = (java.util.List) r4
                r5 = 1
                r15 = r15[r5]
                java.lang.String r15 = (java.lang.String) r15
                r6 = 0
                androidx.appcompat.widget.c r7 = androidx.appcompat.widget.c.this     // Catch: java.io.FileNotFoundException -> Ld1
                android.content.Context r7 = r7.f1290d     // Catch: java.io.FileNotFoundException -> Ld1
                java.io.FileOutputStream r15 = r7.openFileOutput(r15, r3)     // Catch: java.io.FileNotFoundException -> Ld1
                org.xmlpull.v1.XmlSerializer r7 = android.util.Xml.newSerializer()
                r7.setOutput(r15, r6)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r8 = "UTF-8"
                java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.startDocument(r8, r9)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.startTag(r6, r1)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                int r8 = r4.size()     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r9 = 0
            L31:
                if (r9 >= r8) goto L63
                java.lang.Object r10 = r4.remove(r3)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                androidx.appcompat.widget.c$d r10 = (androidx.appcompat.widget.c.d) r10     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.startTag(r6, r0)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r11 = "activity"
                android.content.ComponentName r12 = r10.f1301a     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r12 = r12.flattenToString()     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r11 = "time"
                long r12 = r10.f1302b     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r11 = "weight"
                float r10 = r10.f1303c     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.attribute(r6, r11, r10)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.endTag(r6, r0)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                int r9 = r9 + 1
                goto L31
            L63:
                r7.endTag(r6, r1)     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                r7.endDocument()     // Catch: java.lang.Throwable -> L73 java.io.IOException -> L75 java.lang.IllegalStateException -> L90 java.lang.IllegalArgumentException -> Lab
                androidx.appcompat.widget.c r0 = androidx.appcompat.widget.c.this
                r0.f1295i = r5
                if (r15 == 0) goto Lc6
            L6f:
                r15.close()     // Catch: java.io.IOException -> Lc6
                goto Lc6
            L73:
                r0 = move-exception
                goto Lc7
            L75:
                java.lang.String r0 = androidx.appcompat.widget.c.n     // Catch: java.lang.Throwable -> L73
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
                r0.<init>()     // Catch: java.lang.Throwable -> L73
                r0.append(r2)     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r1 = androidx.appcompat.widget.c.this     // Catch: java.lang.Throwable -> L73
                java.lang.String r1 = r1.f1291e     // Catch: java.lang.Throwable -> L73
                r0.append(r1)     // Catch: java.lang.Throwable -> L73
                r0.toString()     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r0 = androidx.appcompat.widget.c.this
                r0.f1295i = r5
                if (r15 == 0) goto Lc6
                goto L6f
            L90:
                java.lang.String r0 = androidx.appcompat.widget.c.n     // Catch: java.lang.Throwable -> L73
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
                r0.<init>()     // Catch: java.lang.Throwable -> L73
                r0.append(r2)     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r1 = androidx.appcompat.widget.c.this     // Catch: java.lang.Throwable -> L73
                java.lang.String r1 = r1.f1291e     // Catch: java.lang.Throwable -> L73
                r0.append(r1)     // Catch: java.lang.Throwable -> L73
                r0.toString()     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r0 = androidx.appcompat.widget.c.this
                r0.f1295i = r5
                if (r15 == 0) goto Lc6
                goto L6f
            Lab:
                java.lang.String r0 = androidx.appcompat.widget.c.n     // Catch: java.lang.Throwable -> L73
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
                r0.<init>()     // Catch: java.lang.Throwable -> L73
                r0.append(r2)     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r1 = androidx.appcompat.widget.c.this     // Catch: java.lang.Throwable -> L73
                java.lang.String r1 = r1.f1291e     // Catch: java.lang.Throwable -> L73
                r0.append(r1)     // Catch: java.lang.Throwable -> L73
                r0.toString()     // Catch: java.lang.Throwable -> L73
                androidx.appcompat.widget.c r0 = androidx.appcompat.widget.c.this
                r0.f1295i = r5
                if (r15 == 0) goto Lc6
                goto L6f
            Lc6:
                return r6
            Lc7:
                androidx.appcompat.widget.c r1 = androidx.appcompat.widget.c.this
                r1.f1295i = r5
                if (r15 == 0) goto Ld0
                r15.close()     // Catch: java.io.IOException -> Ld0
            Ld0:
                throw r0
            Ld1:
                java.lang.String r0 = androidx.appcompat.widget.c.n
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r2)
                r0.append(r15)
                r0.toString()
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.c.f.doInBackground(java.lang.Object[]):java.lang.Void");
        }
    }

    static {
        new HashMap();
    }

    private void d() {
        boolean e2 = e() | h();
        g();
        if (e2) {
            j();
            notifyChanged();
        }
    }

    private boolean e() {
        if (!this.f1298l || this.f1292f == null) {
            return false;
        }
        this.f1298l = false;
        this.f1288b.clear();
        List<ResolveInfo> queryIntentActivities = this.f1290d.getPackageManager().queryIntentActivities(this.f1292f, 0);
        int size = queryIntentActivities.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f1288b.add(new b(queryIntentActivities.get(i2)));
        }
        return true;
    }

    private void f() {
        if (this.f1296j) {
            if (this.f1297k) {
                this.f1297k = false;
                if (TextUtils.isEmpty(this.f1291e)) {
                    return;
                }
                new f().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f1289c), this.f1291e);
                return;
            }
            return;
        }
        throw new IllegalStateException("No preceding call to #readHistoricalData");
    }

    private void g() {
        int size = this.f1289c.size() - this.f1294h;
        if (size <= 0) {
            return;
        }
        this.f1297k = true;
        for (int i2 = 0; i2 < size; i2++) {
            this.f1289c.remove(0);
        }
    }

    private boolean h() {
        if (!this.f1295i || !this.f1297k || TextUtils.isEmpty(this.f1291e)) {
            return false;
        }
        this.f1295i = false;
        this.f1296j = true;
        i();
        return true;
    }

    private void i() {
        XmlPullParser newPullParser;
        try {
            FileInputStream openFileInput = this.f1290d.openFileInput(this.f1291e);
            try {
                try {
                    newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    for (int i2 = 0; i2 != 1 && i2 != 2; i2 = newPullParser.next()) {
                    }
                } catch (Throwable th) {
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused2) {
                String str = "Error reading historical recrod file: " + this.f1291e;
                if (openFileInput == null) {
                    return;
                }
            } catch (XmlPullParserException unused3) {
                String str2 = "Error reading historical recrod file: " + this.f1291e;
                if (openFileInput == null) {
                    return;
                }
            }
            if ("historical-records".equals(newPullParser.getName())) {
                List<d> list = this.f1289c;
                list.clear();
                while (true) {
                    int next = newPullParser.next();
                    if (next == 1) {
                        if (openFileInput == null) {
                            return;
                        }
                    } else if (next != 3 && next != 4) {
                        if ("historical-record".equals(newPullParser.getName())) {
                            list.add(new d(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                        } else {
                            throw new XmlPullParserException("Share records file not well-formed.");
                        }
                    }
                }
                try {
                    openFileInput.close();
                } catch (IOException unused4) {
                }
            } else {
                throw new XmlPullParserException("Share records file does not start with historical-records tag.");
            }
        } catch (FileNotFoundException unused5) {
        }
    }

    private boolean j() {
        if (this.f1293g == null || this.f1292f == null || this.f1288b.isEmpty() || this.f1289c.isEmpty()) {
            return false;
        }
        this.f1293g.a(this.f1292f, this.f1288b, Collections.unmodifiableList(this.f1289c));
        return true;
    }

    public int a() {
        int size;
        synchronized (this.f1287a) {
            d();
            size = this.f1288b.size();
        }
        return size;
    }

    public ResolveInfo b(int i2) {
        ResolveInfo resolveInfo;
        synchronized (this.f1287a) {
            d();
            resolveInfo = this.f1288b.get(i2).f1299e;
        }
        return resolveInfo;
    }

    public void c(int i2) {
        synchronized (this.f1287a) {
            d();
            b bVar = this.f1288b.get(i2);
            b bVar2 = this.f1288b.get(0);
            a(new d(new ComponentName(bVar.f1299e.activityInfo.packageName, bVar.f1299e.activityInfo.name), System.currentTimeMillis(), bVar2 != null ? (bVar2.f1300f - bVar.f1300f) + 5.0f : 1.0f));
        }
    }

    public int a(ResolveInfo resolveInfo) {
        synchronized (this.f1287a) {
            d();
            List<b> list = this.f1288b;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (list.get(i2).f1299e == resolveInfo) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public ResolveInfo b() {
        synchronized (this.f1287a) {
            d();
            if (this.f1288b.isEmpty()) {
                return null;
            }
            return this.f1288b.get(0).f1299e;
        }
    }

    public int c() {
        int size;
        synchronized (this.f1287a) {
            d();
            size = this.f1289c.size();
        }
        return size;
    }

    public Intent a(int i2) {
        synchronized (this.f1287a) {
            if (this.f1292f == null) {
                return null;
            }
            d();
            b bVar = this.f1288b.get(i2);
            ComponentName componentName = new ComponentName(bVar.f1299e.activityInfo.packageName, bVar.f1299e.activityInfo.name);
            Intent intent = new Intent(this.f1292f);
            intent.setComponent(componentName);
            if (this.m != null) {
                if (this.m.a(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new d(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    private boolean a(d dVar) {
        boolean add = this.f1289c.add(dVar);
        if (add) {
            this.f1297k = true;
            g();
            f();
            j();
            notifyChanged();
        }
        return add;
    }
}
