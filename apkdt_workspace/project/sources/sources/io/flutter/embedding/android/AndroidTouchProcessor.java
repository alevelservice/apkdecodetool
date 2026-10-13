package io.flutter.embedding.android;

import android.graphics.Matrix;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public class AndroidTouchProcessor {

    /* renamed from: d, reason: collision with root package name */
    private static final Matrix f18883d = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.h.a f18884a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final f f18885b = f.a();

    /* renamed from: c, reason: collision with root package name */
    private final boolean f18886c;

    /* loaded from: classes2.dex */
    private @interface PointerChange {
        public static final int ADD = 1;
        public static final int CANCEL = 0;
        public static final int DOWN = 4;
        public static final int HOVER = 3;
        public static final int MOVE = 5;
        public static final int REMOVE = 2;
        public static final int UP = 6;
    }

    /* loaded from: classes2.dex */
    private @interface PointerDeviceKind {
        public static final int INVERTED_STYLUS = 3;
        public static final int MOUSE = 1;
        public static final int STYLUS = 2;
        public static final int TOUCH = 0;
        public static final int UNKNOWN = 4;
    }

    /* loaded from: classes2.dex */
    private @interface PointerSignalKind {
        public static final int NONE = 0;
        public static final int SCROLL = 1;
        public static final int UNKNOWN = 2;
    }

    public AndroidTouchProcessor(@NonNull io.flutter.embedding.engine.h.a aVar, boolean z) {
        this.f18884a = aVar;
        this.f18886c = z;
    }

    @PointerChange
    private int a(int i2) {
        if (i2 == 0) {
            return 4;
        }
        if (i2 == 1) {
            return 6;
        }
        if (i2 == 5) {
            return 4;
        }
        if (i2 == 6) {
            return 6;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 == 7) {
            return 3;
        }
        if (i2 == 3) {
            return 0;
        }
        return i2 == 8 ? 3 : -1;
    }

    @PointerDeviceKind
    private int b(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 != 3) {
            return i2 != 4 ? 4 : 3;
        }
        return 1;
    }

    public boolean a(@NonNull MotionEvent motionEvent, Matrix matrix) {
        int pointerCount = motionEvent.getPointerCount();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(pointerCount * 29 * 8);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        int actionMasked = motionEvent.getActionMasked();
        int a2 = a(motionEvent.getActionMasked());
        boolean z = actionMasked == 0 || actionMasked == 5;
        boolean z2 = !z && (actionMasked == 1 || actionMasked == 6);
        if (z) {
            a(motionEvent, motionEvent.getActionIndex(), a2, 0, matrix, allocateDirect);
        } else if (z2) {
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (i2 != motionEvent.getActionIndex() && motionEvent.getToolType(i2) == 1) {
                    a(motionEvent, i2, 5, 1, matrix, allocateDirect);
                }
            }
            a(motionEvent, motionEvent.getActionIndex(), a2, 0, matrix, allocateDirect);
        } else {
            for (int i3 = 0; i3 < pointerCount; i3++) {
                a(motionEvent, i3, a2, 0, matrix, allocateDirect);
            }
        }
        if (allocateDirect.position() % 232 == 0) {
            this.f18884a.a(allocateDirect, allocateDirect.position());
            return true;
        }
        throw new AssertionError("Packet position is not on field boundary");
    }

    public boolean b(@NonNull MotionEvent motionEvent) {
        return a(motionEvent, f18883d);
    }

    public boolean a(@NonNull MotionEvent motionEvent) {
        boolean z = Build.VERSION.SDK_INT >= 18 && motionEvent.isFromSource(2);
        boolean z2 = motionEvent.getActionMasked() == 7 || motionEvent.getActionMasked() == 8;
        if (!z || !z2) {
            return false;
        }
        int a2 = a(motionEvent.getActionMasked());
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(motionEvent.getPointerCount() * 29 * 8);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        a(motionEvent, motionEvent.getActionIndex(), a2, 0, f18883d, allocateDirect);
        if (allocateDirect.position() % 232 == 0) {
            this.f18884a.a(allocateDirect, allocateDirect.position());
            return true;
        }
        throw new AssertionError("Packet position is not on field boundary.");
    }

    private void a(MotionEvent motionEvent, int i2, int i3, int i4, Matrix matrix, ByteBuffer byteBuffer) {
        long j2;
        double d2;
        double d3;
        InputDevice.MotionRange motionRange;
        if (i3 == -1) {
            return;
        }
        long a2 = this.f18886c ? this.f18885b.a(motionEvent).a() : 0L;
        int b2 = b(motionEvent.getToolType(i2));
        int i5 = motionEvent.getActionMasked() == 8 ? 1 : 0;
        long eventTime = motionEvent.getEventTime() * 1000;
        byteBuffer.putLong(a2);
        byteBuffer.putLong(eventTime);
        byteBuffer.putLong(i3);
        byteBuffer.putLong(b2);
        byteBuffer.putLong(i5);
        byteBuffer.putLong(motionEvent.getPointerId(i2));
        byteBuffer.putLong(0L);
        matrix.mapPoints(new float[]{motionEvent.getX(i2), motionEvent.getY(i2)});
        byteBuffer.putDouble(r9[0]);
        byteBuffer.putDouble(r9[1]);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(0.0d);
        if (b2 == 1) {
            j2 = motionEvent.getButtonState() & 31;
            if (j2 == 0 && motionEvent.getSource() == 8194 && (i3 == 4 || i3 == 5)) {
                j2 = 1;
            }
        } else {
            j2 = b2 == 2 ? (motionEvent.getButtonState() >> 4) & 15 : 0L;
        }
        byteBuffer.putLong(j2);
        byteBuffer.putLong(0L);
        byteBuffer.putLong(0L);
        byteBuffer.putDouble(motionEvent.getPressure(i2));
        double d4 = 1.0d;
        if (motionEvent.getDevice() == null || (motionRange = motionEvent.getDevice().getMotionRange(2)) == null) {
            d2 = 0.0d;
        } else {
            d2 = motionRange.getMin();
            d4 = motionRange.getMax();
        }
        byteBuffer.putDouble(d2);
        byteBuffer.putDouble(d4);
        if (b2 == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(24, i2));
            d3 = 0.0d;
            byteBuffer.putDouble(0.0d);
        } else {
            d3 = 0.0d;
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putDouble(motionEvent.getSize(i2));
        byteBuffer.putDouble(motionEvent.getToolMajor(i2));
        byteBuffer.putDouble(motionEvent.getToolMinor(i2));
        byteBuffer.putDouble(d3);
        byteBuffer.putDouble(d3);
        byteBuffer.putDouble(motionEvent.getAxisValue(8, i2));
        if (b2 == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(25, i2));
        } else {
            byteBuffer.putDouble(d3);
        }
        byteBuffer.putLong(i4);
        if (i5 == 1) {
            byteBuffer.putDouble(-motionEvent.getAxisValue(10));
            byteBuffer.putDouble(-motionEvent.getAxisValue(9));
        } else {
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
    }
}
