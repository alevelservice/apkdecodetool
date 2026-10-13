package io.flutter.plugins.f;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.os.Build;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: DisplayListenerProxy.java */
@TargetApi(19)
/* loaded from: classes2.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private ArrayList<DisplayManager.DisplayListener> f19366a;

    /* compiled from: DisplayListenerProxy.java */
    /* renamed from: io.flutter.plugins.f.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0245a implements DisplayManager.DisplayListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f19367a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ DisplayManager f19368b;

        C0245a(a aVar, ArrayList arrayList, DisplayManager displayManager) {
            this.f19367a = arrayList;
            this.f19368b = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i2) {
            Iterator it = this.f19367a.iterator();
            while (it.hasNext()) {
                ((DisplayManager.DisplayListener) it.next()).onDisplayAdded(i2);
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i2) {
            if (this.f19368b.getDisplay(i2) == null) {
                return;
            }
            Iterator it = this.f19367a.iterator();
            while (it.hasNext()) {
                ((DisplayManager.DisplayListener) it.next()).onDisplayChanged(i2);
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i2) {
            Iterator it = this.f19367a.iterator();
            while (it.hasNext()) {
                ((DisplayManager.DisplayListener) it.next()).onDisplayRemoved(i2);
            }
        }
    }

    private static ArrayList<DisplayManager.DisplayListener> c(DisplayManager displayManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new ArrayList<>();
        }
        try {
            Field declaredField = DisplayManager.class.getDeclaredField("mGlobal");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(displayManager);
            Field declaredField2 = obj.getClass().getDeclaredField("mDisplayListeners");
            declaredField2.setAccessible(true);
            ArrayList arrayList = (ArrayList) declaredField2.get(obj);
            Field field = null;
            ArrayList<DisplayManager.DisplayListener> arrayList2 = new ArrayList<>();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (field == null) {
                    field = next.getClass().getField("mListener");
                    field.setAccessible(true);
                }
                arrayList2.add((DisplayManager.DisplayListener) field.get(next));
            }
            return arrayList2;
        } catch (IllegalAccessException | NoSuchFieldException e2) {
            String str = "Could not extract WebView's display listeners. " + e2;
            return new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(DisplayManager displayManager) {
        ArrayList<DisplayManager.DisplayListener> c2 = c(displayManager);
        c2.removeAll(this.f19366a);
        if (c2.isEmpty()) {
            return;
        }
        Iterator<DisplayManager.DisplayListener> it = c2.iterator();
        while (it.hasNext()) {
            displayManager.unregisterDisplayListener(it.next());
            displayManager.registerDisplayListener(new C0245a(this, c2, displayManager), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(DisplayManager displayManager) {
        this.f19366a = c(displayManager);
    }
}
