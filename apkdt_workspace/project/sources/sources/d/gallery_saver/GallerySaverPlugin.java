package d.gallery_saver;

import android.app.Activity;
import android.content.Context;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import io.flutter.embedding.engine.g.c.c;
import kotlin.Metadata;
import kotlin.jvm.d.e;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;

/* compiled from: GallerySaverPlugin.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001c2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\b\u0010\u0014\u001a\u00020\fH\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcarnegietechnologies/gallery_saver/GallerySaverPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "()V", "activity", "Landroid/app/Activity;", "binding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "gallerySaver", "Lcarnegietechnologies/gallery_saver/GallerySaver;", "onAttachedToActivity", "", "onAttachedToEngine", "applicationContext", "Landroid/content/Context;", "messenger", "Lio/flutter/plugin/common/BinaryMessenger;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromActivity", "onDetachedFromActivityForConfigChanges", "onDetachedFromEngine", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "onReattachedToActivityForConfigChanges", "Companion", "gallery_saver_release"}, k = 1, mv = {1, 1, 13})
/* renamed from: d.a.c, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class GallerySaverPlugin implements k.c, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: h, reason: collision with root package name */
    private static k f16783h;

    /* renamed from: e, reason: collision with root package name */
    private Activity f16784e;

    /* renamed from: f, reason: collision with root package name */
    private GallerySaver f16785f;

    /* renamed from: g, reason: collision with root package name */
    private c f16786g;

    /* compiled from: GallerySaverPlugin.kt */
    /* renamed from: d.a.c$a */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    static {
        new a(null);
    }

    private final void a(Context context, g.a.c.a.c cVar) {
        f16783h = new k(cVar, "gallery_saver");
        k kVar = f16783h;
        if (kVar != null) {
            kVar.a(this);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(@NotNull c cVar) {
        h.b(cVar, "binding");
        this.f16784e = cVar.getActivity();
        this.f16786g = cVar;
        Activity activity = this.f16784e;
        if (activity != null) {
            this.f16785f = new GallerySaver(activity);
            GallerySaver gallerySaver = this.f16785f;
            if (gallerySaver != null) {
                cVar.a(gallerySaver);
                return;
            } else {
                h.a();
                throw null;
            }
        }
        h.a();
        throw null;
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NotNull a.b bVar) {
        h.b(bVar, "binding");
        Context a2 = bVar.a();
        h.a((Object) a2, "binding.applicationContext");
        g.a.c.a.c b2 = bVar.b();
        h.a((Object) b2, "binding.binaryMessenger");
        a(a2, b2);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        c cVar = this.f16786g;
        if (cVar != null) {
            GallerySaver gallerySaver = this.f16785f;
            if (gallerySaver != null) {
                if (cVar == null) {
                    h.a();
                    throw null;
                }
                cVar.b(gallerySaver);
            }
            this.f16786g = null;
        }
        this.f16784e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NotNull a.b bVar) {
        h.b(bVar, "binding");
        k kVar = f16783h;
        if (kVar != null) {
            if (kVar != null) {
                kVar.a((k.c) null);
            }
            f16783h = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(@NotNull j jVar, @NotNull k.d dVar) {
        h.b(jVar, "call");
        h.b(dVar, "result");
        String str = jVar.f18223a;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 163601886) {
                if (hashCode == 175491326 && str.equals("saveVideo")) {
                    GallerySaver gallerySaver = this.f16785f;
                    if (gallerySaver != null) {
                        gallerySaver.a(jVar, dVar, d.video);
                        return;
                    }
                    return;
                }
            } else if (str.equals("saveImage")) {
                GallerySaver gallerySaver2 = this.f16785f;
                if (gallerySaver2 != null) {
                    gallerySaver2.a(jVar, dVar, d.image);
                    return;
                }
                return;
            }
        }
        dVar.a();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(@NotNull c cVar) {
        h.b(cVar, "binding");
        onAttachedToActivity(cVar);
    }
}
