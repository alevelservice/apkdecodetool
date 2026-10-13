package androidx.core.provider;

import a.i.m.i;
import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.List;

/* compiled from: FontRequest.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f1842a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1843b;

    /* renamed from: c, reason: collision with root package name */
    private final String f1844c;

    /* renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f1845d;

    /* renamed from: e, reason: collision with root package name */
    private final int f1846e;

    /* renamed from: f, reason: collision with root package name */
    private final String f1847f;

    public a(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        i.a(str);
        this.f1842a = str;
        i.a(str2);
        this.f1843b = str2;
        i.a(str3);
        this.f1844c = str3;
        i.a(list);
        this.f1845d = list;
        this.f1846e = 0;
        this.f1847f = this.f1842a + "-" + this.f1843b + "-" + this.f1844c;
    }

    @Nullable
    public List<List<byte[]>> a() {
        return this.f1845d;
    }

    @ArrayRes
    public int b() {
        return this.f1846e;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public String c() {
        return this.f1847f;
    }

    @NonNull
    public String d() {
        return this.f1842a;
    }

    @NonNull
    public String e() {
        return this.f1843b;
    }

    @NonNull
    public String f() {
        return this.f1844c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1842a + ", mProviderPackage: " + this.f1843b + ", mQuery: " + this.f1844c + ", mCertificates:");
        for (int i2 = 0; i2 < this.f1845d.size(); i2++) {
            sb.append(" [");
            List<byte[]> list = this.f1845d.get(i2);
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f1846e);
        return sb.toString();
    }
}
