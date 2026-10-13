.class Lcom/google/common/collect/d0$e;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/l1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l1$b<",
            "Lcom/google/common/collect/d0;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/common/collect/l1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l1$b<",
            "Lcom/google/common/collect/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/d0;

    const-string v1, "map"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/l1;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/l1$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d0$e;->a:Lcom/google/common/collect/l1$b;

    .line 3
    const-class v0, Lcom/google/common/collect/d0;

    const-string v1, "size"

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/collect/l1;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/l1$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d0$e;->b:Lcom/google/common/collect/l1$b;

    return-void
.end method
