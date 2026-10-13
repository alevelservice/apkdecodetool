package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.m;
import com.alipay.mobile.security.faceauth.api.AntDetector;

/* compiled from: MenuDialogHelper.java */
/* loaded from: classes.dex */
class g implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {

    /* renamed from: e, reason: collision with root package name */
    private f f1003e;

    /* renamed from: f, reason: collision with root package name */
    private androidx.appcompat.app.c f1004f;

    /* renamed from: g, reason: collision with root package name */
    d f1005g;

    /* renamed from: h, reason: collision with root package name */
    private m.a f1006h;

    public g(f fVar) {
        this.f1003e = fVar;
    }

    public void a(IBinder iBinder) {
        f fVar = this.f1003e;
        c.a aVar = new c.a(fVar.e());
        this.f1005g = new d(aVar.b(), a.a.g.abc_list_menu_item_layout);
        this.f1005g.a(this);
        this.f1003e.a(this.f1005g);
        aVar.a(this.f1005g.c(), this);
        View i2 = fVar.i();
        if (i2 != null) {
            aVar.a(i2);
        } else {
            aVar.a(fVar.g());
            aVar.b(fVar.h());
        }
        aVar.a(this);
        this.f1004f = aVar.a();
        this.f1004f.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1004f.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= AntDetector.SCENE_ID_LOGIN_REGIST;
        this.f1004f.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f1003e.a((i) this.f1005g.c().getItem(i2), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1005g.a(this.f1003e, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1004f.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1004f.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1003e.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1003e.performShortcut(i2, keyEvent, 0);
    }

    public void a() {
        androidx.appcompat.app.c cVar = this.f1004f;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void a(f fVar, boolean z) {
        if (z || fVar == this.f1003e) {
            a();
        }
        m.a aVar = this.f1006h;
        if (aVar != null) {
            aVar.a(fVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean a(f fVar) {
        m.a aVar = this.f1006h;
        if (aVar != null) {
            return aVar.a(fVar);
        }
        return false;
    }
}
