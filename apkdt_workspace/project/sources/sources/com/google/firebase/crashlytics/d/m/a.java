package com.google.firebase.crashlytics.d.m;

import com.google.firebase.crashlytics.d.m.b;
import com.google.firebase.crashlytics.d.m.c.c;
import com.google.firebase.crashlytics.d.m.c.d;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ReportManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final b.c f14651a;

    public a(b.c cVar) {
        this.f14651a = cVar;
    }

    public boolean a() {
        File[] b2 = this.f14651a.b();
        File[] a2 = this.f14651a.a();
        if (b2 == null || b2.length <= 0) {
            return a2 != null && a2.length > 0;
        }
        return true;
    }

    public List<c> b() {
        com.google.firebase.crashlytics.d.b.a().a("Checking for crash reports...");
        File[] b2 = this.f14651a.b();
        File[] a2 = this.f14651a.a();
        LinkedList linkedList = new LinkedList();
        if (b2 != null) {
            for (File file : b2) {
                com.google.firebase.crashlytics.d.b.a().a("Found crash report " + file.getPath());
                linkedList.add(new d(file));
            }
        }
        if (a2 != null) {
            for (File file2 : a2) {
                linkedList.add(new com.google.firebase.crashlytics.d.m.c.b(file2));
            }
        }
        if (linkedList.isEmpty()) {
            com.google.firebase.crashlytics.d.b.a().a("No reports found.");
        }
        return linkedList;
    }

    public void a(c cVar) {
        cVar.remove();
    }

    public void a(List<c> list) {
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
