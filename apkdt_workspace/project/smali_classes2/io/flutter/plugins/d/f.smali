.class public final synthetic Lio/flutter/plugins/d/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/common/util/concurrent/f;

.field private final synthetic f:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/d/f;->e:Lcom/google/common/util/concurrent/f;

    iput-object p2, p0, Lio/flutter/plugins/d/f;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/d/f;->e:Lcom/google/common/util/concurrent/f;

    iget-object v1, p0, Lio/flutter/plugins/d/f;->f:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lio/flutter/plugins/d/h;->a(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Callable;)V

    return-void
.end method
