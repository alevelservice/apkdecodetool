package io.flutter.embedding.engine.g;

import android.content.Context;
import androidx.annotation.NonNull;
import g.a.c.a.c;
import io.flutter.plugin.platform.h;
import io.flutter.view.g;

/* compiled from: FlutterPlugin.java */
/* loaded from: classes2.dex */
public interface a {

    /* compiled from: FlutterPlugin.java */
    /* renamed from: io.flutter.embedding.engine.g.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0233a {
        String a(@NonNull String str);
    }

    /* compiled from: FlutterPlugin.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Context f19072a;

        /* renamed from: b, reason: collision with root package name */
        private final io.flutter.embedding.engine.a f19073b;

        /* renamed from: c, reason: collision with root package name */
        private final c f19074c;

        /* renamed from: d, reason: collision with root package name */
        private final h f19075d;

        /* renamed from: e, reason: collision with root package name */
        private final InterfaceC0233a f19076e;

        public b(@NonNull Context context, @NonNull io.flutter.embedding.engine.a aVar, @NonNull c cVar, @NonNull g gVar, @NonNull h hVar, @NonNull InterfaceC0233a interfaceC0233a) {
            this.f19072a = context;
            this.f19073b = aVar;
            this.f19074c = cVar;
            this.f19075d = hVar;
            this.f19076e = interfaceC0233a;
        }

        @NonNull
        public Context a() {
            return this.f19072a;
        }

        @NonNull
        public c b() {
            return this.f19074c;
        }

        @NonNull
        public InterfaceC0233a c() {
            return this.f19076e;
        }

        @NonNull
        @Deprecated
        public io.flutter.embedding.engine.a d() {
            return this.f19073b;
        }

        @NonNull
        public h e() {
            return this.f19075d;
        }
    }

    void onAttachedToEngine(@NonNull b bVar);

    void onDetachedFromEngine(@NonNull b bVar);
}
