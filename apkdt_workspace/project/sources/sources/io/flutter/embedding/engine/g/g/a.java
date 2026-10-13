package io.flutter.embedding.engine.g.g;

import androidx.annotation.NonNull;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import io.flutter.embedding.engine.g.c.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ShimPluginRegistry.java */
/* loaded from: classes2.dex */
public class a implements m {

    /* renamed from: e, reason: collision with root package name */
    private final io.flutter.embedding.engine.a f19077e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, Object> f19078f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private final b f19079g = new b();

    /* compiled from: ShimPluginRegistry.java */
    /* loaded from: classes2.dex */
    private static class b implements io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

        /* renamed from: e, reason: collision with root package name */
        private final Set<io.flutter.embedding.engine.g.g.b> f19080e;

        /* renamed from: f, reason: collision with root package name */
        private a.b f19081f;

        /* renamed from: g, reason: collision with root package name */
        private c f19082g;

        private b() {
            this.f19080e = new HashSet();
        }

        public void a(@NonNull io.flutter.embedding.engine.g.g.b bVar) {
            this.f19080e.add(bVar);
            a.b bVar2 = this.f19081f;
            if (bVar2 != null) {
                bVar.onAttachedToEngine(bVar2);
            }
            c cVar = this.f19082g;
            if (cVar != null) {
                bVar.onAttachedToActivity(cVar);
            }
        }

        @Override // io.flutter.embedding.engine.g.c.a
        public void onAttachedToActivity(@NonNull c cVar) {
            this.f19082g = cVar;
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onAttachedToActivity(cVar);
            }
        }

        @Override // io.flutter.embedding.engine.g.a
        public void onAttachedToEngine(@NonNull a.b bVar) {
            this.f19081f = bVar;
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onAttachedToEngine(bVar);
            }
        }

        @Override // io.flutter.embedding.engine.g.c.a
        public void onDetachedFromActivity() {
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivity();
            }
            this.f19082g = null;
        }

        @Override // io.flutter.embedding.engine.g.c.a
        public void onDetachedFromActivityForConfigChanges() {
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivity();
            }
            this.f19082g = null;
        }

        @Override // io.flutter.embedding.engine.g.a
        public void onDetachedFromEngine(@NonNull a.b bVar) {
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromEngine(bVar);
            }
            this.f19081f = null;
            this.f19082g = null;
        }

        @Override // io.flutter.embedding.engine.g.c.a
        public void onReattachedToActivityForConfigChanges(@NonNull c cVar) {
            this.f19082g = cVar;
            Iterator<io.flutter.embedding.engine.g.g.b> it = this.f19080e.iterator();
            while (it.hasNext()) {
                it.next().onReattachedToActivityForConfigChanges(cVar);
            }
        }
    }

    public a(@NonNull io.flutter.embedding.engine.a aVar) {
        this.f19077e = aVar;
        this.f19077e.l().a(this.f19079g);
    }

    @Override // g.a.c.a.m
    public boolean hasPlugin(String str) {
        return this.f19078f.containsKey(str);
    }

    @Override // g.a.c.a.m
    public m.d registrarFor(String str) {
        g.a.b.c("ShimPluginRegistry", "Creating plugin Registrar for '" + str + "'");
        if (!this.f19078f.containsKey(str)) {
            this.f19078f.put(str, null);
            io.flutter.embedding.engine.g.g.b bVar = new io.flutter.embedding.engine.g.g.b(str, this.f19078f);
            this.f19079g.a(bVar);
            return bVar;
        }
        throw new IllegalStateException("Plugin key " + str + " is already in use");
    }

    @Override // g.a.c.a.m
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.f19078f.get(str);
    }
}
