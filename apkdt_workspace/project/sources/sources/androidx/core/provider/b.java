package androidx.core.provider;

import a.i.h.k;
import a.i.m.i;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.e;
import androidx.core.provider.c;
import com.alipay.mobile.security.bio.api.BioError;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: FontsContractCompat.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    static final a.e.e<String, Typeface> f1848a = new a.e.e<>(16);

    /* renamed from: b, reason: collision with root package name */
    private static final androidx.core.provider.c f1849b = new androidx.core.provider.c("fonts", 10, e.b.b.a.a.a.c.DEBUG_INT);

    /* renamed from: c, reason: collision with root package name */
    static final Object f1850c = new Object();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("sLock")
    static final a.e.g<String, ArrayList<c.d<g>>> f1851d = new a.e.g<>();

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<byte[]> f1852e = new d();

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    class a implements Callable<g> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f1853e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ androidx.core.provider.a f1854f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f1855g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f1856h;

        a(Context context, androidx.core.provider.a aVar, int i2, String str) {
            this.f1853e = context;
            this.f1854f = aVar;
            this.f1855g = i2;
            this.f1856h = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public g call() {
            g a2 = b.a(this.f1853e, this.f1854f, this.f1855g);
            Typeface typeface = a2.f1867a;
            if (typeface != null) {
                b.f1848a.a(this.f1856h, typeface);
            }
            return a2;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* renamed from: androidx.core.provider.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0034b implements c.d<g> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.a f1857a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Handler f1858b;

        C0034b(e.a aVar, Handler handler) {
            this.f1857a = aVar;
            this.f1858b = handler;
        }

        @Override // androidx.core.provider.c.d
        public void a(g gVar) {
            if (gVar == null) {
                this.f1857a.a(1, this.f1858b);
                return;
            }
            int i2 = gVar.f1868b;
            if (i2 == 0) {
                this.f1857a.a(gVar.f1867a, this.f1858b);
            } else {
                this.f1857a.a(i2, this.f1858b);
            }
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    class c implements c.d<g> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1859a;

        c(String str) {
            this.f1859a = str;
        }

        @Override // androidx.core.provider.c.d
        public void a(g gVar) {
            synchronized (b.f1850c) {
                ArrayList<c.d<g>> arrayList = b.f1851d.get(this.f1859a);
                if (arrayList == null) {
                    return;
                }
                b.f1851d.remove(this.f1859a);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    arrayList.get(i2).a(gVar);
                }
            }
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    class d implements Comparator<byte[]> {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i2;
            int i3;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i3 = bArr2.length;
            } else {
                for (int i4 = 0; i4 < bArr.length; i4++) {
                    if (bArr[i4] != bArr2[i4]) {
                        i2 = bArr[i4];
                        i3 = bArr2[i4];
                    }
                }
                return 0;
            }
            return i2 - i3;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private final int f1860a;

        /* renamed from: b, reason: collision with root package name */
        private final f[] f1861b;

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public e(int i2, @Nullable f[] fVarArr) {
            this.f1860a = i2;
            this.f1861b = fVarArr;
        }

        public f[] a() {
            return this.f1861b;
        }

        public int b() {
            return this.f1860a;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        private final Uri f1862a;

        /* renamed from: b, reason: collision with root package name */
        private final int f1863b;

        /* renamed from: c, reason: collision with root package name */
        private final int f1864c;

        /* renamed from: d, reason: collision with root package name */
        private final boolean f1865d;

        /* renamed from: e, reason: collision with root package name */
        private final int f1866e;

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public f(@NonNull Uri uri, @IntRange(from = 0) int i2, @IntRange(from = 1, to = 1000) int i3, boolean z, int i4) {
            i.a(uri);
            this.f1862a = uri;
            this.f1863b = i2;
            this.f1864c = i3;
            this.f1865d = z;
            this.f1866e = i4;
        }

        public int a() {
            return this.f1866e;
        }

        @IntRange(from = 0)
        public int b() {
            return this.f1863b;
        }

        @NonNull
        public Uri c() {
            return this.f1862a;
        }

        @IntRange(from = 1, to = 1000)
        public int d() {
            return this.f1864c;
        }

        public boolean e() {
            return this.f1865d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a, reason: collision with root package name */
        final Typeface f1867a;

        /* renamed from: b, reason: collision with root package name */
        final int f1868b;

        g(@Nullable Typeface typeface, int i2) {
            this.f1867a = typeface;
            this.f1868b = i2;
        }
    }

    @NonNull
    static g a(Context context, androidx.core.provider.a aVar, int i2) {
        try {
            e a2 = a(context, (CancellationSignal) null, aVar);
            if (a2.b() == 0) {
                Typeface a3 = a.i.h.d.a(context, null, a2.a(), i2);
                return new g(a3, a3 != null ? 0 : -3);
            }
            return new g(null, a2.b() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new g(null, -1);
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(Context context, androidx.core.provider.a aVar, @Nullable e.a aVar2, @Nullable Handler handler, boolean z, int i2, int i3) {
        String str = aVar.c() + "-" + i3;
        Typeface b2 = f1848a.b(str);
        if (b2 != null) {
            if (aVar2 != null) {
                aVar2.a(b2);
            }
            return b2;
        }
        if (z && i2 == -1) {
            g a2 = a(context, aVar, i3);
            if (aVar2 != null) {
                int i4 = a2.f1868b;
                if (i4 == 0) {
                    aVar2.a(a2.f1867a, handler);
                } else {
                    aVar2.a(i4, handler);
                }
            }
            return a2.f1867a;
        }
        a aVar3 = new a(context, aVar, i3, str);
        if (z) {
            try {
                return ((g) f1849b.a(aVar3, i2)).f1867a;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        C0034b c0034b = aVar2 == null ? null : new C0034b(aVar2, handler);
        synchronized (f1850c) {
            ArrayList<c.d<g>> arrayList = f1851d.get(str);
            if (arrayList != null) {
                if (c0034b != null) {
                    arrayList.add(c0034b);
                }
                return null;
            }
            if (c0034b != null) {
                ArrayList<c.d<g>> arrayList2 = new ArrayList<>();
                arrayList2.add(c0034b);
                f1851d.put(str, arrayList2);
            }
            f1849b.a(aVar3, new c(str));
            return null;
        }
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Map<Uri, ByteBuffer> a(Context context, f[] fVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (f fVar : fVarArr) {
            if (fVar.a() == 0) {
                Uri c2 = fVar.c();
                if (!hashMap.containsKey(c2)) {
                    hashMap.put(c2, k.a(context, cancellationSignal, c2));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @NonNull
    public static e a(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull androidx.core.provider.a aVar) {
        ProviderInfo a2 = a(context.getPackageManager(), aVar, context.getResources());
        if (a2 == null) {
            return new e(1, null);
        }
        return new e(0, a(context, aVar, a2.authority, cancellationSignal));
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    public static ProviderInfo a(@NonNull PackageManager packageManager, @NonNull androidx.core.provider.a aVar, @Nullable Resources resources) {
        String d2 = aVar.d();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(d2, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(aVar.e())) {
                List<byte[]> a2 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(a2, f1852e);
                List<List<byte[]>> a3 = a(aVar, resources);
                for (int i2 = 0; i2 < a3.size(); i2++) {
                    ArrayList arrayList = new ArrayList(a3.get(i2));
                    Collections.sort(arrayList, f1852e);
                    if (a(a2, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + d2 + ", but package was not " + aVar.e());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + d2);
    }

    private static List<List<byte[]>> a(androidx.core.provider.a aVar, Resources resources) {
        if (aVar.a() != null) {
            return aVar.a();
        }
        return FontResourcesParserCompat.a(resources, aVar.b());
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    @NonNull
    @VisibleForTesting
    static f[] a(Context context, androidx.core.provider.a aVar, String str, CancellationSignal cancellationSignal) {
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.f()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.f()}, null);
            }
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i2 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i3 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(new f(withAppendedId, i3, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : BioError.ERROR_SINGLETON_BUSY, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i2));
                }
                arrayList = arrayList2;
            }
            return (f[]) arrayList.toArray(new f[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
