.class public Lcom/facebook/imagepipeline/producers/o;
.super Ljava/lang/Object;
.source "DiskCacheWriteProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/f/i/c/e;

.field private final b:Le/f/i/c/e;

.field private final c:Le/f/i/c/f;

.field private final d:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o;->a:Le/f/i/c/e;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o;->b:Le/f/i/c/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/o;->c:Le/f/i/c/f;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/o;->d:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->g()Le/f/i/i/b$b;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/i/b$b;->getValue()I

    move-result v0

    sget-object v1, Le/f/i/i/b$b;->DISK_CACHE:Le/f/i/i/b$b;

    .line 2
    invoke-virtual {v1}, Le/f/i/i/b$b;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/i/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/o$b;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/o;->a:Le/f/i/c/e;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/o;->b:Le/f/i/c/e;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/o;->c:Le/f/i/c/f;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/o$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/o$a;)V

    move-object p1, v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o;->d:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/i0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
.end method
