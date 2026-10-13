package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g.a.c.a.k;
import g.a.c.a.o;

/* compiled from: MouseCursorChannel.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.k f19137a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private b f19138b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final k.c f19139c = new a();

    /* compiled from: MouseCursorChannel.java */
    /* loaded from: classes2.dex */
    class a implements k.c {
        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
        
            return;
         */
        @Override // g.a.c.a.k.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMethodCall(@androidx.annotation.NonNull g.a.c.a.j r7, @androidx.annotation.NonNull g.a.c.a.k.d r8) {
            /*
                r6 = this;
                java.lang.String r0 = "error"
                io.flutter.embedding.engine.i.f r1 = io.flutter.embedding.engine.i.f.this
                io.flutter.embedding.engine.i.f$b r1 = io.flutter.embedding.engine.i.f.a(r1)
                if (r1 != 0) goto Lb
                return
            Lb:
                java.lang.String r1 = r7.f18223a
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Received '"
                r2.append(r3)
                r2.append(r1)
                java.lang.String r3 = "' message."
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                java.lang.String r3 = "MouseCursorChannel"
                g.a.b.c(r3, r2)
                r2 = -1
                r3 = 0
                int r4 = r1.hashCode()     // Catch: java.lang.Exception -> L78
                r5 = -1307105544(0xffffffffb21726f8, float:-8.798217E-9)
                if (r4 == r5) goto L34
                goto L3d
            L34:
                java.lang.String r4 = "activateSystemCursor"
                boolean r1 = r1.equals(r4)     // Catch: java.lang.Exception -> L78
                if (r1 == 0) goto L3d
                r2 = 0
            L3d:
                if (r2 == 0) goto L40
                goto L91
            L40:
                java.lang.Object r7 = r7.f18224b     // Catch: java.lang.Exception -> L78
                java.util.HashMap r7 = (java.util.HashMap) r7     // Catch: java.lang.Exception -> L78
                java.lang.String r1 = "kind"
                java.lang.Object r7 = r7.get(r1)     // Catch: java.lang.Exception -> L78
                java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L78
                io.flutter.embedding.engine.i.f r1 = io.flutter.embedding.engine.i.f.this     // Catch: java.lang.Exception -> L5e
                io.flutter.embedding.engine.i.f$b r1 = io.flutter.embedding.engine.i.f.a(r1)     // Catch: java.lang.Exception -> L5e
                r1.a(r7)     // Catch: java.lang.Exception -> L5e
                r7 = 1
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.Exception -> L78
                r8.a(r7)     // Catch: java.lang.Exception -> L78
                goto L91
            L5e:
                r7 = move-exception
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L78
                r1.<init>()     // Catch: java.lang.Exception -> L78
                java.lang.String r2 = "Error when setting cursors: "
                r1.append(r2)     // Catch: java.lang.Exception -> L78
                java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> L78
                r1.append(r7)     // Catch: java.lang.Exception -> L78
                java.lang.String r7 = r1.toString()     // Catch: java.lang.Exception -> L78
                r8.a(r0, r7, r3)     // Catch: java.lang.Exception -> L78
                goto L91
            L78:
                r7 = move-exception
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Unhandled error: "
                r1.append(r2)
                java.lang.String r7 = r7.getMessage()
                r1.append(r7)
                java.lang.String r7 = r1.toString()
                r8.a(r0, r7, r3)
            L91:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.i.f.a.onMethodCall(g.a.c.a.j, g.a.c.a.k$d):void");
        }
    }

    /* compiled from: MouseCursorChannel.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(@NonNull String str);
    }

    public f(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19137a = new g.a.c.a.k(aVar, "flutter/mousecursor", o.f18237b);
        this.f19137a.a(this.f19139c);
    }

    public void a(@Nullable b bVar) {
        this.f19138b = bVar;
    }
}
