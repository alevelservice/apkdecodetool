package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import com.alipay.zoloz.toyger.face.ToygerFaceAlgorithmConfig;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SettingsChannel.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.b<Object> f19197a;

    /* compiled from: SettingsChannel.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final g.a.c.a.b<Object> f19198a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private Map<String, Object> f19199b = new HashMap();

        a(@NonNull g.a.c.a.b<Object> bVar) {
            this.f19198a = bVar;
        }

        @NonNull
        public a a(float f2) {
            this.f19199b.put("textScaleFactor", Float.valueOf(f2));
            return this;
        }

        @NonNull
        public a a(boolean z) {
            this.f19199b.put("alwaysUse24HourFormat", Boolean.valueOf(z));
            return this;
        }

        @NonNull
        public a a(@NonNull b bVar) {
            this.f19199b.put("platformBrightness", bVar.name);
            return this;
        }

        public void a() {
            g.a.b.c("SettingsChannel", "Sending message: \ntextScaleFactor: " + this.f19199b.get("textScaleFactor") + "\nalwaysUse24HourFormat: " + this.f19199b.get("alwaysUse24HourFormat") + "\nplatformBrightness: " + this.f19199b.get("platformBrightness"));
            this.f19198a.a((g.a.c.a.b<Object>) this.f19199b);
        }
    }

    /* compiled from: SettingsChannel.java */
    /* loaded from: classes2.dex */
    public enum b {
        light("light"),
        dark(ToygerFaceAlgorithmConfig.DARK);


        @NonNull
        public String name;

        b(@NonNull String str) {
            this.name = str;
        }
    }

    public k(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19197a = new g.a.c.a.b<>(aVar, "flutter/settings", g.a.c.a.f.f18221a);
    }

    @NonNull
    public a a() {
        return new a(this.f19197a);
    }
}
