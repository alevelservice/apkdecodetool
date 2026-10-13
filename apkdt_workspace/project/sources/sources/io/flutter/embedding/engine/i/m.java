package io.flutter.embedding.engine.i;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TextInputChannel.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.k f19202a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private f f19203b;

    /* renamed from: c, reason: collision with root package name */
    private final k.c f19204c = new a();

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    class a implements k.c {
        a() {
        }

        @Override // g.a.c.a.k.c
        public void onMethodCall(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            Bundle bundle;
            if (m.this.f19203b == null) {
                return;
            }
            String str = jVar.f18223a;
            Object obj = jVar.f18224b;
            g.a.b.c("TextInputChannel", "Received '" + str + "' message.");
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1779068172:
                    if (str.equals("TextInput.setPlatformViewClient")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1015421462:
                    if (str.equals("TextInput.setEditingState")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -37561188:
                    if (str.equals("TextInput.setClient")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 270476819:
                    if (str.equals("TextInput.hide")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 270803918:
                    if (str.equals("TextInput.show")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 649192816:
                    if (str.equals("TextInput.sendAppPrivateCommand")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 1204752139:
                    if (str.equals("TextInput.setEditableSizeAndTransform")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 1727570905:
                    if (str.equals("TextInput.finishAutofillContext")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 1904427655:
                    if (str.equals("TextInput.clearClient")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 2113369584:
                    if (str.equals("TextInput.requestAutofill")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    m.this.f19203b.show();
                    dVar.a(null);
                    return;
                case 1:
                    m.this.f19203b.a();
                    dVar.a(null);
                    return;
                case 2:
                    try {
                        JSONArray jSONArray = (JSONArray) obj;
                        m.this.f19203b.a(jSONArray.getInt(0), b.a(jSONArray.getJSONObject(1)));
                        dVar.a(null);
                        return;
                    } catch (NoSuchFieldException | JSONException e2) {
                        dVar.a(HummerConstants.HUMMER_ERROR, e2.getMessage(), null);
                        return;
                    }
                case 3:
                    m.this.f19203b.b();
                    dVar.a(null);
                    return;
                case 4:
                    m.this.f19203b.a(((Integer) obj).intValue());
                    return;
                case 5:
                    try {
                        m.this.f19203b.a(e.a((JSONObject) obj));
                        dVar.a(null);
                        return;
                    } catch (JSONException e3) {
                        dVar.a(HummerConstants.HUMMER_ERROR, e3.getMessage(), null);
                        return;
                    }
                case 6:
                    try {
                        JSONObject jSONObject = (JSONObject) obj;
                        double d2 = jSONObject.getDouble("width");
                        double d3 = jSONObject.getDouble("height");
                        JSONArray jSONArray2 = jSONObject.getJSONArray("transform");
                        double[] dArr = new double[16];
                        for (int i2 = 0; i2 < 16; i2++) {
                            dArr[i2] = jSONArray2.getDouble(i2);
                        }
                        m.this.f19203b.a(d2, d3, dArr);
                        return;
                    } catch (JSONException e4) {
                        dVar.a(HummerConstants.HUMMER_ERROR, e4.getMessage(), null);
                        return;
                    }
                case 7:
                    m.this.f19203b.c();
                    dVar.a(null);
                    return;
                case '\b':
                    try {
                        JSONObject jSONObject2 = (JSONObject) obj;
                        String string = jSONObject2.getString("action");
                        String string2 = jSONObject2.getString(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
                        if (string2 == null || string2.isEmpty()) {
                            bundle = null;
                        } else {
                            bundle = new Bundle();
                            bundle.putString(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, string2);
                        }
                        m.this.f19203b.a(string, bundle);
                        dVar.a(null);
                        return;
                    } catch (JSONException e5) {
                        dVar.a(HummerConstants.HUMMER_ERROR, e5.getMessage(), null);
                        return;
                    }
                case '\t':
                    m.this.f19203b.a(((Boolean) obj).booleanValue());
                    dVar.a(null);
                    return;
                default:
                    dVar.a();
                    return;
            }
        }
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final g f19218a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f19219b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19220c;

        public c(@NonNull g gVar, boolean z, boolean z2) {
            this.f19218a = gVar;
            this.f19219b = z;
            this.f19220c = z2;
        }

        @NonNull
        public static c a(@NonNull JSONObject jSONObject) {
            return new c(g.fromValue(jSONObject.getString("name")), jSONObject.optBoolean("signed", false), jSONObject.optBoolean("decimal", false));
        }
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public enum d {
        CHARACTERS("TextCapitalization.characters"),
        WORDS("TextCapitalization.words"),
        SENTENCES("TextCapitalization.sentences"),
        NONE("TextCapitalization.none");


        @NonNull
        private final String encodedName;

        d(@NonNull String str) {
            this.encodedName = str;
        }

        static d fromValue(@NonNull String str) {
            for (d dVar : values()) {
                if (dVar.encodedName.equals(str)) {
                    return dVar;
                }
            }
            throw new NoSuchFieldException("No such TextCapitalization: " + str);
        }
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final String f19222a;

        /* renamed from: b, reason: collision with root package name */
        public final int f19223b;

        /* renamed from: c, reason: collision with root package name */
        public final int f19224c;

        public e(@NonNull String str, int i2, int i3) {
            this.f19222a = str;
            this.f19223b = i2;
            this.f19224c = i3;
        }

        public static e a(@NonNull JSONObject jSONObject) {
            return new e(jSONObject.getString("text"), jSONObject.getInt("selectionBase"), jSONObject.getInt("selectionExtent"));
        }
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public interface f {
        void a();

        void a(double d2, double d3, double[] dArr);

        void a(int i2);

        void a(int i2, @NonNull b bVar);

        void a(@NonNull e eVar);

        void a(String str, Bundle bundle);

        void a(boolean z);

        void b();

        void c();

        void show();
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public enum g {
        TEXT("TextInputType.text"),
        DATETIME("TextInputType.datetime"),
        NAME("TextInputType.name"),
        POSTAL_ADDRESS("TextInputType.address"),
        NUMBER("TextInputType.number"),
        PHONE("TextInputType.phone"),
        MULTILINE("TextInputType.multiline"),
        EMAIL_ADDRESS("TextInputType.emailAddress"),
        URL("TextInputType.url"),
        VISIBLE_PASSWORD("TextInputType.visiblePassword");


        @NonNull
        private final String encodedName;

        g(@NonNull String str) {
            this.encodedName = str;
        }

        static g fromValue(@NonNull String str) {
            for (g gVar : values()) {
                if (gVar.encodedName.equals(str)) {
                    return gVar;
                }
            }
            throw new NoSuchFieldException("No such TextInputType: " + str);
        }
    }

    public m(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19202a = new g.a.c.a.k(aVar, "flutter/textinput", g.a.c.a.g.f18222a);
        this.f19202a.a(this.f19204c);
    }

    public void b(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'go' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.go"));
    }

    public void c(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'newline' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.newline"));
    }

    public void d(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'next' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.next"));
    }

    public void e(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'previous' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.previous"));
    }

    public void f(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'search' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.search"));
    }

    public void g(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'send' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.send"));
    }

    public void h(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'unspecified' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.unspecified"));
    }

    public void a() {
        this.f19202a.a("TextInputClient.requestExistingInputState", null);
    }

    private static HashMap<Object, Object> a(String str, int i2, int i3, int i4, int i5) {
        HashMap<Object, Object> hashMap = new HashMap<>();
        hashMap.put("text", str);
        hashMap.put("selectionBase", Integer.valueOf(i2));
        hashMap.put("selectionExtent", Integer.valueOf(i3));
        hashMap.put("composingBase", Integer.valueOf(i4));
        hashMap.put("composingExtent", Integer.valueOf(i5));
        return hashMap;
    }

    /* compiled from: TextInputChannel.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f19206a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f19207b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19208c;

        /* renamed from: d, reason: collision with root package name */
        @NonNull
        public final d f19209d;

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        public final c f19210e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public final Integer f19211f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        public final String f19212g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        public final a f19213h;

        /* renamed from: i, reason: collision with root package name */
        @Nullable
        public final b[] f19214i;

        public b(boolean z, boolean z2, boolean z3, @NonNull d dVar, @NonNull c cVar, @Nullable Integer num, @Nullable String str, @Nullable a aVar, @Nullable b[] bVarArr) {
            this.f19206a = z;
            this.f19207b = z2;
            this.f19208c = z3;
            this.f19209d = dVar;
            this.f19210e = cVar;
            this.f19211f = num;
            this.f19212g = str;
            this.f19213h = aVar;
            this.f19214i = bVarArr;
        }

        public static b a(@NonNull JSONObject jSONObject) {
            b[] bVarArr;
            String string = jSONObject.getString("inputAction");
            if (string != null) {
                if (jSONObject.isNull("fields")) {
                    bVarArr = null;
                } else {
                    JSONArray jSONArray = jSONObject.getJSONArray("fields");
                    b[] bVarArr2 = new b[jSONArray.length()];
                    for (int i2 = 0; i2 < bVarArr2.length; i2++) {
                        bVarArr2[i2] = a(jSONArray.getJSONObject(i2));
                    }
                    bVarArr = bVarArr2;
                }
                return new b(jSONObject.optBoolean("obscureText"), jSONObject.optBoolean("autocorrect", true), jSONObject.optBoolean("enableSuggestions"), d.fromValue(jSONObject.getString("textCapitalization")), c.a(jSONObject.getJSONObject("inputType")), a(string), jSONObject.isNull("actionLabel") ? null : jSONObject.getString("actionLabel"), jSONObject.isNull("autofill") ? null : a.a(jSONObject.getJSONObject("autofill")), bVarArr);
            }
            throw new JSONException("Configuration JSON missing 'inputAction' property.");
        }

        /* compiled from: TextInputChannel.java */
        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public final String f19215a;

            /* renamed from: b, reason: collision with root package name */
            public final String[] f19216b;

            /* renamed from: c, reason: collision with root package name */
            public final e f19217c;

            public a(@NonNull String str, @NonNull String[] strArr, @NonNull e eVar) {
                this.f19215a = str;
                this.f19216b = strArr;
                this.f19217c = eVar;
            }

            public static a a(@NonNull JSONObject jSONObject) {
                String string = jSONObject.getString("uniqueIdentifier");
                JSONArray jSONArray = jSONObject.getJSONArray("hints");
                JSONObject jSONObject2 = jSONObject.getJSONObject("editingValue");
                String[] strArr = new String[jSONArray.length()];
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    strArr[i2] = a(jSONArray.getString(i2));
                }
                return new a(string, strArr, e.a(jSONObject2));
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x0067, code lost:
            
                if (r16.equals("password") != false) goto L117;
             */
            @androidx.annotation.NonNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private static java.lang.String a(@androidx.annotation.NonNull java.lang.String r16) {
                /*
                    Method dump skipped, instructions count: 740
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.i.m.b.a.a(java.lang.String):java.lang.String");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @NonNull
        private static Integer a(@NonNull String str) {
            char c2;
            switch (str.hashCode()) {
                case -810971940:
                    if (str.equals("TextInputAction.unspecified")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -737377923:
                    if (str.equals("TextInputAction.done")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -737089298:
                    if (str.equals("TextInputAction.next")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -737080013:
                    if (str.equals("TextInputAction.none")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -736940669:
                    if (str.equals("TextInputAction.send")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 469250275:
                    if (str.equals("TextInputAction.search")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1241689507:
                    if (str.equals("TextInputAction.go")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1539450297:
                    if (str.equals("TextInputAction.newline")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2110497650:
                    if (str.equals("TextInputAction.previous")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                    return 1;
                case 2:
                    return 0;
                case 3:
                    return 6;
                case 4:
                    return 2;
                case 5:
                    return 3;
                case 6:
                    return 4;
                case 7:
                    return 5;
                case '\b':
                    return 7;
                default:
                    return 0;
            }
        }
    }

    public void a(int i2, String str, int i3, int i4, int i5, int i6) {
        g.a.b.c("TextInputChannel", "Sending message to update editing state: \nText: " + str + "\nSelection start: " + i3 + "\nSelection end: " + i4 + "\nComposing start: " + i5 + "\nComposing end: " + i6);
        this.f19202a.a("TextInputClient.updateEditingState", Arrays.asList(Integer.valueOf(i2), a(str, i3, i4, i5, i6)));
    }

    public void a(int i2, HashMap<String, e> hashMap) {
        g.a.b.c("TextInputChannel", "Sending message to update editing state for " + String.valueOf(hashMap.size()) + " field(s).");
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<String, e> entry : hashMap.entrySet()) {
            e value = entry.getValue();
            hashMap2.put(entry.getKey(), a(value.f19222a, value.f19223b, value.f19224c, -1, -1));
        }
        this.f19202a.a("TextInputClient.updateEditingStateWithTag", Arrays.asList(Integer.valueOf(i2), hashMap2));
    }

    public void a(int i2) {
        g.a.b.c("TextInputChannel", "Sending 'done' message.");
        this.f19202a.a("TextInputClient.performAction", Arrays.asList(Integer.valueOf(i2), "TextInputAction.done"));
    }

    public void a(int i2, String str, Bundle bundle) {
        HashMap hashMap = new HashMap();
        hashMap.put("action", str);
        if (bundle != null) {
            HashMap hashMap2 = new HashMap();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj instanceof byte[]) {
                    hashMap2.put(str2, bundle.getByteArray(str2));
                } else if (obj instanceof Byte) {
                    hashMap2.put(str2, Byte.valueOf(bundle.getByte(str2)));
                } else if (obj instanceof char[]) {
                    hashMap2.put(str2, bundle.getCharArray(str2));
                } else if (obj instanceof Character) {
                    hashMap2.put(str2, Character.valueOf(bundle.getChar(str2)));
                } else if (obj instanceof CharSequence[]) {
                    hashMap2.put(str2, bundle.getCharSequenceArray(str2));
                } else if (obj instanceof CharSequence) {
                    hashMap2.put(str2, bundle.getCharSequence(str2));
                } else if (obj instanceof float[]) {
                    hashMap2.put(str2, bundle.getFloatArray(str2));
                } else if (obj instanceof Float) {
                    hashMap2.put(str2, Float.valueOf(bundle.getFloat(str2)));
                }
            }
            hashMap.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, hashMap2);
        }
        this.f19202a.a("TextInputClient.performPrivateCommand", Arrays.asList(Integer.valueOf(i2), hashMap));
    }

    public void a(@Nullable f fVar) {
        this.f19203b = fVar;
    }
}
