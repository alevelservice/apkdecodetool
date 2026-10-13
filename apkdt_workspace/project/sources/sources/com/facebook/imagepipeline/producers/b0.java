package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: LocalVideoThumbnailProducer.java */
/* loaded from: classes.dex */
public class b0 implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f3901a;

    /* renamed from: b, reason: collision with root package name */
    private final ContentResolver f3902b;

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes.dex */
    class a extends p0<e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ l0 f3903j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ String f3904k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ e.f.i.i.b f3905l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, l0 l0Var, String str, String str2, l0 l0Var2, String str3, e.f.i.i.b bVar) {
            super(consumer, l0Var, str, str2);
            this.f3903j = l0Var2;
            this.f3904k = str3;
            this.f3905l = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        public void a(Exception exc) {
            super.a(exc);
            this.f3903j.a(this.f3904k, "VideoThumbnailProducer", false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        /* renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar) {
            super.b((a) aVar);
            this.f3903j.a(this.f3904k, "VideoThumbnailProducer", aVar != null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        @Nullable
        public e.f.c.g.a<e.f.i.g.c> b() {
            Bitmap createVideoThumbnail;
            String c2 = b0.this.c(this.f3905l);
            if (c2 == null || (createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(c2, b0.b(this.f3905l))) == null) {
                return null;
            }
            return e.f.c.g.a.a(new e.f.i.g.d(createVideoThumbnail, e.f.i.b.h.a(), e.f.i.g.g.f17609d, 0));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        public void a(e.f.c.g.a<e.f.i.g.c> aVar) {
            e.f.c.g.a.b(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<String, String> c(e.f.c.g.a<e.f.i.g.c> aVar) {
            return com.facebook.common.internal.e.of("createdThumbnail", String.valueOf(aVar != null));
        }
    }

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p0 f3906a;

        b(b0 b0Var, p0 p0Var) {
            this.f3906a = p0Var;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f3906a.a();
        }
    }

    public b0(Executor executor, ContentResolver contentResolver) {
        this.f3901a = executor;
        this.f3902b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(e.f.i.i.b bVar) {
        return (bVar.h() > 96 || bVar.g() > 96) ? 1 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String c(e.f.i.i.b bVar) {
        Uri uri;
        String str;
        String[] strArr;
        Uri p = bVar.p();
        if (e.f.c.j.f.g(p)) {
            return bVar.o().getPath();
        }
        if (e.f.c.j.f.f(p)) {
            if (Build.VERSION.SDK_INT < 19 || !"com.android.providers.media.documents".equals(p.getAuthority())) {
                uri = p;
                str = null;
                strArr = null;
            } else {
                String documentId = DocumentsContract.getDocumentId(p);
                str = "_id=?";
                uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                strArr = new String[]{documentId.split(":")[1]};
            }
            Cursor query = this.f3902b.query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        return query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        l0 e2 = j0Var.e();
        String id = j0Var.getId();
        a aVar = new a(consumer, e2, "VideoThumbnailProducer", id, e2, id, j0Var.c());
        j0Var.a(new b(this, aVar));
        this.f3901a.execute(aVar);
    }
}
