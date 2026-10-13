package io.flutter.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

@Keep
/* loaded from: classes2.dex */
class AccessibilityViewEmbedder {
    private static final String TAG = "AccessibilityBridge";
    private int nextFlutterId;
    private final View rootAccessibilityView;
    private final b reflectionAccessors = new b();
    private final SparseArray<c> flutterIdToOrigin = new SparseArray<>();
    private final Map<c, Integer> originToFlutterId = new HashMap();
    private final Map<View, Rect> embeddedViewToDisplayBounds = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private final Method f19524a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private final Method f19525b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        private final Method f19526c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        private final Method f19527d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        private final Field f19528e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        private final Method f19529f;

        private static boolean a(long j2, int i2) {
            return (j2 & (1 << i2)) != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int b(long j2) {
            return (int) (j2 >> 32);
        }

        @Nullable
        private static Long c(AccessibilityNodeInfo accessibilityNodeInfo) {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
            Parcel obtain2 = Parcel.obtain();
            obtain2.setDataPosition(0);
            obtain.writeToParcel(obtain2, 0);
            obtain2.setDataPosition(0);
            long readLong = obtain2.readLong();
            if (a(readLong, 0)) {
                obtain2.readInt();
            }
            if (a(readLong, 1)) {
                obtain2.readLong();
            }
            if (a(readLong, 2)) {
                obtain2.readInt();
            }
            Long valueOf = a(readLong, 3) ? Long.valueOf(obtain2.readLong()) : null;
            obtain2.recycle();
            return valueOf;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @SuppressLint({"PrivateApi"})
        private b() {
            Method method;
            Method method2;
            Method method3;
            Method method4;
            Method method5;
            Field field;
            Method method6 = null;
            try {
                method = AccessibilityNodeInfo.class.getMethod("getSourceNodeId", new Class[0]);
            } catch (NoSuchMethodException unused) {
                method = null;
            }
            try {
                method2 = AccessibilityRecord.class.getMethod("getSourceNodeId", new Class[0]);
            } catch (NoSuchMethodException unused2) {
                method2 = null;
            }
            if (Build.VERSION.SDK_INT <= 26) {
                try {
                    method3 = AccessibilityNodeInfo.class.getMethod("getParentNodeId", new Class[0]);
                } catch (NoSuchMethodException unused3) {
                    method3 = null;
                }
                try {
                    method4 = AccessibilityNodeInfo.class.getMethod("getChildId", Integer.TYPE);
                    method5 = null;
                } catch (NoSuchMethodException unused4) {
                    method4 = null;
                    method5 = null;
                }
                method6 = method3;
                field = method5;
            } else {
                try {
                    Field declaredField = AccessibilityNodeInfo.class.getDeclaredField("mChildNodeIds");
                    declaredField.setAccessible(true);
                    method5 = Class.forName("android.util.LongArray").getMethod("get", Integer.TYPE);
                    method4 = null;
                    field = declaredField;
                } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException | NullPointerException unused5) {
                    method4 = null;
                    field = 0;
                    method5 = null;
                }
            }
            this.f19524a = method;
            this.f19525b = method6;
            this.f19526c = method2;
            this.f19527d = method4;
            this.f19528e = field;
            this.f19529f = method5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public Long b(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            Method method = this.f19524a;
            if (method == null) {
                return null;
            }
            try {
                return (Long) method.invoke(accessibilityNodeInfo, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public Long a(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, int i2) {
            if (this.f19527d == null && (this.f19528e == null || this.f19529f == null)) {
                return null;
            }
            Method method = this.f19527d;
            try {
                return method != null ? (Long) method.invoke(accessibilityNodeInfo, Integer.valueOf(i2)) : Long.valueOf(((Long) this.f19529f.invoke(this.f19528e.get(accessibilityNodeInfo), Integer.valueOf(i2))).longValue());
            } catch (ArrayIndexOutOfBoundsException | IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public Long a(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            Method method = this.f19525b;
            if (method != null) {
                try {
                    return Long.valueOf(((Long) method.invoke(accessibilityNodeInfo, new Object[0])).longValue());
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
            }
            return c(accessibilityNodeInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public Long a(@NonNull AccessibilityRecord accessibilityRecord) {
            Method method = this.f19526c;
            if (method == null) {
                return null;
            }
            try {
                return (Long) method.invoke(accessibilityRecord, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        final View f19530a;

        /* renamed from: b, reason: collision with root package name */
        final int f19531b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f19531b == cVar.f19531b && this.f19530a.equals(cVar.f19530a);
        }

        public int hashCode() {
            return ((this.f19530a.hashCode() + 31) * 31) + this.f19531b;
        }

        private c(View view, int i2) {
            this.f19530a = view;
            this.f19531b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessibilityViewEmbedder(@NonNull View view, int i2) {
        this.rootAccessibilityView = view;
        this.nextFlutterId = i2;
    }

    private void addChildrenToFlutterNode(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, @NonNull View view, @NonNull AccessibilityNodeInfo accessibilityNodeInfo2) {
        int i2;
        for (int i3 = 0; i3 < accessibilityNodeInfo.getChildCount(); i3++) {
            Long a2 = this.reflectionAccessors.a(accessibilityNodeInfo, i3);
            if (a2 != null) {
                int b2 = b.b(a2.longValue());
                c cVar = new c(view, b2);
                if (this.originToFlutterId.containsKey(cVar)) {
                    i2 = this.originToFlutterId.get(cVar).intValue();
                } else {
                    int i4 = this.nextFlutterId;
                    this.nextFlutterId = i4 + 1;
                    cacheVirtualIdMappings(view, b2, i4);
                    i2 = i4;
                }
                accessibilityNodeInfo2.addChild(this.rootAccessibilityView, i2);
            }
        }
    }

    private void cacheVirtualIdMappings(@NonNull View view, int i2, int i3) {
        c cVar = new c(view, i2);
        this.originToFlutterId.put(cVar, Integer.valueOf(i3));
        this.flutterIdToOrigin.put(i3, cVar);
    }

    @NonNull
    private AccessibilityNodeInfo convertToFlutterNode(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, int i2, @NonNull View view) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.rootAccessibilityView, i2);
        obtain.setPackageName(this.rootAccessibilityView.getContext().getPackageName());
        obtain.setSource(this.rootAccessibilityView, i2);
        obtain.setClassName(accessibilityNodeInfo.getClassName());
        Rect rect = this.embeddedViewToDisplayBounds.get(view);
        copyAccessibilityFields(accessibilityNodeInfo, obtain);
        setFlutterNodesTranslateBounds(accessibilityNodeInfo, rect, obtain);
        addChildrenToFlutterNode(accessibilityNodeInfo, view, obtain);
        setFlutterNodeParent(accessibilityNodeInfo, view, obtain);
        return obtain;
    }

    private void copyAccessibilityFields(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, @NonNull AccessibilityNodeInfo accessibilityNodeInfo2) {
        accessibilityNodeInfo2.setAccessibilityFocused(accessibilityNodeInfo.isAccessibilityFocused());
        accessibilityNodeInfo2.setCheckable(accessibilityNodeInfo.isCheckable());
        accessibilityNodeInfo2.setChecked(accessibilityNodeInfo.isChecked());
        accessibilityNodeInfo2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        accessibilityNodeInfo2.setEnabled(accessibilityNodeInfo.isEnabled());
        accessibilityNodeInfo2.setClickable(accessibilityNodeInfo.isClickable());
        accessibilityNodeInfo2.setFocusable(accessibilityNodeInfo.isFocusable());
        accessibilityNodeInfo2.setFocused(accessibilityNodeInfo.isFocused());
        accessibilityNodeInfo2.setLongClickable(accessibilityNodeInfo.isLongClickable());
        accessibilityNodeInfo2.setMovementGranularities(accessibilityNodeInfo.getMovementGranularities());
        accessibilityNodeInfo2.setPassword(accessibilityNodeInfo.isPassword());
        accessibilityNodeInfo2.setScrollable(accessibilityNodeInfo.isScrollable());
        accessibilityNodeInfo2.setSelected(accessibilityNodeInfo.isSelected());
        accessibilityNodeInfo2.setText(accessibilityNodeInfo.getText());
        accessibilityNodeInfo2.setVisibleToUser(accessibilityNodeInfo.isVisibleToUser());
        if (Build.VERSION.SDK_INT >= 18) {
            accessibilityNodeInfo2.setEditable(accessibilityNodeInfo.isEditable());
        }
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityNodeInfo2.setCanOpenPopup(accessibilityNodeInfo.canOpenPopup());
            accessibilityNodeInfo2.setCollectionInfo(accessibilityNodeInfo.getCollectionInfo());
            accessibilityNodeInfo2.setCollectionItemInfo(accessibilityNodeInfo.getCollectionItemInfo());
            accessibilityNodeInfo2.setContentInvalid(accessibilityNodeInfo.isContentInvalid());
            accessibilityNodeInfo2.setDismissable(accessibilityNodeInfo.isDismissable());
            accessibilityNodeInfo2.setInputType(accessibilityNodeInfo.getInputType());
            accessibilityNodeInfo2.setLiveRegion(accessibilityNodeInfo.getLiveRegion());
            accessibilityNodeInfo2.setMultiLine(accessibilityNodeInfo.isMultiLine());
            accessibilityNodeInfo2.setRangeInfo(accessibilityNodeInfo.getRangeInfo());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            accessibilityNodeInfo2.setError(accessibilityNodeInfo.getError());
            accessibilityNodeInfo2.setMaxTextLength(accessibilityNodeInfo.getMaxTextLength());
        }
        if (Build.VERSION.SDK_INT >= 23) {
            accessibilityNodeInfo2.setContextClickable(accessibilityNodeInfo.isContextClickable());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            accessibilityNodeInfo2.setDrawingOrder(accessibilityNodeInfo.getDrawingOrder());
            accessibilityNodeInfo2.setImportantForAccessibility(accessibilityNodeInfo.isImportantForAccessibility());
        }
        if (Build.VERSION.SDK_INT >= 26) {
            accessibilityNodeInfo2.setAvailableExtraData(accessibilityNodeInfo.getAvailableExtraData());
            accessibilityNodeInfo2.setHintText(accessibilityNodeInfo.getHintText());
            accessibilityNodeInfo2.setShowingHintText(accessibilityNodeInfo.isShowingHintText());
        }
    }

    private void setFlutterNodeParent(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, @NonNull View view, @NonNull AccessibilityNodeInfo accessibilityNodeInfo2) {
        Long a2 = this.reflectionAccessors.a(accessibilityNodeInfo);
        if (a2 == null) {
            return;
        }
        Integer num = this.originToFlutterId.get(new c(view, b.b(a2.longValue())));
        if (num != null) {
            accessibilityNodeInfo2.setParent(this.rootAccessibilityView, num.intValue());
        }
    }

    private void setFlutterNodesTranslateBounds(@NonNull AccessibilityNodeInfo accessibilityNodeInfo, @NonNull Rect rect, @NonNull AccessibilityNodeInfo accessibilityNodeInfo2) {
        Rect rect2 = new Rect();
        accessibilityNodeInfo.getBoundsInParent(rect2);
        accessibilityNodeInfo2.setBoundsInParent(rect2);
        Rect rect3 = new Rect();
        accessibilityNodeInfo.getBoundsInScreen(rect3);
        rect3.offset(rect.left, rect.top);
        accessibilityNodeInfo2.setBoundsInScreen(rect3);
    }

    @Nullable
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
        AccessibilityNodeInfo createAccessibilityNodeInfo;
        c cVar = this.flutterIdToOrigin.get(i2);
        if (cVar == null || !this.embeddedViewToDisplayBounds.containsKey(cVar.f19530a) || cVar.f19530a.getAccessibilityNodeProvider() == null || (createAccessibilityNodeInfo = cVar.f19530a.getAccessibilityNodeProvider().createAccessibilityNodeInfo(cVar.f19531b)) == null) {
            return null;
        }
        return convertToFlutterNode(createAccessibilityNodeInfo, i2, cVar.f19530a);
    }

    @Nullable
    public Integer getRecordFlutterId(@NonNull View view, @NonNull AccessibilityRecord accessibilityRecord) {
        Long a2 = this.reflectionAccessors.a(accessibilityRecord);
        if (a2 == null) {
            return null;
        }
        return this.originToFlutterId.get(new c(view, b.b(a2.longValue())));
    }

    public AccessibilityNodeInfo getRootNode(@NonNull View view, int i2, @NonNull Rect rect) {
        AccessibilityNodeInfo createAccessibilityNodeInfo = view.createAccessibilityNodeInfo();
        Long b2 = this.reflectionAccessors.b(createAccessibilityNodeInfo);
        if (b2 == null) {
            return null;
        }
        this.embeddedViewToDisplayBounds.put(view, rect);
        cacheVirtualIdMappings(view, b.b(b2.longValue()), i2);
        return convertToFlutterNode(createAccessibilityNodeInfo, i2, view);
    }

    public boolean onAccessibilityHoverEvent(int i2, @NonNull MotionEvent motionEvent) {
        c cVar = this.flutterIdToOrigin.get(i2);
        if (cVar == null) {
            return false;
        }
        Rect rect = this.embeddedViewToDisplayBounds.get(cVar.f19530a);
        int pointerCount = motionEvent.getPointerCount();
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i3 = 0; i3 < motionEvent.getPointerCount(); i3++) {
            pointerPropertiesArr[i3] = new MotionEvent.PointerProperties();
            motionEvent.getPointerProperties(i3, pointerPropertiesArr[i3]);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            motionEvent.getPointerCoords(i3, pointerCoords);
            pointerCoordsArr[i3] = new MotionEvent.PointerCoords(pointerCoords);
            pointerCoordsArr[i3].x -= rect.left;
            pointerCoordsArr[i3].y -= rect.top;
        }
        return cVar.f19530a.dispatchGenericMotionEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), motionEvent.getPointerCount(), pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags()));
    }

    public boolean performAction(int i2, int i3, @Nullable Bundle bundle) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        c cVar = this.flutterIdToOrigin.get(i2);
        if (cVar == null || (accessibilityNodeProvider = cVar.f19530a.getAccessibilityNodeProvider()) == null) {
            return false;
        }
        return accessibilityNodeProvider.performAction(cVar.f19531b, i3, bundle);
    }

    public View platformViewOfNode(int i2) {
        c cVar = this.flutterIdToOrigin.get(i2);
        if (cVar == null) {
            return null;
        }
        return cVar.f19530a;
    }

    public boolean requestSendAccessibilityEvent(@NonNull View view, @NonNull View view2, @NonNull AccessibilityEvent accessibilityEvent) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(accessibilityEvent);
        Long a2 = this.reflectionAccessors.a(accessibilityEvent);
        if (a2 == null) {
            return false;
        }
        int b2 = b.b(a2.longValue());
        Integer num = this.originToFlutterId.get(new c(view, b2));
        if (num == null) {
            int i2 = this.nextFlutterId;
            this.nextFlutterId = i2 + 1;
            num = Integer.valueOf(i2);
            cacheVirtualIdMappings(view, b2, num.intValue());
        }
        obtain.setSource(this.rootAccessibilityView, num.intValue());
        obtain.setClassName(accessibilityEvent.getClassName());
        obtain.setPackageName(accessibilityEvent.getPackageName());
        for (int i3 = 0; i3 < obtain.getRecordCount(); i3++) {
            AccessibilityRecord record = obtain.getRecord(i3);
            Long a3 = this.reflectionAccessors.a(record);
            if (a3 == null) {
                return false;
            }
            c cVar = new c(view, b.b(a3.longValue()));
            if (!this.originToFlutterId.containsKey(cVar)) {
                return false;
            }
            record.setSource(this.rootAccessibilityView, this.originToFlutterId.get(cVar).intValue());
        }
        return this.rootAccessibilityView.getParent().requestSendAccessibilityEvent(view2, obtain);
    }
}
