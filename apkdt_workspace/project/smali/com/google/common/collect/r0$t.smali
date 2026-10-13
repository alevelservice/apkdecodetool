.class final Lcom/google/common/collect/r0$t;
.super Lcom/google/common/collect/r0$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$n<",
        "TK;TV;",
        "Lcom/google/common/collect/r0$s<",
        "TK;TV;>;",
        "Lcom/google/common/collect/r0$t<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$t<",
            "TK;TV;>;>;II)V"
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
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$t;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$s;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/r0$s<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$s;

    return-object p1
.end method

.method bridge synthetic self()Lcom/google/common/collect/r0$n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$t;->self()Lcom/google/common/collect/r0$t;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/r0$t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0$t<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
