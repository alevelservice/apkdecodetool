package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.media.ExifInterface;
import android.net.Uri;
import android.util.Pair;
import com.facebook.common.internal.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: LocalExifThumbnailProducer.java */
/* loaded from: classes.dex */
public class x implements u0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4128a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.h f4129b;

    /* renamed from: c, reason: collision with root package name */
    private final ContentResolver f4130c;

    /* compiled from: LocalExifThumbnailProducer.java */
    /* loaded from: classes.dex */
    class a extends p0<e.f.i.g.e> {

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ e.f.i.i.b f4131j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, l0 l0Var, String str, String str2, e.f.i.i.b bVar) {
            super(consumer, l0Var, str, str2);
            this.f4131j = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        public void a(e.f.i.g.e eVar) {
            e.f.i.g.e.c(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        @Nullable
        public e.f.i.g.e b() {
            ExifInterface a2 = x.this.a(this.f4131j.p());
            if (a2 == null || !a2.hasThumbnail()) {
                return null;
            }
            return x.this.a(x.this.f4129b.a(a2.getThumbnail()), a2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<String, String> c(e.f.i.g.e eVar) {
            return com.facebook.common.internal.e.of("createdThumbnail", Boolean.toString(eVar != null));
        }
    }

    /* compiled from: LocalExifThumbnailProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p0 f4133a;

        b(x xVar, p0 p0Var) {
            this.f4133a = p0Var;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f4133a.a();
        }
    }

    public x(Executor executor, e.f.c.f.h hVar, ContentResolver contentResolver) {
        this.f4128a = executor;
        this.f4129b = hVar;
        this.f4130c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean a(com.facebook.imagepipeline.common.e eVar) {
        return v0.a(512, 512, eVar);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        a aVar = new a(consumer, j0Var.e(), "LocalExifThumbnailProducer", j0Var.getId(), j0Var.c());
        j0Var.a(new b(this, aVar));
        this.f4128a.execute(aVar);
    }

    @VisibleForTesting
    @Nullable
    ExifInterface a(Uri uri) {
        String a2 = e.f.c.j.f.a(this.f4130c, uri);
        try {
            if (a(a2)) {
                return new ExifInterface(a2);
            }
            return null;
        } catch (IOException unused) {
            return null;
        } catch (StackOverflowError unused2) {
            e.f.c.d.a.a((Class<?>) x.class, "StackOverflowError in ExifInterface constructor");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.f.i.g.e a(e.f.c.f.g gVar, ExifInterface exifInterface) {
        Pair<Integer, Integer> a2 = com.facebook.imageutils.a.a(new e.f.c.f.i(gVar));
        int a3 = a(exifInterface);
        int intValue = a2 != null ? ((Integer) a2.first).intValue() : -1;
        int intValue2 = a2 != null ? ((Integer) a2.second).intValue() : -1;
        e.f.c.g.a a4 = e.f.c.g.a.a(gVar);
        try {
            e.f.i.g.e eVar = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a4);
            e.f.c.g.a.b(a4);
            eVar.a(e.f.h.b.f17450a);
            eVar.g(a3);
            eVar.i(intValue);
            eVar.f(intValue2);
            return eVar;
        } catch (Throwable th) {
            e.f.c.g.a.b(a4);
            throw th;
        }
    }

    private int a(ExifInterface exifInterface) {
        return com.facebook.imageutils.c.a(Integer.parseInt(exifInterface.getAttribute("Orientation")));
    }

    @VisibleForTesting
    boolean a(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.canRead();
    }
}
