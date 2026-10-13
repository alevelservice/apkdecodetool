.class Lio/flutter/embedding/engine/i/i$a$a;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/i/i$a;->d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/i/i$a;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/flutter/embedding/engine/i/i$a$a;->e:Lg/a/c/a/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/i/i$a$a;->e:Lg/a/c/a/k$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method
