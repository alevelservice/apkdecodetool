package com.example.native_webview;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.example.native_webview.j.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DataBinderMapperImpl.java */
/* loaded from: classes.dex */
public class b extends androidx.databinding.d {

    /* renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f3442a = new SparseIntArray(5);

    static {
        f3442a.put(h.activity_web_view, 1);
        f3442a.put(h.dialog_loading, 2);
        f3442a.put(h.error_banner_basic, 3);
        f3442a.put(h.fragment_webview, 4);
        f3442a.put(h.toolbar, 5);
    }

    @Override // androidx.databinding.d
    public ViewDataBinding a(androidx.databinding.f fVar, View view, int i2) {
        int i3 = f3442a.get(i2);
        if (i3 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i3 == 1) {
            if ("layout/activity_web_view_0".equals(tag)) {
                return new com.example.native_webview.j.b(fVar, view);
            }
            throw new IllegalArgumentException("The tag for activity_web_view is invalid. Received: " + tag);
        }
        if (i3 == 2) {
            if ("layout/dialog_loading_0".equals(tag)) {
                return new com.example.native_webview.j.d(fVar, view);
            }
            throw new IllegalArgumentException("The tag for dialog_loading is invalid. Received: " + tag);
        }
        if (i3 == 3) {
            if ("layout/error_banner_basic_0".equals(tag)) {
                return new com.example.native_webview.j.f(fVar, view);
            }
            throw new IllegalArgumentException("The tag for error_banner_basic is invalid. Received: " + tag);
        }
        if (i3 == 4) {
            if ("layout/fragment_webview_0".equals(tag)) {
                return new com.example.native_webview.j.h(fVar, view);
            }
            throw new IllegalArgumentException("The tag for fragment_webview is invalid. Received: " + tag);
        }
        if (i3 != 5) {
            return null;
        }
        if ("layout/toolbar_0".equals(tag)) {
            return new j(fVar, view);
        }
        throw new IllegalArgumentException("The tag for toolbar is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.d
    public ViewDataBinding a(androidx.databinding.f fVar, View[] viewArr, int i2) {
        if (viewArr == null || viewArr.length == 0 || f3442a.get(i2) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.d
    public List<androidx.databinding.d> a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.m.b.a());
        return arrayList;
    }
}
