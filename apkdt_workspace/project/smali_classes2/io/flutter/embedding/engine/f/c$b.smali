.class Lio/flutter/embedding/engine/f/c$b;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/f/c;->a(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/content/Context;

.field final synthetic f:[Ljava/lang/String;

.field final synthetic g:Landroid/os/Handler;

.field final synthetic h:Ljava/lang/Runnable;

.field final synthetic i:Lio/flutter/embedding/engine/f/c;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/f/c;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/f/c$b;->i:Lio/flutter/embedding/engine/f/c;

    iput-object p2, p0, Lio/flutter/embedding/engine/f/c$b;->e:Landroid/content/Context;

    iput-object p3, p0, Lio/flutter/embedding/engine/f/c$b;->f:[Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/embedding/engine/f/c$b;->g:Landroid/os/Handler;

    iput-object p5, p0, Lio/flutter/embedding/engine/f/c$b;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/f/c$b;->i:Lio/flutter/embedding/engine/f/c;

    iget-object v0, v0, Lio/flutter/embedding/engine/f/c;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/f/c$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/flutter/embedding/engine/f/c$b$a;

    invoke-direct {v1, p0}, Lio/flutter/embedding/engine/f/c$b$a;-><init>(Lio/flutter/embedding/engine/f/c$b;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
