.class final Lcom/google/common/collect/r0$u;
.super Lcom/google/common/collect/r0$c;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r0$u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$c<",
        "TK;TV;",
        "Lcom/google/common/collect/r0$u<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/r0$f0<",
        "TK;TV;",
        "Lcom/google/common/collect/r0$u<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Lcom/google/common/collect/r0$g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0$g0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/r0$u;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$u;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/r0$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/r0$i;)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/r0;->unsetWeakValueReference()Lcom/google/common/collect/r0$g0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/r0$u;)Lcom/google/common/collect/r0$g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    return-object p0
.end method

.method static synthetic a(Lcom/google/common/collect/r0$u;Lcom/google/common/collect/r0$g0;)Lcom/google/common/collect/r0$g0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/r0$u;)Lcom/google/common/collect/r0$u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/common/collect/r0$u;

    iget-object v1, p0, Lcom/google/common/collect/r0$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/r0$c;->b:I

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/collect/r0$u;-><init>(Ljava/lang/Object;ILcom/google/common/collect/r0$u;)V

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/r0$g0;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$g0;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    return-object v0
.end method

.method a(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    .line 4
    new-instance v1, Lcom/google/common/collect/r0$h0;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/r0$h0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/r0$i;)V

    iput-object v1, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/r0$g0;->clear()V

    return-void
.end method

.method public c()Lcom/google/common/collect/r0$g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0$g0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$u;->d:Lcom/google/common/collect/r0$g0;

    invoke-interface {v0}, Lcom/google/common/collect/r0$g0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
