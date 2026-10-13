package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.sources.Source;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class Style {

    /* renamed from: a, reason: collision with root package name */
    private final q f15952a;

    /* renamed from: b, reason: collision with root package name */
    private final HashMap<String, Source> f15953b;

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, Layer> f15954c;

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<String, Bitmap> f15955d;

    /* renamed from: e, reason: collision with root package name */
    private final b f15956e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15957f;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface StyleUrl {
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final List<Source> f15958a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private final List<e> f15959b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        private final List<a> f15960c = new ArrayList();

        /* renamed from: d, reason: collision with root package name */
        private TransitionOptions f15961d;

        /* renamed from: e, reason: collision with root package name */
        private String f15962e;

        /* renamed from: f, reason: collision with root package name */
        private String f15963f;

        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            Bitmap f15964a;

            /* renamed from: b, reason: collision with root package name */
            String f15965b;

            /* renamed from: c, reason: collision with root package name */
            boolean f15966c;

            /* renamed from: d, reason: collision with root package name */
            List<i> f15967d;

            /* renamed from: e, reason: collision with root package name */
            List<i> f15968e;

            /* renamed from: f, reason: collision with root package name */
            h f15969f;

            public a(String str, Bitmap bitmap, boolean z) {
                this(str, bitmap, z, null, null, null);
            }

            public h a() {
                return this.f15969f;
            }

            public List<i> b() {
                return this.f15967d;
            }

            public List<i> c() {
                return this.f15968e;
            }

            public a(String str, Bitmap bitmap, boolean z, List<i> list, List<i> list2, h hVar) {
                this.f15965b = str;
                this.f15964a = bitmap;
                this.f15966c = z;
                this.f15967d = list;
                this.f15968e = list2;
                this.f15969f = hVar;
            }
        }

        /* renamed from: com.mapbox.mapboxsdk.maps.Style$b$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0156b extends e {

            /* renamed from: b, reason: collision with root package name */
            String f15970b;
        }

        /* loaded from: classes2.dex */
        public class c extends e {

            /* renamed from: b, reason: collision with root package name */
            int f15971b;
        }

        /* loaded from: classes2.dex */
        public class d extends e {

            /* renamed from: b, reason: collision with root package name */
            String f15972b;
        }

        /* loaded from: classes2.dex */
        public class e {

            /* renamed from: a, reason: collision with root package name */
            Layer f15973a;
        }

        @NonNull
        public b a(@NonNull String str) {
            this.f15963f = str;
            return this;
        }

        @NonNull
        public b b(@NonNull String str) {
            this.f15962e = str;
            return this;
        }

        @NonNull
        @Deprecated
        public b c(@NonNull String str) {
            this.f15962e = str;
            return this;
        }

        public String a() {
            return this.f15963f;
        }

        public String b() {
            return this.f15962e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Style a(@NonNull q qVar) {
            return new Style(this, qVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(@NonNull Style style);
    }

    public void a(@NonNull Source source) {
        f("addSource");
        this.f15952a.a(source);
        this.f15953b.put(source.getId(), source);
    }

    @Nullable
    public <T extends Source> T b(@NonNull String str) {
        f("getSourceAs");
        if (this.f15953b.containsKey(str)) {
            return (T) this.f15953b.get(str);
        }
        return (T) this.f15952a.d(str);
    }

    @NonNull
    public List<Source> c() {
        f("getSources");
        return this.f15952a.c();
    }

    @NonNull
    public String d() {
        f("getUri");
        return this.f15952a.e();
    }

    public boolean e(@NonNull String str) {
        f("removeSource");
        this.f15953b.remove(str);
        return this.f15952a.h(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.f15957f) {
            return;
        }
        this.f15957f = true;
        Iterator it = this.f15956e.f15958a.iterator();
        while (it.hasNext()) {
            a((Source) it.next());
        }
        for (b.e eVar : this.f15956e.f15959b) {
            if (eVar instanceof b.c) {
                a(eVar.f15973a, ((b.c) eVar).f15971b);
            } else if (eVar instanceof b.C0156b) {
                a(eVar.f15973a, ((b.C0156b) eVar).f15970b);
            } else if (eVar instanceof b.d) {
                b(eVar.f15973a, ((b.d) eVar).f15972b);
            } else {
                b(eVar.f15973a, "com.mapbox.annotations.points");
            }
        }
        for (b.a aVar : this.f15956e.f15960c) {
            a(aVar.f15965b, aVar.f15964a, aVar.f15966c);
        }
        if (this.f15956e.f15961d != null) {
            a(this.f15956e.f15961d);
        }
    }

    private Style(@NonNull b bVar, @NonNull q qVar) {
        this.f15953b = new HashMap<>();
        this.f15954c = new HashMap<>();
        this.f15955d = new HashMap<>();
        this.f15956e = bVar;
        this.f15952a = qVar;
    }

    public void c(@NonNull String str) {
        f("removeImage");
        this.f15952a.g(str);
    }

    public boolean d(@NonNull String str) {
        f("removeLayer");
        this.f15954c.remove(str);
        return this.f15952a.c(str);
    }

    public void a(@NonNull Layer layer) {
        f("addLayer");
        this.f15952a.b(layer);
        this.f15954c.put(layer.b(), layer);
    }

    public boolean e() {
        return this.f15957f;
    }

    public void b(@NonNull Layer layer, @NonNull String str) {
        f("addLayerBelow");
        this.f15952a.b(layer, str);
        this.f15954c.put(layer.b(), layer);
    }

    public void a(@NonNull Layer layer, @NonNull String str) {
        f("addLayerAbove");
        this.f15952a.a(layer, str);
        this.f15954c.put(layer.b(), layer);
    }

    @NonNull
    public List<Layer> b() {
        f("getLayers");
        return this.f15952a.a();
    }

    public void a(@NonNull Layer layer, @IntRange(from = 0) int i2) {
        f("addLayerAbove");
        this.f15952a.a(layer, i2);
        this.f15954c.put(layer.b(), layer);
    }

    public boolean b(@NonNull Layer layer) {
        f("removeLayer");
        this.f15954c.remove(layer.b());
        return this.f15952a.a(layer);
    }

    @Nullable
    public Layer a(@NonNull String str) {
        f("getLayer");
        Layer layer = this.f15954c.get(str);
        return layer == null ? this.f15952a.b(str) : layer;
    }

    public void a(@NonNull String str, @NonNull Bitmap bitmap) {
        a(str, bitmap, false);
    }

    private void f(String str) {
        if (!this.f15957f) {
            throw new IllegalStateException(String.format("Calling %s when a newer style is loading/has loaded.", str));
        }
    }

    public void a(@NonNull String str, @NonNull Bitmap bitmap, boolean z) {
        f("addImage");
        this.f15952a.a(new Image[]{a(new b.a(str, bitmap, z))});
    }

    public void a(@NonNull TransitionOptions transitionOptions) {
        f("setTransition");
        this.f15952a.a(transitionOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f15957f = false;
        for (Layer layer : this.f15954c.values()) {
            if (layer != null) {
                layer.e();
            }
        }
        for (Source source : this.f15953b.values()) {
            if (source != null) {
                source.setDetached();
            }
        }
        for (Map.Entry<String, Bitmap> entry : this.f15955d.entrySet()) {
            this.f15952a.g(entry.getKey());
            entry.getValue().recycle();
        }
        this.f15953b.clear();
        this.f15954c.clear();
        this.f15955d.clear();
    }

    public static Image a(b.a aVar) {
        Bitmap bitmap = aVar.f15964a;
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config != config2) {
            bitmap = bitmap.copy(config2, false);
        }
        ByteBuffer allocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(allocate);
        float density = bitmap.getDensity() / 160.0f;
        if (aVar.b() != null && aVar.c() != null) {
            float[] fArr = new float[aVar.b().size() * 2];
            for (int i2 = 0; i2 < aVar.b().size(); i2++) {
                int i3 = i2 * 2;
                fArr[i3] = aVar.b().get(i2).a();
                fArr[i3 + 1] = aVar.b().get(i2).b();
            }
            float[] fArr2 = new float[aVar.c().size() * 2];
            for (int i4 = 0; i4 < aVar.c().size(); i4++) {
                int i5 = i4 * 2;
                fArr2[i5] = aVar.c().get(i4).a();
                fArr2[i5 + 1] = aVar.c().get(i4).b();
            }
            byte[] array = allocate.array();
            String str = aVar.f15965b;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            boolean z = aVar.f15966c;
            if (aVar.a() == null) {
                return new Image(array, density, str, width, height, z, fArr, fArr2, null);
            }
            aVar.a().a();
            throw null;
        }
        return new Image(allocate.array(), density, aVar.f15965b, bitmap.getWidth(), bitmap.getHeight(), aVar.f15966c);
    }
}
