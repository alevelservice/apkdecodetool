.class Lio/flutter/plugin/platform/k$a$a;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/k$a;->a(Lio/flutter/embedding/engine/i/i$c;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/flutter/plugin/platform/l;

.field final synthetic f:Ljava/lang/Runnable;

.field final synthetic g:Lio/flutter/plugin/platform/k$a;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/k$a;Lio/flutter/plugin/platform/l;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/k$a$a;->g:Lio/flutter/plugin/platform/k$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/k$a$a;->e:Lio/flutter/plugin/platform/l;

    iput-object p3, p0, Lio/flutter/plugin/platform/k$a$a;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a$a;->g:Lio/flutter/plugin/platform/k$a;

    iget-object v0, v0, Lio/flutter/plugin/platform/k$a;->a:Lio/flutter/plugin/platform/k;

    iget-object v1, p0, Lio/flutter/plugin/platform/k$a$a;->e:Lio/flutter/plugin/platform/l;

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/k;->b(Lio/flutter/plugin/platform/k;Lio/flutter/plugin/platform/l;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/platform/k$a$a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
