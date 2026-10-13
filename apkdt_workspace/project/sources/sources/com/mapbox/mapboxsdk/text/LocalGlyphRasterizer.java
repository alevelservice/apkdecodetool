package com.mapbox.mapboxsdk.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;

@Keep
/* loaded from: classes2.dex */
public class LocalGlyphRasterizer {

    @NonNull
    private final Canvas canvas;
    private final Bitmap bitmap = Bitmap.createBitmap(35, 35, Bitmap.Config.ARGB_8888);

    @NonNull
    private final Paint paint = new Paint();

    LocalGlyphRasterizer() {
        this.paint.setAntiAlias(true);
        this.paint.setTextSize(24.0f);
        this.canvas = new Canvas();
        this.canvas.setBitmap(this.bitmap);
    }

    @WorkerThread
    protected Bitmap drawGlyphBitmap(String str, boolean z, char c2) {
        this.paint.setTypeface(Typeface.create(str, z ? 1 : 0));
        this.canvas.drawColor(-1);
        this.canvas.drawText(String.valueOf(c2), 0.0f, 20.0f, this.paint);
        return this.bitmap;
    }
}
