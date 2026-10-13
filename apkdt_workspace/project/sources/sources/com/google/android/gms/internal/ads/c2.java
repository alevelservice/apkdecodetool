package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class c2<ReferenceT> implements d2 {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<String, CopyOnWriteArrayList<o0<? super ReferenceT>>> f5900e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private ReferenceT f5901f;

    public final void a(ReferenceT referencet) {
        this.f5901f = referencet;
    }

    public final void b(Uri uri) {
        String path = uri.getPath();
        com.google.android.gms.ads.internal.n.c();
        a(path, wa.a(uri));
    }

    @Override // com.google.android.gms.internal.ads.d2
    public final boolean d(@Nullable String str) {
        return str != null && a(Uri.parse(str));
    }

    public final synchronized void zza(String str, o0<? super ReferenceT> o0Var) {
        CopyOnWriteArrayList<o0<? super ReferenceT>> copyOnWriteArrayList = this.f5900e.get(str);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f5900e.put(str, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(o0Var);
    }

    public final synchronized void zzb(String str, o0<? super ReferenceT> o0Var) {
        CopyOnWriteArrayList<o0<? super ReferenceT>> copyOnWriteArrayList = this.f5900e.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        copyOnWriteArrayList.remove(o0Var);
    }

    public final boolean a(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        b(uri);
        return true;
    }

    public final synchronized void b() {
        this.f5900e.clear();
    }

    private final synchronized void a(final String str, final Map<String, String> map) {
        if (qd.a(2)) {
            String valueOf = String.valueOf(str);
            na.e(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                na.e(sb.toString());
            }
        }
        CopyOnWriteArrayList<o0<? super ReferenceT>> copyOnWriteArrayList = this.f5900e.get(str);
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            Iterator<o0<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                final o0<? super ReferenceT> next = it.next();
                yd.f10543d.execute(new Runnable(this, next, map) { // from class: com.google.android.gms.internal.ads.f2

                    /* renamed from: e, reason: collision with root package name */
                    private final c2 f6552e;

                    /* renamed from: f, reason: collision with root package name */
                    private final o0 f6553f;

                    /* renamed from: g, reason: collision with root package name */
                    private final Map f6554g;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6552e = this;
                        this.f6553f = next;
                        this.f6554g = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6552e.a(this.f6553f, this.f6554g);
                    }
                });
            }
            return;
        }
        if (((Boolean) mu1.e().a(aw1.K3)).booleanValue() && com.google.android.gms.ads.internal.n.g().c() != null) {
            yd.f10540a.execute(new Runnable(str) { // from class: com.google.android.gms.internal.ads.e2

                /* renamed from: e, reason: collision with root package name */
                private final String f6331e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6331e = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    com.google.android.gms.ads.internal.n.g().c().b(this.f6331e.substring(1));
                }
            });
        }
    }

    public final synchronized void a(String str, com.google.android.gms.common.util.p<o0<? super ReferenceT>> pVar) {
        CopyOnWriteArrayList<o0<? super ReferenceT>> copyOnWriteArrayList = this.f5900e.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            o0<? super ReferenceT> o0Var = (o0) it.next();
            if (pVar.apply(o0Var)) {
                arrayList.add(o0Var);
            }
        }
        copyOnWriteArrayList.removeAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(o0 o0Var, Map map) {
        o0Var.a(this.f5901f, map);
    }
}
