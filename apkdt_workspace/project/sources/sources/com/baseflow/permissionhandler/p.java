package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baseflow.permissionhandler.n;
import com.baseflow.permissionhandler.r;
import com.baseflow.permissionhandler.t;
import g.a.c.a.k;
import java.util.List;
import java.util.Map;

/* compiled from: MethodCallHandlerImpl.java */
/* loaded from: classes.dex */
final class p implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final Context f3380e;

    /* renamed from: f, reason: collision with root package name */
    private final n f3381f;

    /* renamed from: g, reason: collision with root package name */
    private final r f3382g;

    /* renamed from: h, reason: collision with root package name */
    private final t f3383h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private Activity f3384i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private r.a f3385j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private r.d f3386k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context, n nVar, r rVar, t tVar) {
        this.f3380e = context;
        this.f3381f = nVar;
        this.f3382g = rVar;
        this.f3383h = tVar;
    }

    public void a(@Nullable Activity activity) {
        this.f3384i = activity;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(@NonNull g.a.c.a.j jVar, @NonNull final k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1544053025:
                if (str.equals("checkServiceStatus")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1017315255:
                if (str.equals("shouldShowRequestPermissionRationale")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -576207927:
                if (str.equals("checkPermissionStatus")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 347240634:
                if (str.equals("openAppSettings")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1669188213:
                if (str.equals("requestPermissions")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            int parseInt = Integer.parseInt(jVar.f18224b.toString());
            t tVar = this.f3383h;
            Context context = this.f3380e;
            dVar.getClass();
            tVar.a(parseInt, context, new t.a() { // from class: com.baseflow.permissionhandler.j
                @Override // com.baseflow.permissionhandler.t.a
                public final void a(int i2) {
                    k.d.this.a(Integer.valueOf(i2));
                }
            }, new o() { // from class: com.baseflow.permissionhandler.c
                @Override // com.baseflow.permissionhandler.o
                public final void a(String str2, String str3) {
                    k.d.this.a(str2, str3, null);
                }
            });
            return;
        }
        if (c2 == 1) {
            int parseInt2 = Integer.parseInt(jVar.f18224b.toString());
            r rVar = this.f3382g;
            Context context2 = this.f3380e;
            Activity activity = this.f3384i;
            dVar.getClass();
            rVar.a(parseInt2, context2, activity, new r.c() { // from class: com.baseflow.permissionhandler.i
                @Override // com.baseflow.permissionhandler.r.c
                public final void a(int i2) {
                    k.d.this.a(Integer.valueOf(i2));
                }
            }, new o() { // from class: com.baseflow.permissionhandler.d
                @Override // com.baseflow.permissionhandler.o
                public final void a(String str2, String str3) {
                    k.d.this.a(str2, str3, null);
                }
            });
            return;
        }
        if (c2 == 2) {
            List<Integer> list = (List) jVar.a();
            r rVar2 = this.f3382g;
            Activity activity2 = this.f3384i;
            r.a aVar = this.f3385j;
            r.d dVar2 = this.f3386k;
            dVar.getClass();
            rVar2.a(list, activity2, aVar, dVar2, new r.f() { // from class: com.baseflow.permissionhandler.m
                @Override // com.baseflow.permissionhandler.r.f
                public final void a(Map map) {
                    k.d.this.a(map);
                }
            }, new o() { // from class: com.baseflow.permissionhandler.b
                @Override // com.baseflow.permissionhandler.o
                public final void a(String str2, String str3) {
                    k.d.this.a(str2, str3, null);
                }
            });
            return;
        }
        if (c2 == 3) {
            int parseInt3 = Integer.parseInt(jVar.f18224b.toString());
            r rVar3 = this.f3382g;
            Activity activity3 = this.f3384i;
            dVar.getClass();
            rVar3.a(parseInt3, activity3, new r.g() { // from class: com.baseflow.permissionhandler.h
                @Override // com.baseflow.permissionhandler.r.g
                public final void a(boolean z) {
                    k.d.this.a(Boolean.valueOf(z));
                }
            }, new o() { // from class: com.baseflow.permissionhandler.e
                @Override // com.baseflow.permissionhandler.o
                public final void a(String str2, String str3) {
                    k.d.this.a(str2, str3, null);
                }
            });
            return;
        }
        if (c2 != 4) {
            dVar.a();
            return;
        }
        n nVar = this.f3381f;
        Context context3 = this.f3380e;
        dVar.getClass();
        nVar.a(context3, new n.a() { // from class: com.baseflow.permissionhandler.g
            @Override // com.baseflow.permissionhandler.n.a
            public final void a(boolean z) {
                k.d.this.a(Boolean.valueOf(z));
            }
        }, new o() { // from class: com.baseflow.permissionhandler.a
            @Override // com.baseflow.permissionhandler.o
            public final void a(String str2, String str3) {
                k.d.this.a(str2, str3, null);
            }
        });
    }

    public void a(@Nullable r.a aVar) {
        this.f3385j = aVar;
    }

    public void a(@Nullable r.d dVar) {
        this.f3386k = dVar;
    }
}
