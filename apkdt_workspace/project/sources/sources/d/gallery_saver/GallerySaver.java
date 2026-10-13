package d.gallery_saver;

import android.app.Activity;
import android.content.ContentResolver;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.h.d;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.c.c;
import kotlin.jvm.d.e;
import kotlin.jvm.d.h;
import kotlin.t;
import kotlinx.coroutines.e0;
import kotlinx.coroutines.f0;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: GallerySaver.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0011H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0002J+\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcarnegietechnologies/gallery_saver/GallerySaver;", "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "albumName", "", "filePath", "job", "Lkotlinx/coroutines/CompletableJob;", "mediaType", "Lcarnegietechnologies/gallery_saver/MediaType;", "pendingResult", "Lio/flutter/plugin/common/MethodChannel$Result;", "uiScope", "Lkotlinx/coroutines/CoroutineScope;", "checkPermissionAndSaveFile", "", "methodCall", "Lio/flutter/plugin/common/MethodCall;", "result", "checkPermissionAndSaveFile$gallery_saver_release", "finishWithSuccess", "isWritePermissionGranted", "", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)Z", "saveMediaFile", "Companion", "gallery_saver_release"}, k = 1, mv = {1, 1, 13})
/* renamed from: d.a.b, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class GallerySaver implements m.e {

    /* renamed from: e, reason: collision with root package name */
    private k.d f16776e;

    /* renamed from: f, reason: collision with root package name */
    private d f16777f;

    /* renamed from: g, reason: collision with root package name */
    private String f16778g;

    /* renamed from: h, reason: collision with root package name */
    private String f16779h;

    /* renamed from: i, reason: collision with root package name */
    private final q f16780i;

    /* renamed from: j, reason: collision with root package name */
    private final e0 f16781j;

    /* renamed from: k, reason: collision with root package name */
    private final Activity f16782k;

    /* compiled from: GallerySaver.kt */
    /* renamed from: d.a.b$a */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GallerySaver.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 13})
    @DebugMetadata(c = "carnegietechnologies.gallery_saver.GallerySaver$saveMediaFile$1", f = "GallerySaver.kt", i = {0}, l = {72}, m = "invokeSuspend", n = {"success"}, s = {"L$0"})
    /* renamed from: d.a.b$b */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.k implements c<e0, kotlin.coroutines.c<? super t>, Object> {
        Object L$0;
        int label;
        private e0 p$;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GallerySaver.kt */
        @DebugMetadata(c = "carnegietechnologies.gallery_saver.GallerySaver$saveMediaFile$1$success$1", f = "GallerySaver.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: d.a.b$b$a */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.k implements c<e0, kotlin.coroutines.c<? super Boolean>, Object> {
            int label;
            private e0 p$;

            a(kotlin.coroutines.c cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.c<t> create(@Nullable Object obj, @NotNull kotlin.coroutines.c<?> cVar) {
                h.b(cVar, "completion");
                a aVar = new a(cVar);
                aVar.p$ = (e0) obj;
                return aVar;
            }

            @Override // kotlin.jvm.c.c
            public final Object invoke(e0 e0Var, kotlin.coroutines.c<? super Boolean> cVar) {
                return ((a) create(e0Var, cVar)).invokeSuspend(t.f19946a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                boolean a2;
                d.a();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                if (!(obj instanceof Result.b)) {
                    if (GallerySaver.this.f16777f == d.video) {
                        d.gallery_saver.a aVar = d.gallery_saver.a.f16775a;
                        ContentResolver contentResolver = GallerySaver.this.f16782k.getContentResolver();
                        h.a((Object) contentResolver, "activity.contentResolver");
                        a2 = d.gallery_saver.a.a(aVar, contentResolver, GallerySaver.this.f16778g, GallerySaver.this.f16779h, 0, 8, null);
                    } else {
                        d.gallery_saver.a aVar2 = d.gallery_saver.a.f16775a;
                        ContentResolver contentResolver2 = GallerySaver.this.f16782k.getContentResolver();
                        h.a((Object) contentResolver2, "activity.contentResolver");
                        a2 = aVar2.a(contentResolver2, GallerySaver.this.f16778g, GallerySaver.this.f16779h);
                    }
                    return kotlin.coroutines.jvm.internal.b.a(a2);
                }
                throw ((Result.b) obj).exception;
            }
        }

        b(kotlin.coroutines.c cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.c<t> create(@Nullable Object obj, @NotNull kotlin.coroutines.c<?> cVar) {
            h.b(cVar, "completion");
            b bVar = new b(cVar);
            bVar.p$ = (e0) obj;
            return bVar;
        }

        @Override // kotlin.jvm.c.c
        public final Object invoke(e0 e0Var, kotlin.coroutines.c<? super t> cVar) {
            return ((b) create(e0Var, cVar)).invokeSuspend(t.f19946a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object a2;
            m0 a3;
            a2 = d.a();
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                if (obj instanceof Result.b) {
                    throw ((Result.b) obj).exception;
                }
            } else if (!(obj instanceof Result.b)) {
                a3 = kotlinx.coroutines.e.a(this.p$, s0.b(), null, new a(null), 2, null);
                this.L$0 = a3;
                this.label = 1;
                if (a3.a(this) == a2) {
                    return a2;
                }
            } else {
                throw ((Result.b) obj).exception;
            }
            GallerySaver.this.a();
            return t.f19946a;
        }
    }

    static {
        new a(null);
    }

    public GallerySaver(@NotNull Activity activity) {
        q a2;
        h.b(activity, "activity");
        this.f16782k = activity;
        this.f16778g = "";
        this.f16779h = "";
        a2 = l1.a(null, 1, null);
        this.f16780i = a2;
        this.f16781j = f0.a(s0.c().plus(this.f16780i));
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int requestCode, @NotNull String[] permissions, @NotNull int[] grantResults) {
        h.b(permissions, "permissions");
        h.b(grantResults, "grantResults");
        boolean z = ((grantResults.length == 0) ^ true) && grantResults[0] == 0;
        if (requestCode != 2408) {
            return false;
        }
        if (z) {
            if (this.f16777f == d.video) {
                d.gallery_saver.a aVar = d.gallery_saver.a.f16775a;
                ContentResolver contentResolver = this.f16782k.getContentResolver();
                h.a((Object) contentResolver, "activity.contentResolver");
                d.gallery_saver.a.a(aVar, contentResolver, this.f16778g, this.f16779h, 0, 8, null);
            } else {
                d.gallery_saver.a aVar2 = d.gallery_saver.a.f16775a;
                ContentResolver contentResolver2 = this.f16782k.getContentResolver();
                h.a((Object) contentResolver2, "activity.contentResolver");
                aVar2.a(contentResolver2, this.f16778g, this.f16779h);
            }
        }
        return true;
    }

    private final boolean b() {
        return androidx.core.content.a.a(this.f16782k, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    private final void c() {
        kotlinx.coroutines.e.b(this.f16781j, null, null, new b(null), 3, null);
    }

    public final void a(@NotNull j jVar, @NotNull k.d dVar, @NotNull d dVar2) {
        String str;
        String str2;
        h.b(jVar, "methodCall");
        h.b(dVar, "result");
        h.b(dVar2, "mediaType");
        Object a2 = jVar.a("path");
        if (a2 == null || (str = a2.toString()) == null) {
            str = "";
        }
        this.f16778g = str;
        Object a3 = jVar.a("albumName");
        if (a3 == null || (str2 = a3.toString()) == null) {
            str2 = "";
        }
        this.f16779h = str2;
        this.f16777f = dVar2;
        this.f16776e = dVar;
        if (b()) {
            c();
        } else {
            androidx.core.app.a.a(this.f16782k, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2408);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        k.d dVar = this.f16776e;
        if (dVar != null) {
            dVar.a(true);
            this.f16776e = null;
        } else {
            h.a();
            throw null;
        }
    }
}
