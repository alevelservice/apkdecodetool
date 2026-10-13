package com.mapbox.android.telemetry;

import com.google.gson.Gson;
import com.mapbox.android.telemetry.i0;
import i.s;
import i.v;
import i.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelemetryClient.java */
/* loaded from: classes2.dex */
public class g0 {

    /* renamed from: g, reason: collision with root package name */
    private static final i.u f15578g = i.u.b("application/json; charset=utf-8");

    /* renamed from: a, reason: collision with root package name */
    private String f15579a;

    /* renamed from: b, reason: collision with root package name */
    private String f15580b;

    /* renamed from: c, reason: collision with root package name */
    private String f15581c;

    /* renamed from: d, reason: collision with root package name */
    private i0 f15582d;

    /* renamed from: e, reason: collision with root package name */
    private final w f15583e;

    /* renamed from: f, reason: collision with root package name */
    private e f15584f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(String str, String str2, String str3, i0 i0Var, w wVar, e eVar) {
        this.f15579a = str;
        this.f15580b = str2;
        this.f15581c = str3;
        this.f15582d = i0Var;
        this.f15583e = wVar;
        this.f15584f = eVar;
    }

    private void b(List<Event> list, i.f fVar, boolean z) {
        Gson gson;
        if (z) {
            com.google.gson.e eVar = new com.google.gson.e();
            eVar.b();
            gson = eVar.a();
        } else {
            gson = new Gson();
        }
        String a2 = gson.a(list);
        i.a0 a3 = i.a0.a(f15578g, a2);
        s.a a4 = this.f15582d.a().a("/events/v2");
        a4.b("access_token", this.f15579a);
        i.s a5 = a4.a();
        if (a()) {
            this.f15583e.a("TelemetryClient", String.format(Locale.US, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s", a5, Integer.valueOf(list.size()), this.f15580b, a2));
        }
        z.a aVar = new z.a();
        aVar.a(a5);
        aVar.b("User-Agent", this.f15580b);
        aVar.a("X-Mapbox-Agent", this.f15581c);
        aVar.a(a3);
        this.f15582d.a(this.f15584f, list.size()).a(aVar.a()).a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<Event> list, i.f fVar, boolean z) {
        b(Collections.unmodifiableList(list), fVar, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelemetryClient.java */
    /* loaded from: classes2.dex */
    public class a implements i.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArraySet f15585a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f15586b;

        a(g0 g0Var, CopyOnWriteArraySet copyOnWriteArraySet, List list) {
            this.f15585a = copyOnWriteArraySet;
            this.f15586b = list;
        }

        @Override // i.f
        public void a(i.e eVar, IOException iOException) {
            Iterator it = this.f15585a.iterator();
            while (it.hasNext()) {
                ((c) it.next()).a(iOException.getMessage(), this.f15586b);
            }
        }

        @Override // i.f
        public void a(i.e eVar, i.b0 b0Var) {
            Iterator it = this.f15585a.iterator();
            while (it.hasNext()) {
                ((c) it.next()).a(b0Var.p(), b0Var.k(), this.f15586b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Attachment attachment, CopyOnWriteArraySet<c> copyOnWriteArraySet) {
        List<s> attachments = attachment.getAttachments();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        v.a aVar = new v.a("--01ead4a5-7a67-4703-ad02-589886e00923");
        aVar.a(i.v.f18803f);
        Iterator<s> it = attachments.iterator();
        if (!it.hasNext()) {
            aVar.a("attachments", new Gson().a(arrayList));
            i.a0 a2 = a(aVar);
            s.a a3 = this.f15582d.a().a("/attachments/v1");
            a3.b("access_token", this.f15579a);
            i.s a4 = a3.a();
            if (a()) {
                this.f15583e.a("TelemetryClient", String.format(Locale.US, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s", a4, Integer.valueOf(attachments.size()), this.f15580b, arrayList));
            }
            z.a aVar2 = new z.a();
            aVar2.a(a4);
            aVar2.b("User-Agent", this.f15580b);
            aVar2.a("X-Mapbox-Agent", this.f15581c);
            aVar2.a(a2);
            this.f15582d.a(this.f15584f).a(aVar2.a()).a(new a(this, copyOnWriteArraySet, arrayList2));
            return;
        }
        s next = it.next();
        next.b();
        d a5 = next.a();
        arrayList.add(a5);
        a5.a();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        i0.b d2 = this.f15582d.d();
        d2.a(z);
        this.f15582d = d2.a();
    }

    private boolean a() {
        return this.f15582d.c() || this.f15582d.b().equals(o.STAGING);
    }

    private i.a0 a(v.a aVar) {
        i.v a2 = aVar.a();
        v.a aVar2 = new v.a("--01ead4a5-7a67-4703-ad02-589886e00923");
        aVar2.a(i.v.f18803f);
        int c2 = a2.c();
        while (true) {
            c2--;
            if (c2 > -1) {
                aVar2.a(a2.a(c2));
            } else {
                return aVar2.a();
            }
        }
    }
}
