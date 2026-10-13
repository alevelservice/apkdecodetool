package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import g.a.c.a.k;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: PlatformChannel.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.k f19142a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private InterfaceC0238h f19143b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    @VisibleForTesting
    final k.c f19144c = new a();

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    class a implements k.c {
        a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0107 A[Catch: JSONException -> 0x01f1, TryCatch #0 {JSONException -> 0x01f1, blocks: (B:7:0x002c, B:8:0x0030, B:12:0x00ab, B:14:0x00b0, B:16:0x00c9, B:18:0x00dd, B:28:0x00e1, B:21:0x00fb, B:23:0x0107, B:25:0x0114, B:30:0x00e6, B:31:0x0119, B:33:0x0149, B:43:0x01b9, B:36:0x01d5, B:75:0x0140, B:68:0x0170, B:54:0x0190, B:61:0x01b1, B:47:0x01cd, B:40:0x01e9, B:77:0x0035, B:80:0x0040, B:83:0x004a, B:86:0x0055, B:89:0x005f, B:92:0x006a, B:95:0x0074, B:98:0x007e, B:101:0x0088, B:104:0x0092, B:107:0x009d, B:50:0x0179), top: B:6:0x002c, inners: #1, #5, #6, #7 }] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0114 A[Catch: JSONException -> 0x01f1, TryCatch #0 {JSONException -> 0x01f1, blocks: (B:7:0x002c, B:8:0x0030, B:12:0x00ab, B:14:0x00b0, B:16:0x00c9, B:18:0x00dd, B:28:0x00e1, B:21:0x00fb, B:23:0x0107, B:25:0x0114, B:30:0x00e6, B:31:0x0119, B:33:0x0149, B:43:0x01b9, B:36:0x01d5, B:75:0x0140, B:68:0x0170, B:54:0x0190, B:61:0x01b1, B:47:0x01cd, B:40:0x01e9, B:77:0x0035, B:80:0x0040, B:83:0x004a, B:86:0x0055, B:89:0x005f, B:92:0x006a, B:95:0x0074, B:98:0x007e, B:101:0x0088, B:104:0x0092, B:107:0x009d, B:50:0x0179), top: B:6:0x002c, inners: #1, #5, #6, #7 }] */
        @Override // g.a.c.a.k.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMethodCall(@androidx.annotation.NonNull g.a.c.a.j r6, @androidx.annotation.NonNull g.a.c.a.k.d r7) {
            /*
                Method dump skipped, instructions count: 596
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.i.h.a.onMethodCall(g.a.c.a.j, g.a.c.a.k$d):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19146a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19147b = new int[k.values().length];

        static {
            try {
                f19147b[k.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19147b[k.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f19146a = new int[f.values().length];
            try {
                f19146a[f.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19146a[f.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19146a[f.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19146a[f.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f19148a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final String f19149b;

        public c(int i2, @NonNull String str) {
            this.f19148a = i2;
            this.f19149b = str;
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum d {
        LIGHT("Brightness.light"),
        DARK("Brightness.dark");


        @NonNull
        private String encodedName;

        d(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        static d fromValue(@NonNull String str) {
            for (d dVar : values()) {
                if (dVar.encodedName.equals(str)) {
                    return dVar;
                }
            }
            throw new NoSuchFieldException("No such Brightness: " + str);
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum e {
        PLAIN_TEXT("text/plain");


        @NonNull
        private String encodedName;

        e(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        static e fromValue(@NonNull String str) {
            for (e eVar : values()) {
                if (eVar.encodedName.equals(str)) {
                    return eVar;
                }
            }
            throw new NoSuchFieldException("No such ClipboardContentFormat: " + str);
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum f {
        PORTRAIT_UP("DeviceOrientation.portraitUp"),
        PORTRAIT_DOWN("DeviceOrientation.portraitDown"),
        LANDSCAPE_LEFT("DeviceOrientation.landscapeLeft"),
        LANDSCAPE_RIGHT("DeviceOrientation.landscapeRight");


        @NonNull
        private String encodedName;

        f(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        static f fromValue(@NonNull String str) {
            for (f fVar : values()) {
                if (fVar.encodedName.equals(str)) {
                    return fVar;
                }
            }
            throw new NoSuchFieldException("No such DeviceOrientation: " + str);
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum g {
        STANDARD(null),
        LIGHT_IMPACT("HapticFeedbackType.lightImpact"),
        MEDIUM_IMPACT("HapticFeedbackType.mediumImpact"),
        HEAVY_IMPACT("HapticFeedbackType.heavyImpact"),
        SELECTION_CLICK("HapticFeedbackType.selectionClick");


        @Nullable
        private final String encodedName;

        g(@Nullable String str) {
            this.encodedName = str;
        }

        @NonNull
        static g fromValue(@Nullable String str) {
            String str2;
            for (g gVar : values()) {
                if ((gVar.encodedName == null && str == null) || ((str2 = gVar.encodedName) != null && str2.equals(str))) {
                    return gVar;
                }
            }
            throw new NoSuchFieldException("No such HapticFeedbackType: " + str);
        }
    }

    /* compiled from: PlatformChannel.java */
    /* renamed from: io.flutter.embedding.engine.i.h$h, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0238h {
        @Nullable
        CharSequence a(@Nullable e eVar);

        void a();

        void a(int i2);

        void a(@NonNull c cVar);

        void a(@NonNull g gVar);

        void a(@NonNull i iVar);

        void a(@NonNull j jVar);

        void a(@NonNull String str);

        void a(@NonNull List<k> list);

        void b();

        boolean c();
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum i {
        CLICK("SystemSoundType.click"),
        ALERT("SystemSoundType.alert");


        @NonNull
        private final String encodedName;

        i(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        static i fromValue(@NonNull String str) {
            for (i iVar : values()) {
                if (iVar.encodedName.equals(str)) {
                    return iVar;
                }
            }
            throw new NoSuchFieldException("No such SoundType: " + str);
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        public final Integer f19155a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final d f19156b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public final Integer f19157c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        public final d f19158d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        public final Integer f19159e;

        public j(@Nullable Integer num, @Nullable d dVar, @Nullable Integer num2, @Nullable d dVar2, @Nullable Integer num3) {
            this.f19155a = num;
            this.f19156b = dVar;
            this.f19157c = num2;
            this.f19158d = dVar2;
            this.f19159e = num3;
        }
    }

    /* compiled from: PlatformChannel.java */
    /* loaded from: classes2.dex */
    public enum k {
        TOP_OVERLAYS("SystemUiOverlay.top"),
        BOTTOM_OVERLAYS("SystemUiOverlay.bottom");


        @NonNull
        private String encodedName;

        k(@NonNull String str) {
            this.encodedName = str;
        }

        @NonNull
        static k fromValue(@NonNull String str) {
            for (k kVar : values()) {
                if (kVar.encodedName.equals(str)) {
                    return kVar;
                }
            }
            throw new NoSuchFieldException("No such SystemUiOverlay: " + str);
        }
    }

    public h(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19142a = new g.a.c.a.k(aVar, "flutter/platform", g.a.c.a.g.f18222a);
        this.f19142a.a(this.f19144c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public List<k> b(@NonNull JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            int i3 = b.f19147b[k.fromValue(jSONArray.getString(i2)).ordinal()];
            if (i3 == 1) {
                arrayList.add(k.TOP_OVERLAYS);
            } else if (i3 == 2) {
                arrayList.add(k.BOTTOM_OVERLAYS);
            }
        }
        return arrayList;
    }

    public void a(@Nullable InterfaceC0238h interfaceC0238h) {
        this.f19143b = interfaceC0238h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(@androidx.annotation.NonNull org.json.JSONArray r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            r2 = 0
            r3 = 0
        L4:
            int r4 = r10.length()
            r5 = 4
            r6 = 2
            r7 = 1
            if (r1 >= r4) goto L38
            java.lang.String r4 = r10.getString(r1)
            io.flutter.embedding.engine.i.h$f r4 = io.flutter.embedding.engine.i.h.f.fromValue(r4)
            int[] r8 = io.flutter.embedding.engine.i.h.b.f19146a
            int r4 = r4.ordinal()
            r4 = r8[r4]
            if (r4 == r7) goto L30
            if (r4 == r6) goto L2d
            r6 = 3
            if (r4 == r6) goto L2a
            if (r4 == r5) goto L27
            goto L32
        L27:
            r2 = r2 | 8
            goto L32
        L2a:
            r2 = r2 | 2
            goto L32
        L2d:
            r2 = r2 | 4
            goto L32
        L30:
            r2 = r2 | 1
        L32:
            if (r3 != 0) goto L35
            r3 = r2
        L35:
            int r1 = r1 + 1
            goto L4
        L38:
            r10 = 9
            r1 = 8
            switch(r2) {
                case 0: goto L5a;
                case 1: goto L59;
                case 2: goto L58;
                case 3: goto L4b;
                case 4: goto L4a;
                case 5: goto L48;
                case 6: goto L4b;
                case 7: goto L4b;
                case 8: goto L47;
                case 9: goto L4b;
                case 10: goto L44;
                case 11: goto L43;
                case 12: goto L4b;
                case 13: goto L4b;
                case 14: goto L4b;
                case 15: goto L40;
                default: goto L3f;
            }
        L3f:
            goto L5c
        L40:
            r10 = 13
            return r10
        L43:
            return r6
        L44:
            r10 = 11
            return r10
        L47:
            return r1
        L48:
            r10 = 12
        L4a:
            return r10
        L4b:
            if (r3 == r7) goto L57
            if (r3 == r6) goto L56
            if (r3 == r5) goto L55
            if (r3 == r1) goto L54
            goto L5c
        L54:
            return r1
        L55:
            return r10
        L56:
            return r0
        L57:
            return r7
        L58:
            return r0
        L59:
            return r7
        L5a:
            r10 = -1
            return r10
        L5c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.i.h.a(org.json.JSONArray):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public c a(@NonNull JSONObject jSONObject) {
        int i2 = jSONObject.getInt("primaryColor");
        if (i2 != 0) {
            i2 |= -16777216;
        }
        return new c(i2, jSONObject.getString("label"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public j b(@NonNull JSONObject jSONObject) {
        d fromValue = !jSONObject.isNull("systemNavigationBarIconBrightness") ? d.fromValue(jSONObject.getString("systemNavigationBarIconBrightness")) : null;
        Integer valueOf = !jSONObject.isNull("systemNavigationBarColor") ? Integer.valueOf(jSONObject.getInt("systemNavigationBarColor")) : null;
        return new j(!jSONObject.isNull("statusBarColor") ? Integer.valueOf(jSONObject.getInt("statusBarColor")) : null, !jSONObject.isNull("statusBarIconBrightness") ? d.fromValue(jSONObject.getString("statusBarIconBrightness")) : null, valueOf, fromValue, jSONObject.isNull("systemNavigationBarDividerColor") ? null : Integer.valueOf(jSONObject.getInt("systemNavigationBarDividerColor")));
    }
}
