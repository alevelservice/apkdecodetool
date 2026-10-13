.class Lio/flutter/plugins/imagepicker/e$a;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/e;-><init>(Lg/a/c/a/m$d;Lio/flutter/plugins/imagepicker/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/m$d;

.field final synthetic f:Lio/flutter/plugins/imagepicker/d;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/e;Lg/a/c/a/m$d;Lio/flutter/plugins/imagepicker/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/e$a;->e:Lg/a/c/a/m$d;

    iput-object p3, p0, Lio/flutter/plugins/imagepicker/e$a;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e$a;->e:Lg/a/c/a/m$d;

    invoke-interface {p2}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/e$a;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/d;->a()V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
