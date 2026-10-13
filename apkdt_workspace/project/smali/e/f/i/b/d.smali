.class public Le/f/i/b/d;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.java"

# interfaces
.implements Le/f/c/k/a;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/e0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/e0;->c()Lcom/facebook/imagepipeline/memory/p;

    .line 3
    new-instance v0, Le/f/i/b/b;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/e0;->f()Le/f/c/f/h;

    move-result-object p1

    invoke-direct {v0, p1}, Le/f/i/b/b;-><init>(Le/f/c/f/h;)V

    return-void
.end method
