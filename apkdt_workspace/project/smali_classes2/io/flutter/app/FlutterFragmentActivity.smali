.class public Lio/flutter/app/FlutterFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FlutterFragmentActivity.java"

# interfaces
.implements Lio/flutter/view/FlutterView$e;
.implements Lg/a/c/a/m;
.implements Lio/flutter/app/a$b;


# instance fields
.field private final e:Lio/flutter/app/a;

.field private final f:Lio/flutter/app/b;

.field private final g:Lio/flutter/view/FlutterView$e;

.field private final h:Lg/a/c/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/app/a;

    invoke-direct {v0, p0, p0}, Lio/flutter/app/a;-><init>(Landroid/app/Activity;Lio/flutter/app/a$b;)V

    iput-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->e:Lio/flutter/app/a;

    .line 3
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->e:Lio/flutter/app/a;

    iput-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    .line 4
    iput-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->g:Lio/flutter/view/FlutterView$e;

    .line 5
    iput-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->h:Lg/a/c/a/m;

    return-void
.end method


# virtual methods
.method public createFlutterNativeView()Lio/flutter/view/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createFlutterView(Landroid/content/Context;)Lio/flutter/view/FlutterView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFlutterView()Lio/flutter/view/FlutterView;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->g:Lio/flutter/view/FlutterView$e;

    invoke-interface {v0}, Lio/flutter/view/FlutterView$e;->getFlutterView()Lio/flutter/view/FlutterView;

    move-result-object v0

    return-object v0
.end method

.method public final hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->h:Lg/a/c/a/m;

    invoke-interface {v0, p1}, Lg/a/c/a/m;->hasPlugin(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/m$a;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1}, Lio/flutter/app/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onDestroy()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1}, Lio/flutter/app/b;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onPostResume()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/m$e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onStop()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->f:Lio/flutter/app/b;

    invoke-interface {v0}, Lio/flutter/app/b;->onUserLeaveHint()V

    return-void
.end method

.method public final registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->h:Lg/a/c/a/m;

    invoke-interface {v0, p1}, Lg/a/c/a/m;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object p1

    return-object p1
.end method

.method public retainFlutterNativeView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterFragmentActivity;->h:Lg/a/c/a/m;

    invoke-interface {v0, p1}, Lg/a/c/a/m;->valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
