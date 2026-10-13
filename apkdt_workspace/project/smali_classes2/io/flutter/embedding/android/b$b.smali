.class interface abstract Lio/flutter/embedding/android/b$b;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Lio/flutter/embedding/android/j;
.implements Lio/flutter/embedding/android/e;
.implements Lio/flutter/embedding/android/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract cleanUpFlutterEngine(Lio/flutter/embedding/engine/a;)V
    .param p1    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureFlutterEngine(Lio/flutter/embedding/engine/a;)V
    .param p1    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppBundlePath()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCachedEngineId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDartEntrypointFunctionName()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getFlutterShellArgs()Lio/flutter/embedding/engine/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getInitialRoute()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLifecycle()Landroidx/lifecycle/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRenderMode()Lio/flutter/embedding/android/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTransparencyMode()Lio/flutter/embedding/android/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .param p1    # Lio/flutter/embedding/android/FlutterSurfaceView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V
    .param p1    # Lio/flutter/embedding/android/FlutterTextureView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onFlutterUiDisplayed()V
.end method

.method public abstract onFlutterUiNoLongerDisplayed()V
.end method

.method public abstract provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/a;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/d;
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract provideSplashScreen()Lio/flutter/embedding/android/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract shouldAttachEngineToActivity()Z
.end method

.method public abstract shouldDestroyEngineWithHost()Z
.end method

.method public abstract shouldRestoreAndSaveState()Z
.end method
