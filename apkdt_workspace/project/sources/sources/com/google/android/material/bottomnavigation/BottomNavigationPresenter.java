package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationPresenter implements m {

    /* renamed from: e, reason: collision with root package name */
    private f f13691e;

    /* renamed from: f, reason: collision with root package name */
    private BottomNavigationMenuView f13692f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f13693g = false;

    /* renamed from: h, reason: collision with root package name */
    private int f13694h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        int f13695e;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            parcel.writeInt(this.f13695e);
        }

        SavedState(Parcel parcel) {
            this.f13695e = parcel.readInt();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(f fVar, boolean z) {
    }

    public void a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f13692f = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(f fVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable b() {
        SavedState savedState = new SavedState();
        savedState.f13695e = this.f13692f.getSelectedItemId();
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(f fVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.f13694h;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, f fVar) {
        this.f13691e = fVar;
        this.f13692f.initialize(this.f13691e);
    }

    public void b(boolean z) {
        this.f13693g = z;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        if (this.f13693g) {
            return;
        }
        if (z) {
            this.f13692f.buildMenuView();
        } else {
            this.f13692f.updateMenuView();
        }
    }

    public void a(int i2) {
        this.f13694h = i2;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f13692f.tryRestoreSelectedItemId(((SavedState) parcelable).f13695e);
        }
    }
}
