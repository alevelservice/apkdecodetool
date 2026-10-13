.class final Le/i/c/a/e;
.super Le/i/c/a/b;
.source "FunctionalEquivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Le/i/c/a/b<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final function:Le/i/c/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/d<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field private final resultEquivalence:Le/i/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/i/c/a/d;Le/i/c/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/c/a/d<",
            "TF;+TT;>;",
            "Le/i/c/a/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/i/c/a/b;-><init>()V

    .line 2
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/i/c/a/d;

    iput-object p1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    .line 3
    invoke-static {p2}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Le/i/c/a/b;

    iput-object p2, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    return-void
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    invoke-interface {v1, p1}, Le/i/c/a/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    invoke-interface {v1, p2}, Le/i/c/a/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/i/c/a/b;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    invoke-interface {v1, p1}, Le/i/c/a/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/c/a/b;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/i/c/a/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/i/c/a/e;

    .line 3
    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    iget-object v3, p1, Le/i/c/a/e;->function:Le/i/c/a/d;

    invoke-interface {v1, v3}, Le/i/c/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    iget-object p1, p1, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Le/i/c/a/h;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/i/c/a/e;->resultEquivalence:Le/i/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/c/a/e;->function:Le/i/c/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
