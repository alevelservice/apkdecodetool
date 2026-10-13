package com.pichillilorenzo.flutter_inappwebview.c;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CredentialDatabase.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: d, reason: collision with root package name */
    private static c f16591d;

    /* renamed from: a, reason: collision with root package name */
    public f f16592a;

    /* renamed from: b, reason: collision with root package name */
    public b f16593b;

    /* renamed from: c, reason: collision with root package name */
    public d f16594c;

    private c(d dVar, f fVar, b bVar) {
        this.f16594c = dVar;
        this.f16592a = fVar;
        this.f16593b = bVar;
    }

    public static c a(Context context) {
        c cVar = f16591d;
        if (cVar != null) {
            return cVar;
        }
        d dVar = new d(context);
        f16591d = new c(dVar, new f(dVar), new b(dVar));
        return f16591d;
    }

    public void b(String str, String str2, String str3, Integer num) {
        e a2 = this.f16592a.a(str, str2, str3, num);
        if (a2 != null) {
            this.f16592a.a(a2);
        }
    }

    public void b(String str, String str2, String str3, Integer num, String str4, String str5) {
        Long l2;
        e a2 = this.f16592a.a(str, str2, str3, num);
        if (a2 == null) {
            l2 = Long.valueOf(this.f16592a.b(new e(null, str, str2, str3, num)));
        } else {
            l2 = a2.f16595a;
        }
        a a3 = this.f16593b.a(str4, str5, l2);
        if (a3 != null) {
            boolean z = false;
            if (!a3.f16586b.equals(str4)) {
                a3.f16586b = str4;
                z = true;
            }
            if (!a3.f16587c.equals(str5)) {
                a3.f16587c = str5;
                z = true;
            }
            if (z) {
                this.f16593b.c(a3);
                return;
            }
            return;
        }
        a aVar = new a(null, str4, str5, l2);
        aVar.f16585a = Long.valueOf(this.f16593b.b(aVar));
    }

    public List<a> a(String str, String str2, String str3, Integer num) {
        ArrayList arrayList = new ArrayList();
        e a2 = this.f16592a.a(str, str2, str3, num);
        return a2 != null ? this.f16593b.a(a2.f16595a) : arrayList;
    }

    public void a() {
        d dVar = this.f16594c;
        dVar.a(dVar.getWritableDatabase());
    }

    public void a(String str, String str2, String str3, Integer num, String str4, String str5) {
        e a2 = this.f16592a.a(str, str2, str3, num);
        if (a2 != null) {
            this.f16593b.a(this.f16593b.a(str4, str5, a2.f16595a));
        }
    }
}
