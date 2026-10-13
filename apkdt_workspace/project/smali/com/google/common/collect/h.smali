.class final Lcom/google/common/collect/h;
.super Lcom/google/common/collect/c1;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Le/i/c/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/d<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/i/c/a/d;Lcom/google/common/collect/c1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/c/a/d<",
            "TF;+TT;>;",
            "Lcom/google/common/collect/c1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    .line 2
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/i/c/a/d;

    iput-object p1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    .line 3
    invoke-static {p2}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/common/collect/c1;

    iput-object p2, p0, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

    iget-object v1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    invoke-interface {v1, p1}, Le/i/c/a/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    invoke-interface {v1, p2}, Le/i/c/a/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/c1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    instance-of v1, p1, Lcom/google/common/collect/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/google/common/collect/h;

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    iget-object v3, p1, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    invoke-interface {v1, v3}, Le/i/c/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

    iget-object p1, p1, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

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
    iget-object v1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

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

    iget-object v1, p0, Lcom/google/common/collect/h;->ordering:Lcom/google/common/collect/c1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/h;->function:Le/i/c/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
