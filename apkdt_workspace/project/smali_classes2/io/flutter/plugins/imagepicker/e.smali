.class public Lio/flutter/plugins/imagepicker/e;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/e$b;
    }
.end annotation


# instance fields
.field private final e:Lg/a/c/a/m$d;

.field private f:Lio/flutter/plugins/imagepicker/d;

.field private g:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lg/a/c/a/m$d;Lio/flutter/plugins/imagepicker/d;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/e;->e:Lg/a/c/a/m$d;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    .line 4
    new-instance v0, Lio/flutter/plugins/imagepicker/e$a;

    invoke-direct {v0, p0, p1, p2}, Lio/flutter/plugins/imagepicker/e$a;-><init>(Lio/flutter/plugins/imagepicker/e;Lg/a/c/a/m$d;Lio/flutter/plugins/imagepicker/d;)V

    iput-object v0, p0, Lio/flutter/plugins/imagepicker/e;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/e;->e:Lg/a/c/a/m$d;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/flutter/plugins/imagepicker/e;->e:Lg/a/c/a/m$d;

    .line 7
    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/e;->e:Lg/a/c/a/m$d;

    .line 9
    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 11
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/c;->a(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Lg/a/c/a/k;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v1

    const-string v2, "plugins.flutter.io/image_picker"

    invoke-direct {v0, v1, v2}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Lio/flutter/plugins/imagepicker/a;

    invoke-direct {v2}, Lio/flutter/plugins/imagepicker/a;-><init>()V

    .line 6
    new-instance v3, Lio/flutter/plugins/imagepicker/g;

    invoke-direct {v3, v1, v2}, Lio/flutter/plugins/imagepicker/g;-><init>(Ljava/io/File;Lio/flutter/plugins/imagepicker/a;)V

    .line 7
    new-instance v2, Lio/flutter/plugins/imagepicker/d;

    .line 8
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3}, Lio/flutter/plugins/imagepicker/d;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/g;)V

    .line 9
    invoke-interface {p0, v2}, Lg/a/c/a/m$d;->a(Lg/a/c/a/m$a;)Lg/a/c/a/m$d;

    .line 10
    invoke-interface {p0, v2}, Lg/a/c/a/m$d;->a(Lg/a/c/a/m$e;)Lg/a/c/a/m$d;

    .line 11
    new-instance v1, Lio/flutter/plugins/imagepicker/e;

    invoke-direct {v1, p0, v2}, Lio/flutter/plugins/imagepicker/e;-><init>(Lg/a/c/a/m$d;Lio/flutter/plugins/imagepicker/d;)V

    .line 12
    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/e;->e:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "no_activity"

    const-string v1, "image_picker plugin requires a foreground activity."

    .line 2
    invoke-interface {p2, v0, v1, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lio/flutter/plugins/imagepicker/e$b;

    invoke-direct {v0, p2}, Lio/flutter/plugins/imagepicker/e$b;-><init>(Lg/a/c/a/k$d;)V

    .line 4
    iget-object p2, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x56dcda46

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x56276f26

    if-eq v2, v3, :cond_2

    const v3, -0x127abfc4

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "retrieve"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "pickVideo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "pickImage"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    const-string p2, "source"

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_5

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p1, v0}, Lio/flutter/plugins/imagepicker/d;->a(Lg/a/c/a/k$d;)V

    goto/16 :goto_1

    .line 6
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_6
    invoke-virtual {p1, p2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_8

    if-ne p2, v5, :cond_7

    .line 8
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/d;->b(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_1

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid video source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/d;->d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_1

    .line 11
    :cond_9
    invoke-virtual {p1, p2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_b

    if-ne p2, v5, :cond_a

    .line 12
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/d;->a(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_1

    .line 13
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid image source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_b
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/e;->f:Lio/flutter/plugins/imagepicker/d;

    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/d;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    :goto_1
    return-void
.end method
