.class public Lcom/facebook/imagepipeline/memory/p;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/p$b;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Le/f/c/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/c<",
            "[B>;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/memory/p$b;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/c/f/c;Lcom/facebook/imagepipeline/memory/f0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p2, Lcom/facebook/imagepipeline/memory/f0;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/memory/p$b;

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/memory/a0;->c()Lcom/facebook/imagepipeline/memory/a0;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/p$b;-><init>(Le/f/c/f/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/memory/p$a;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/p$a;-><init>(Lcom/facebook/imagepipeline/memory/p;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/p;->a:Le/f/c/g/c;

    return-void
.end method


# virtual methods
.method public a(I)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/f/c/g/a<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->a:Le/f/c/g/c;

    invoke-static {p1, v0}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->b:Lcom/facebook/imagepipeline/memory/p$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/a;->a(Ljava/lang/Object;)V

    return-void
.end method
