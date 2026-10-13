package io.flutter.embedding.engine.mutatorsstack;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class FlutterMutatorsStack {

    @NonNull
    private List<a> mutators = new ArrayList();
    private Matrix finalMatrix = new Matrix();
    private List<Path> finalClippingPaths = new ArrayList();

    /* loaded from: classes2.dex */
    public enum b {
        CLIP_RECT,
        CLIP_RRECT,
        CLIP_PATH,
        TRANSFORM,
        OPACITY
    }

    public List<Path> getFinalClippingPaths() {
        return this.finalClippingPaths;
    }

    public Matrix getFinalMatrix() {
        return this.finalMatrix;
    }

    public List<a> getMutators() {
        return this.mutators;
    }

    public void pushClipRect(int i2, int i3, int i4, int i5) {
        Rect rect = new Rect(i2, i3, i4, i5);
        this.mutators.add(new a(this, rect));
        Path path = new Path();
        path.addRect(new RectF(rect), Path.Direction.CCW);
        path.transform(this.finalMatrix);
        this.finalClippingPaths.add(path);
    }

    public void pushTransform(float[] fArr) {
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        a aVar = new a(this, matrix);
        this.mutators.add(aVar);
        this.finalMatrix.preConcat(aVar.a());
    }

    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private Matrix f19233a;

        public a(FlutterMutatorsStack flutterMutatorsStack, Rect rect) {
            b bVar = b.CLIP_RECT;
        }

        public Matrix a() {
            return this.f19233a;
        }

        public a(FlutterMutatorsStack flutterMutatorsStack, Matrix matrix) {
            b bVar = b.TRANSFORM;
            this.f19233a = matrix;
        }
    }
}
