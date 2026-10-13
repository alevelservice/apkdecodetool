.class Lio/flutter/plugins/imagepicker/e$b$a;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/e$b;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lio/flutter/plugins/imagepicker/e$b;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/e$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/e$b$a;->f:Lio/flutter/plugins/imagepicker/e$b;

    iput-object p2, p0, Lio/flutter/plugins/imagepicker/e$b$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/e$b$a;->f:Lio/flutter/plugins/imagepicker/e$b;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/e$b;->a(Lio/flutter/plugins/imagepicker/e$b;)Lg/a/c/a/k$d;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/imagepicker/e$b$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method
