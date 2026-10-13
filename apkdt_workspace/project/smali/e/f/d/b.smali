.class public abstract Le/f/d/b;
.super Ljava/lang/Object;
.source "BaseDataSubscriber.java"

# interfaces
.implements Le/f/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/d/e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Le/f/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/f/d/b;->e(Le/f/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1}, Le/f/d/c;->close()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Le/f/d/c;->close()Z

    .line 3
    throw v0
.end method

.method public c(Le/f/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/f/d/c;->b()Z

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/f/d/b;->f(Le/f/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Le/f/d/c;->close()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Le/f/d/c;->close()Z

    .line 4
    :cond_1
    throw v1
.end method

.method protected abstract e(Le/f/d/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract f(Le/f/d/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/d/c<",
            "TT;>;)V"
        }
    .end annotation
.end method
