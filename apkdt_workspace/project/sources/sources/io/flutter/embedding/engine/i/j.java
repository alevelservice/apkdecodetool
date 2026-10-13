package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.k;
import g.a.c.a.o;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RestorationChannel.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19187a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f19188b;

    /* renamed from: c, reason: collision with root package name */
    private g.a.c.a.k f19189c;

    /* renamed from: d, reason: collision with root package name */
    private k.d f19190d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f19191e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f19192f;

    /* renamed from: g, reason: collision with root package name */
    private final k.c f19193g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RestorationChannel.java */
    /* loaded from: classes2.dex */
    public class a implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ byte[] f19194a;

        a(byte[] bArr) {
            this.f19194a = bArr;
        }

        @Override // g.a.c.a.k.d
        public void a() {
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            j.this.f19188b = this.f19194a;
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            g.a.b.b("RestorationChannel", "Error " + str + " while sending restoration data to framework: " + str2);
        }
    }

    /* compiled from: RestorationChannel.java */
    /* loaded from: classes2.dex */
    class b implements k.c {
        b() {
        }

        @Override // g.a.c.a.k.c
        public void onMethodCall(@NonNull g.a.c.a.j jVar, @NonNull k.d dVar) {
            char c2;
            String str = jVar.f18223a;
            Object obj = jVar.f18224b;
            int hashCode = str.hashCode();
            if (hashCode != 102230) {
                if (hashCode == 111375 && str.equals("put")) {
                    c2 = 0;
                }
                c2 = 65535;
            } else {
                if (str.equals("get")) {
                    c2 = 1;
                }
                c2 = 65535;
            }
            if (c2 == 0) {
                j.this.f19188b = (byte[]) obj;
                dVar.a(null);
            } else {
                if (c2 == 1) {
                    j.this.f19192f = true;
                    if (!j.this.f19191e) {
                        j jVar2 = j.this;
                        if (jVar2.f19187a) {
                            jVar2.f19190d = dVar;
                            return;
                        }
                    }
                    j jVar3 = j.this;
                    dVar.a(jVar3.b(jVar3.f19188b));
                    return;
                }
                dVar.a();
            }
        }
    }

    public j(@NonNull io.flutter.embedding.engine.e.a aVar, @NonNull boolean z) {
        this(new g.a.c.a.k(aVar, "flutter/restoration", o.f18237b), z);
    }

    j(g.a.c.a.k kVar, @NonNull boolean z) {
        this.f19191e = false;
        this.f19192f = false;
        this.f19193g = new b();
        this.f19189c = kVar;
        this.f19187a = z;
        kVar.a(this.f19193g);
    }

    public byte[] b() {
        return this.f19188b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> b(byte[] bArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("enabled", true);
        hashMap.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, bArr);
        return hashMap;
    }

    public void a(byte[] bArr) {
        this.f19191e = true;
        k.d dVar = this.f19190d;
        if (dVar != null) {
            dVar.a(b(bArr));
            this.f19190d = null;
            this.f19188b = bArr;
        } else if (this.f19192f) {
            this.f19189c.a("push", b(bArr), new a(bArr));
        } else {
            this.f19188b = bArr;
        }
    }

    public void a() {
        this.f19188b = null;
    }
}
