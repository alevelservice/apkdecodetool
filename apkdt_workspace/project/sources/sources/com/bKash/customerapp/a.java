package com.intercept.customerapp;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.d;
import androidx.databinding.f;
import com.example.native_webview.b;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DataBinderMapperImpl.java */
/* loaded from: classes.dex */
public class a extends d {

    /* renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f3365a = new SparseIntArray(0);

    @Override // androidx.databinding.d
    public ViewDataBinding a(f fVar, View view, int i2) {
        if (f3365a.get(i2) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.d
    public ViewDataBinding a(f fVar, View[] viewArr, int i2) {
        if (viewArr == null || viewArr.length == 0 || f3365a.get(i2) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.d
    public List<d> a() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new androidx.databinding.m.b.a());
        arrayList.add(new b());
        return arrayList;
    }
}
