.class public abstract Le/i/c/a/b;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/c/a/b$d;,
        Le/i/c/a/b$b;,
        Le/i/c/a/b$c;,
        Le/i/c/a/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Le/i/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/i/c/a/b$b;->INSTANCE:Le/i/c/a/b$b;

    return-object v0
.end method

.method public static identity()Le/i/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/i/c/a/b$d;->INSTANCE:Le/i/c/a/b$d;

    return-object v0
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Le/i/c/a/b;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equivalentTo(Ljava/lang/Object;)Le/i/c/a/k;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Le/i/c/a/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/c/a/b$c;

    invoke-direct {v0, p0, p1}, Le/i/c/a/b$c;-><init>(Le/i/c/a/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Le/i/c/a/b;->doHash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final onResultOf(Le/i/c/a/d;)Le/i/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/c/a/d<",
            "TF;+TT;>;)",
            "Le/i/c/a/b<",
            "TF;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/c/a/e;

    invoke-direct {v0, p1, p0}, Le/i/c/a/e;-><init>(Le/i/c/a/d;Le/i/c/a/b;)V

    return-object v0
.end method

.method public final pairwise()Le/i/c/a/b;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Le/i/c/a/b<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/c/a/i;

    invoke-direct {v0, p0}, Le/i/c/a/i;-><init>(Le/i/c/a/b;)V

    return-object v0
.end method

.method public final wrap(Ljava/lang/Object;)Le/i/c/a/b$e;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(TS;)",
            "Le/i/c/a/b$e<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/c/a/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/i/c/a/b$e;-><init>(Le/i/c/a/b;Ljava/lang/Object;Le/i/c/a/b$a;)V

    return-object v0
.end method
