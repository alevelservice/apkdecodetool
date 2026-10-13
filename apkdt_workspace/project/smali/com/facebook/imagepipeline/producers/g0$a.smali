.class public Lcom/facebook/imagepipeline/producers/g0$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessedBitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:Le/f/b/a/d;

.field private final d:Z

.field private final e:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/b/a/d;ZLe/f/i/c/p;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;",
            "Le/f/b/a/d;",
            "Z",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/g0$a;->c:Le/f/b/a/d;

    .line 3
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/g0$a;->d:Z

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/g0$a;->e:Le/f/i/c/p;

    .line 5
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/g0$a;->f:Z

    return-void
.end method


# virtual methods
.method protected a(Le/f/c/g/a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->d:Z

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->f:Z

    if-eqz v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g0$a;->e:Le/f/i/c/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/g0$a;->c:Le/f/b/a/d;

    invoke-interface {v0, v1, p1}, Le/f/i/c/p;->a(Ljava/lang/Object;Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    .line 6
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(F)V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    if-eqz v0, :cond_4

    move-object p1, v0

    :cond_4
    invoke-interface {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 9
    throw p1
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/g0$a;->a(Le/f/c/g/a;I)V

    return-void
.end method
