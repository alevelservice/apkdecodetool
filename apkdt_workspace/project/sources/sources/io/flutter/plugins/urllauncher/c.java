package io.flutter.plugins.urllauncher;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.g.a;

/* compiled from: UrlLauncherPlugin.java */
/* loaded from: classes2.dex */
public final class c implements io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private a f19522e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private b f19523f;

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(@NonNull io.flutter.embedding.engine.g.c.c cVar) {
        if (this.f19522e == null) {
            return;
        }
        this.f19523f.a(cVar.getActivity());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NonNull a.b bVar) {
        this.f19523f = new b(bVar.a(), null);
        this.f19522e = new a(this.f19523f);
        this.f19522e.a(bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        if (this.f19522e == null) {
            return;
        }
        this.f19523f.a((Activity) null);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        a aVar = this.f19522e;
        if (aVar == null) {
            return;
        }
        aVar.a();
        this.f19522e = null;
        this.f19523f = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(@NonNull io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }
}
