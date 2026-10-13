package com.mapbox.mapboxsdk.p;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Attribution.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    static final List<String> f16181c = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    private String f16182a;

    /* renamed from: b, reason: collision with root package name */
    private String f16183b;

    static {
        f16181c.add("https://www.mapbox.com/feedback/");
        f16181c.add("https://www.mapbox.com/map-feedback/");
        f16181c.add("https://apps.mapbox.com/feedback/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        this.f16182a = str;
        this.f16183b = str2;
    }

    public String a() {
        return this.f16182a;
    }

    public String b() {
        return this.f16182a.equals("OpenStreetMap") ? "OSM" : this.f16182a;
    }

    public String c() {
        return this.f16183b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f16182a;
        if (str == null ? aVar.f16182a != null : !str.equals(aVar.f16182a)) {
            return false;
        }
        String str2 = this.f16183b;
        String str3 = aVar.f16183b;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public int hashCode() {
        String str = this.f16182a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f16183b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }
}
