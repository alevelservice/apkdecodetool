.class public Lcom/facebook/imagepipeline/memory/j;
.super Lcom/facebook/imagepipeline/memory/u;
.source "BufferMemoryChunkPool.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Le/f/c/f/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/u;-><init>(Le/f/c/f/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/facebook/imagepipeline/memory/i;
    .locals 1

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/memory/i;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/i;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic a(I)Lcom/facebook/imagepipeline/memory/t;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/j;->a(I)Lcom/facebook/imagepipeline/memory/i;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/j;->a(I)Lcom/facebook/imagepipeline/memory/i;

    move-result-object p1

    return-object p1
.end method
