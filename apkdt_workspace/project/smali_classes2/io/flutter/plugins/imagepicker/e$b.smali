.class Lio/flutter/plugins/imagepicker/e$b;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lg/a/c/a/k$d;

.field private b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/e$b;->a:Lg/a/c/a/k$d;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/e$b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/imagepicker/e$b;)Lg/a/c/a/k$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/imagepicker/e$b;->a:Lg/a/c/a/k$d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/e$b;->b:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/e$b$c;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/e$b$c;-><init>(Lio/flutter/plugins/imagepicker/e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/e$b;->b:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/e$b$a;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/imagepicker/e$b$a;-><init>(Lio/flutter/plugins/imagepicker/e$b;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/e$b;->b:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/e$b$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/flutter/plugins/imagepicker/e$b$b;-><init>(Lio/flutter/plugins/imagepicker/e$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
