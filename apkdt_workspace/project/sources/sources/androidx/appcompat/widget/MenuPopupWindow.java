package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements t {
    private static Method N;
    private t M;

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class MenuDropDownListView extends q {
        final int mAdvanceKey;
        final int mRetreatKey;
        private t r;
        private MenuItem s;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.mAdvanceKey = 21;
                this.mRetreatKey = 22;
            } else {
                this.mAdvanceKey = 22;
                this.mRetreatKey = 21;
            }
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override // androidx.appcompat.widget.q, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.q, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.q, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.q, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.q
        public /* bridge */ /* synthetic */ int lookForSelectablePosition(int i2, boolean z) {
            return super.lookForSelectablePosition(i2, z);
        }

        @Override // androidx.appcompat.widget.q
        public /* bridge */ /* synthetic */ int measureHeightOfChildrenCompat(int i2, int i3, int i4, int i5, int i6) {
            return super.measureHeightOfChildrenCompat(i2, i3, i4, i5, i6);
        }

        @Override // androidx.appcompat.widget.q
        public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i2) {
            return super.onForwardedEvent(motionEvent, i2);
        }

        @Override // androidx.appcompat.widget.q, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i2;
            androidx.appcompat.view.menu.e eVar;
            int pointToPosition;
            int i3;
            if (this.r != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i2 = headerViewListAdapter.getHeadersCount();
                    eVar = (androidx.appcompat.view.menu.e) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i2 = 0;
                    eVar = (androidx.appcompat.view.menu.e) adapter;
                }
                androidx.appcompat.view.menu.i iVar = null;
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i3 = pointToPosition - i2) >= 0 && i3 < eVar.getCount()) {
                    iVar = eVar.getItem(i3);
                }
                MenuItem menuItem = this.s;
                if (menuItem != iVar) {
                    androidx.appcompat.view.menu.f b2 = eVar.b();
                    if (menuItem != null) {
                        this.r.b(b2, menuItem);
                    }
                    this.s = iVar;
                    if (iVar != null) {
                        this.r.a(b2, iVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i2, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i2 == this.mAdvanceKey) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView != null && i2 == this.mRetreatKey) {
                setSelection(-1);
                ((androidx.appcompat.view.menu.e) getAdapter()).b().a(false);
                return true;
            }
            return super.onKeyDown(i2, keyEvent);
        }

        @Override // androidx.appcompat.widget.q, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(t tVar) {
            this.r = tVar;
        }

        @Override // androidx.appcompat.widget.q, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                N = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public MenuPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    @NonNull
    q a(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.I.setExitTransition((Transition) obj);
        }
    }

    public void c(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = N;
            if (method != null) {
                try {
                    method.invoke(this.I, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.I.setTouchModal(z);
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.I.setEnterTransition((Transition) obj);
        }
    }

    @Override // androidx.appcompat.widget.t
    public void b(@NonNull androidx.appcompat.view.menu.f fVar, @NonNull MenuItem menuItem) {
        t tVar = this.M;
        if (tVar != null) {
            tVar.b(fVar, menuItem);
        }
    }

    public void a(t tVar) {
        this.M = tVar;
    }

    @Override // androidx.appcompat.widget.t
    public void a(@NonNull androidx.appcompat.view.menu.f fVar, @NonNull MenuItem menuItem) {
        t tVar = this.M;
        if (tVar != null) {
            tVar.a(fVar, menuItem);
        }
    }
}
