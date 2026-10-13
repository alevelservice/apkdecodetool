package com.zoloz.webcontainer.l;

import com.zoloz.webcontainer.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: H5SessionManager.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    HashMap<String, List<com.zoloz.webcontainer.r.a>> f16742a = new HashMap<>();

    public void a(String str, com.zoloz.webcontainer.r.a aVar) {
        synchronized (this) {
            List<com.zoloz.webcontainer.r.a> list = this.f16742a.get(str);
            if (list == null) {
                list = new ArrayList<>();
                this.f16742a.put(str, list);
            }
            list.add(aVar);
        }
    }

    public void b(String str, com.zoloz.webcontainer.r.a aVar) {
        List<com.zoloz.webcontainer.r.a> list = this.f16742a.get(str);
        if (list != null) {
            list.remove(aVar);
        }
    }

    public void b(String str) {
        a(str);
    }

    public void a(String str) {
        synchronized (this) {
            List<com.zoloz.webcontainer.r.a> list = this.f16742a.get(str);
            com.zoloz.webcontainer.b.a("H5SessionManager", "exitSession");
            if (list != null) {
                for (com.zoloz.webcontainer.r.a aVar : list) {
                    com.zoloz.webcontainer.b.a("H5SessionManager", "exitSession " + aVar);
                    q.i().d().a(aVar.e());
                }
                list.clear();
            }
        }
    }

    public void a(String str, int i2) {
        if (i2 < 0) {
            i2 = Math.abs(i2);
        }
        List<com.zoloz.webcontainer.r.a> list = this.f16742a.get(str);
        if (list == null) {
            com.zoloz.webcontainer.b.c("H5SessionManager", "pop error session not found  " + str);
            return;
        }
        while (i2 != 0) {
            if (list.size() > 0) {
                q.i().d().a(list.remove(list.size() - 1).e());
            } else {
                com.zoloz.webcontainer.b.c("H5SessionManager", "pop error index " + i2);
            }
            i2--;
        }
    }
}
