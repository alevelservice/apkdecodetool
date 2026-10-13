.class final enum Lcom/google/common/collect/r0$p$b;
.super Lcom/google/common/collect/r0$p;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/r0$p;-><init>(Ljava/lang/String;ILcom/google/common/collect/r0$a;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Le/i/c/a/b;
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
    invoke-static {}, Le/i/c/a/b;->identity()Le/i/c/a/b;

    move-result-object v0

    return-object v0
.end method
