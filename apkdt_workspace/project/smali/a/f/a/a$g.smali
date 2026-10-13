.class final La/f/a/a$g;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final e:La/f/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/a/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final f:Lcom/google/common/util/concurrent/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e<",
            "+TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, La/f/a/a$g;->e:La/f/a/a;

    iget-object v0, v0, La/f/a/a;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/f/a/a$g;->f:Lcom/google/common/util/concurrent/e;

    invoke-static {v0}, La/f/a/a;->a(Lcom/google/common/util/concurrent/e;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, La/f/a/a;->j:La/f/a/a$b;

    iget-object v2, p0, La/f/a/a$g;->e:La/f/a/a;

    invoke-virtual {v1, v2, p0, v0}, La/f/a/a$b;->a(La/f/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, La/f/a/a$g;->e:La/f/a/a;

    invoke-static {v0}, La/f/a/a;->a(La/f/a/a;)V

    :cond_1
    return-void
.end method
