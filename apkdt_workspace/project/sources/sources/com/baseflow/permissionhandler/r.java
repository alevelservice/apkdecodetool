package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import g.a.c.a.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PermissionManager.java */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3389a = false;

    /* compiled from: PermissionManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface a {
        void a(m.a aVar);
    }

    /* compiled from: PermissionManager.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class b implements m.a {

        /* renamed from: e, reason: collision with root package name */
        boolean f3390e = false;

        /* renamed from: f, reason: collision with root package name */
        final f f3391f;

        @VisibleForTesting
        b(f fVar) {
            this.f3391f = fVar;
        }

        @Override // g.a.c.a.m.a
        public boolean onActivityResult(int i2, int i3, Intent intent) {
            if (this.f3390e || i2 != 5672353) {
                return false;
            }
            this.f3390e = true;
            int i4 = i3 == -1 ? 1 : 0;
            HashMap hashMap = new HashMap();
            hashMap.put(15, Integer.valueOf(i4));
            this.f3391f.a(hashMap);
            return true;
        }
    }

    /* compiled from: PermissionManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface c {
        void a(int i2);
    }

    /* compiled from: PermissionManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface d {
        void a(m.e eVar);
    }

    /* compiled from: PermissionManager.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class e implements m.e {

        /* renamed from: e, reason: collision with root package name */
        boolean f3392e = false;

        /* renamed from: f, reason: collision with root package name */
        final Activity f3393f;

        /* renamed from: g, reason: collision with root package name */
        final f f3394g;

        /* renamed from: h, reason: collision with root package name */
        final Map<Integer, Integer> f3395h;

        @VisibleForTesting
        e(Activity activity, Map<Integer, Integer> map, f fVar) {
            this.f3393f = activity;
            this.f3394g = fVar;
            this.f3395h = map;
        }

        @Override // g.a.c.a.m.e
        public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
            if (this.f3392e || i2 != 24) {
                return false;
            }
            this.f3392e = true;
            for (int i3 = 0; i3 < strArr.length; i3++) {
                String str = strArr[i3];
                int a2 = s.a(str);
                if (a2 != 19) {
                    int i4 = iArr[i3];
                    if (a2 == 7) {
                        if (!this.f3395h.containsKey(7)) {
                            this.f3395h.put(7, Integer.valueOf(s.a(this.f3393f, str, i4)));
                        }
                        if (!this.f3395h.containsKey(13)) {
                            this.f3395h.put(13, Integer.valueOf(s.a(this.f3393f, str, i4)));
                        }
                    } else if (a2 == 4) {
                        int a3 = s.a(this.f3393f, str, i4);
                        if (!this.f3395h.containsKey(4)) {
                            this.f3395h.put(4, Integer.valueOf(a3));
                        }
                    } else if (a2 == 3) {
                        int a4 = s.a(this.f3393f, str, i4);
                        if (Build.VERSION.SDK_INT < 29 && !this.f3395h.containsKey(4)) {
                            this.f3395h.put(4, Integer.valueOf(a4));
                        }
                        if (!this.f3395h.containsKey(5)) {
                            this.f3395h.put(5, Integer.valueOf(a4));
                        }
                        this.f3395h.put(Integer.valueOf(a2), Integer.valueOf(a4));
                    } else if (!this.f3395h.containsKey(Integer.valueOf(a2))) {
                        this.f3395h.put(Integer.valueOf(a2), Integer.valueOf(s.a(this.f3393f, str, i4)));
                    }
                    s.a(this.f3393f, a2);
                }
            }
            this.f3394g.a(this.f3395h);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PermissionManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface f {
        void a(Map<Integer, Integer> map);
    }

    /* compiled from: PermissionManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface g {
        void a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, Context context, Activity activity, c cVar, o oVar) {
        cVar.a(a(i2, context, activity));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<Integer> list, Activity activity, a aVar, d dVar, final f fVar, o oVar) {
        if (this.f3389a) {
            oVar.a("PermissionHandler.PermissionManager", "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time).");
            return;
        }
        if (activity == null) {
            oVar.a("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Integer num : list) {
            if (a(num.intValue(), activity, activity) == 1) {
                if (!hashMap.containsKey(num)) {
                    hashMap.put(num, 1);
                }
            } else {
                List<String> a2 = s.a((Context) activity, num.intValue());
                if (a2 != null && !a2.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= 23 && num.intValue() == 15) {
                        aVar.a(new b(fVar));
                        String packageName = activity.getPackageName();
                        Intent intent = new Intent();
                        intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                        intent.setData(Uri.parse("package:" + packageName));
                        activity.startActivityForResult(intent, 5672353);
                    } else {
                        arrayList.addAll(a2);
                    }
                } else if (!hashMap.containsKey(num)) {
                    hashMap.put(num, 3);
                }
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        if (arrayList.size() > 0) {
            dVar.a(new e(activity, hashMap, new f() { // from class: com.baseflow.permissionhandler.f
                @Override // com.baseflow.permissionhandler.r.f
                public final void a(Map map) {
                    r.this.a(fVar, map);
                }
            }));
            this.f3389a = true;
            androidx.core.app.a.a(activity, strArr, 24);
        } else {
            this.f3389a = false;
            if (hashMap.size() > 0) {
                fVar.a(hashMap);
            }
        }
    }

    public /* synthetic */ void a(f fVar, Map map) {
        this.f3389a = false;
        fVar.a(map);
    }

    private int a(int i2, Context context, @Nullable Activity activity) {
        if (i2 == 16) {
            return a(context);
        }
        List<String> a2 = s.a(context, i2);
        if (a2 == null) {
            String str = "No android specific permissions needed for: " + i2;
            return 1;
        }
        if (a2.size() == 0) {
            String str2 = "No permissions found in manifest for: " + i2;
            return 3;
        }
        boolean z = context.getApplicationInfo().targetSdkVersion >= 23;
        for (String str3 : a2) {
            if (z) {
                if (i2 == 15) {
                    String packageName = context.getPackageName();
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    if (Build.VERSION.SDK_INT >= 23) {
                        return (powerManager == null || !powerManager.isIgnoringBatteryOptimizations(packageName)) ? 0 : 1;
                    }
                    return 2;
                }
                int a3 = androidx.core.content.a.a(context, str3);
                if (a3 == -1) {
                    if (s.a(context, str3)) {
                        return (Build.VERSION.SDK_INT < 23 || !s.a(activity, str3)) ? 0 : 4;
                    }
                    return 3;
                }
                if (a3 != 0) {
                    return 0;
                }
            }
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, Activity activity, g gVar, o oVar) {
        if (activity == null) {
            oVar.a("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
            return;
        }
        List<String> a2 = s.a((Context) activity, i2);
        if (a2 == null) {
            String str = "No android specific permissions needed for: " + i2;
            gVar.a(false);
            return;
        }
        if (a2.isEmpty()) {
            String str2 = "No permissions found in manifest for: " + i2 + " no need to show request rationale";
            gVar.a(false);
            return;
        }
        gVar.a(androidx.core.app.a.a(activity, a2.get(0)));
    }

    private int a(Context context) {
        return androidx.core.app.j.a(context).a() ? 1 : 0;
    }
}
