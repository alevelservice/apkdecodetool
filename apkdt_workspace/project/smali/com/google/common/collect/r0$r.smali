.class final Lcom/google/common/collect/r0$r;
.super Lcom/google/common/collect/r0$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$n<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$q<",
        "TK;>;",
        "Lcom/google/common/collect/r0$r<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/r0$n;-><init>(Lcom/google/common/collect/r0;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$r;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$q;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "*>;)",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$q;

    return-object p1
.end method

.method bridge synthetic self()Lcom/google/common/collect/r0$n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$r;->self()Lcom/google/common/collect/r0$r;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/r0$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method
