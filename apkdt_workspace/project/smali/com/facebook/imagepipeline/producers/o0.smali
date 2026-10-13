.class public Lcom/facebook/imagepipeline/producers/o0;
.super Lcom/facebook/imagepipeline/producers/d;
.source "SettableProducerContext.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Le/f/i/i/b;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 9

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->a()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->g()Le/f/i/i/b$b;

    move-result-object v5

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->d()Z

    move-result v6

    .line 6
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->f()Z

    move-result v7

    .line 7
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->b()Lcom/facebook/imagepipeline/common/d;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/o0;-><init>(Le/f/i/i/b;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/Object;Le/f/i/i/b$b;ZZLcom/facebook/imagepipeline/common/d;)V

    return-void
.end method

.method public constructor <init>(Le/f/i/i/b;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/Object;Le/f/i/i/b$b;ZZLcom/facebook/imagepipeline/common/d;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p8}, Lcom/facebook/imagepipeline/producers/d;-><init>(Le/f/i/i/b;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/Object;Le/f/i/i/b$b;ZZLcom/facebook/imagepipeline/common/d;)V

    return-void
.end method
