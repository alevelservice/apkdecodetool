package e.h.a.stop_watch_timer;

import android.os.Build;
import androidx.annotation.NonNull;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import kotlin.Metadata;
import kotlin.jvm.d.e;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;

/* compiled from: StopWatchTimerPlugin.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u00012\u00020\u0002:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\u0007H\u0016J\u001c\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u0010"}, d2 = {"Lcom/gmail/hukusuke1007/stop_watch_timer/StopWatchTimerPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "()V", "onAttachedToEngine", "", "flutterPluginBinding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromEngine", "binding", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "Companion", "stop_watch_timer_release"}, k = 1, mv = {1, 1, 13})
/* renamed from: e.h.a.a.a, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class StopWatchTimerPlugin implements io.flutter.embedding.engine.g.a, k.c {

    /* compiled from: StopWatchTimerPlugin.kt */
    /* renamed from: e.h.a.a.a$a */
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

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NonNull @NotNull a.b bVar) {
        h.b(bVar, "flutterPluginBinding");
        new k(bVar.d().d(), "stop_watch_timer").a(new StopWatchTimerPlugin());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull @NotNull a.b bVar) {
        h.b(bVar, "binding");
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(@NonNull @NotNull j jVar, @NonNull @NotNull k.d dVar) {
        h.b(jVar, "call");
        h.b(dVar, "result");
        if (h.a((Object) jVar.f18223a, (Object) "getPlatformVersion")) {
            dVar.a("Android " + Build.VERSION.RELEASE);
            return;
        }
        dVar.a();
    }
}
