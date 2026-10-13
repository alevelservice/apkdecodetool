package com.mapbox.mapboxsdk.snapshotter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.os.Handler;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.h;
import com.mapbox.mapboxsdk.j;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.Image;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.p.c;
import com.mapbox.mapboxsdk.p.d;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.sources.Source;

@UiThread
/* loaded from: classes2.dex */
public class MapSnapshotter {

    /* renamed from: a, reason: collision with root package name */
    private final Context f16241a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f16242b;

    /* renamed from: c, reason: collision with root package name */
    private f f16243c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private g f16244d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private c f16245e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e f16246f;

    @Keep
    private long nativePtr;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ MapSnapshot f16247e;

        a(MapSnapshot mapSnapshot) {
            this.f16247e = mapSnapshot;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MapSnapshotter.this.f16244d != null) {
                MapSnapshotter.this.a(this.f16247e);
                MapSnapshotter.this.f16244d.a(this.f16247e);
                MapSnapshotter.this.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f16249e;

        b(String str) {
            this.f16249e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MapSnapshotter.this.f16245e != null) {
                MapSnapshotter.this.f16245e.onError(this.f16249e);
                MapSnapshotter.this.a();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void onError(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d {

        /* renamed from: a, reason: collision with root package name */
        private Bitmap f16251a;

        /* renamed from: b, reason: collision with root package name */
        private Bitmap f16252b;

        /* renamed from: c, reason: collision with root package name */
        private float f16253c;

        d(MapSnapshotter mapSnapshotter, Bitmap bitmap, Bitmap bitmap2, float f2) {
            this.f16251a = bitmap;
            this.f16252b = bitmap2;
            this.f16253c = f2;
        }

        public Bitmap a() {
            return this.f16251a;
        }

        public float b() {
            return this.f16253c;
        }

        public Bitmap c() {
            return this.f16252b;
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a();

        void a(String str);
    }

    /* loaded from: classes2.dex */
    public static class f {
        public Style.b a() {
            throw null;
        }
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a(MapSnapshot mapSnapshot);
    }

    @Keep
    private native void nativeAddImages(Image[] imageArr);

    @Keep
    private native void nativeAddLayerAbove(long j2, String str);

    @Keep
    private native void nativeAddLayerAt(long j2, int i2);

    @Keep
    private native void nativeAddLayerBelow(long j2, String str);

    @Keep
    private native void nativeAddSource(Source source, long j2);

    @NonNull
    @Keep
    private native Layer nativeGetLayer(String str);

    @NonNull
    @Keep
    private native Source nativeGetSource(String str);

    @Keep
    protected native void finalize();

    @Keep
    protected native void nativeCancel();

    @Keep
    protected native void nativeInitialize(MapSnapshotter mapSnapshotter, FileSource fileSource, float f2, int i2, int i3, String str, String str2, LatLngBounds latLngBounds, CameraPosition cameraPosition, boolean z, String str3);

    @Keep
    protected native void nativeStart();

    @Keep
    protected void onDidFailLoadingStyle(String str) {
        onSnapshotFailed(str);
    }

    @Keep
    protected void onDidFinishLoadingStyle() {
        if (this.f16242b) {
            e eVar = this.f16246f;
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        this.f16242b = true;
        this.f16243c.a();
        throw null;
    }

    @Keep
    protected void onSnapshotFailed(String str) {
        new Handler().post(new b(str));
    }

    @Keep
    protected void onSnapshotReady(@NonNull MapSnapshot mapSnapshot) {
        new Handler().post(new a(mapSnapshot));
    }

    @Keep
    protected void onStyleImageMissing(String str) {
        e eVar = this.f16246f;
        if (eVar != null) {
            eVar.a(str);
        }
    }

    @Keep
    public native void setCameraPosition(CameraPosition cameraPosition);

    @Keep
    public native void setRegion(LatLngBounds latLngBounds);

    @Keep
    public native void setSize(int i2, int i3);

    @Keep
    public native void setStyleJson(String str);

    @Keep
    public native void setStyleUrl(String str);

    protected void a(@NonNull MapSnapshot mapSnapshot) {
        Bitmap b2 = mapSnapshot.b();
        a(mapSnapshot, b2, new Canvas(b2), ((int) this.f16241a.getResources().getDisplayMetrics().density) * 4);
    }

    private void a(@NonNull MapSnapshot mapSnapshot, @NonNull Bitmap bitmap, @NonNull Canvas canvas, int i2) {
        com.mapbox.mapboxsdk.p.c a2 = a(mapSnapshot, bitmap, i2);
        com.mapbox.mapboxsdk.p.b b2 = a2.b();
        a(mapSnapshot, canvas, i2, b2);
        a(mapSnapshot, canvas, a2, b2);
    }

    @NonNull
    private com.mapbox.mapboxsdk.p.c a(@NonNull MapSnapshot mapSnapshot, @NonNull Bitmap bitmap, int i2) {
        d a2 = a(bitmap);
        TextView a3 = a(mapSnapshot, false, a2.b());
        TextView a4 = a(mapSnapshot, true, a2.b());
        c.b bVar = new c.b();
        bVar.c(bitmap);
        bVar.a(a2.a());
        bVar.b(a2.c());
        bVar.a(a3);
        bVar.b(a4);
        bVar.a(i2);
        return bVar.a();
    }

    private void a(MapSnapshot mapSnapshot, @NonNull Canvas canvas, int i2, @NonNull com.mapbox.mapboxsdk.p.b bVar) {
        if (mapSnapshot.c()) {
            a(mapSnapshot.b(), canvas, i2, bVar);
        }
    }

    private void a(@NonNull Bitmap bitmap, @NonNull Canvas canvas, int i2, com.mapbox.mapboxsdk.p.b bVar) {
        Bitmap b2 = bVar.b();
        if (b2 != null) {
            canvas.drawBitmap(b2, i2, (bitmap.getHeight() - b2.getHeight()) - i2, (Paint) null);
        }
    }

    private void a(@NonNull MapSnapshot mapSnapshot, @NonNull Canvas canvas, @NonNull com.mapbox.mapboxsdk.p.c cVar, com.mapbox.mapboxsdk.p.b bVar) {
        PointF a2 = bVar.a();
        if (a2 != null) {
            a(canvas, cVar, a2);
        } else {
            Bitmap b2 = mapSnapshot.b();
            Logger.e("Mbgl-MapSnapshotter", String.format("Could not generate attribution for snapshot size: %s x %s. You are required to provide your own attribution for the used sources: %s", Integer.valueOf(b2.getWidth()), Integer.valueOf(b2.getHeight()), mapSnapshot.a()));
        }
    }

    private void a(Canvas canvas, com.mapbox.mapboxsdk.p.c cVar, PointF pointF) {
        canvas.save();
        canvas.translate(pointF.x, pointF.y);
        cVar.a().draw(canvas);
        canvas.restore();
    }

    @NonNull
    private TextView a(@NonNull MapSnapshot mapSnapshot, boolean z, float f2) {
        int a2 = androidx.core.content.res.e.a(this.f16241a.getResources(), h.mapbox_gray_dark, this.f16241a.getTheme());
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        TextView textView = new TextView(this.f16241a);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setSingleLine(true);
        textView.setTextSize(f2 * 10.0f);
        textView.setTextColor(a2);
        textView.setBackgroundResource(j.mapbox_rounded_corner);
        textView.setText(Html.fromHtml(a(mapSnapshot, z)));
        textView.measure(makeMeasureSpec, makeMeasureSpec2);
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        return textView;
    }

    @NonNull
    private String a(MapSnapshot mapSnapshot, boolean z) {
        d.a aVar = new d.a(this.f16241a);
        aVar.a(mapSnapshot.a());
        aVar.a(false);
        aVar.b(false);
        return aVar.a().a(z);
    }

    private d a(@NonNull Bitmap bitmap) {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.f16241a.getResources(), j.mapbox_logo_icon, null);
        float a2 = a(bitmap, decodeResource);
        Matrix matrix = new Matrix();
        matrix.postScale(a2, a2);
        Bitmap decodeResource2 = BitmapFactory.decodeResource(this.f16241a.getResources(), j.mapbox_logo_helmet, null);
        return new d(this, Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, true), Bitmap.createBitmap(decodeResource2, 0, 0, decodeResource2.getWidth(), decodeResource2.getHeight(), matrix, true), a2);
    }

    private float a(Bitmap bitmap, Bitmap bitmap2) {
        DisplayMetrics displayMetrics = this.f16241a.getResources().getDisplayMetrics();
        float min = Math.min((bitmap2.getWidth() / (displayMetrics.widthPixels / bitmap.getWidth())) / bitmap2.getWidth(), (bitmap2.getHeight() / (displayMetrics.heightPixels / bitmap.getHeight())) / bitmap2.getHeight()) * 2.0f;
        if (min > 1.0f) {
            return 1.0f;
        }
        if (min < 0.6f) {
            return 0.6f;
        }
        return min;
    }

    protected void a() {
        this.f16244d = null;
        this.f16245e = null;
    }
}
