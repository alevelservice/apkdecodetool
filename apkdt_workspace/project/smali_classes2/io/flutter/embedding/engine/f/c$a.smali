.class Lio/flutter/embedding/engine/f/c$a;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/f/c;->a(Landroid/content/Context;Lio/flutter/embedding/engine/f/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/flutter/embedding/engine/f/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lio/flutter/embedding/engine/f/c;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/f/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/f/c$a;->f:Lio/flutter/embedding/engine/f/c;

    iput-object p2, p0, Lio/flutter/embedding/engine/f/c$a;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/flutter/embedding/engine/f/c$c;
    .locals 5

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/f/c$a;->f:Lio/flutter/embedding/engine/f/c;

    iget-object v1, p0, Lio/flutter/embedding/engine/f/c$a;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/flutter/embedding/engine/f/c;->a(Lio/flutter/embedding/engine/f/c;Landroid/content/Context;)Lio/flutter/embedding/engine/f/d;

    move-result-object v0

    .line 3
    invoke-static {}, Lg/a/a;->c()Lg/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "flutter"

    .line 4
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/flutter/embedding/engine/f/c$a$a;

    invoke-direct {v2, p0}, Lio/flutter/embedding/engine/f/c$a$a;-><init>(Lio/flutter/embedding/engine/f/c$a;)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lio/flutter/embedding/engine/f/c$c;

    iget-object v2, p0, Lio/flutter/embedding/engine/f/c$a;->e:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lg/a/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/engine/f/c$a;->e:Landroid/content/Context;

    .line 9
    invoke-static {v3}, Lg/a/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/embedding/engine/f/c$a;->e:Landroid/content/Context;

    .line 10
    invoke-static {v4}, Lg/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lio/flutter/embedding/engine/f/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/f/c$a;)V

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lio/flutter/embedding/engine/f/d;->a()V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/f/c$a;->call()Lio/flutter/embedding/engine/f/c$c;

    move-result-object v0

    return-object v0
.end method
