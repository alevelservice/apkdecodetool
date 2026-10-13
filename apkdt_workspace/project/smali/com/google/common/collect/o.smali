.class Lcom/google/common/collect/o;
.super Lcom/google/common/collect/y;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/y<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/o;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/o;

    invoke-direct {v0}, Lcom/google/common/collect/o;-><init>()V

    sput-object v0, Lcom/google/common/collect/o;->INSTANCE:Lcom/google/common/collect/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/collect/z;->of()Lcom/google/common/collect/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/z;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/o;->INSTANCE:Lcom/google/common/collect/o;

    return-object v0
.end method
