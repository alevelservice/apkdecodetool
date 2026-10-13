.class Lcom/google/common/collect/c1$b;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/c1$a;

    invoke-direct {v0}, Lcom/google/common/collect/c1$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/c1$b;->a:Lcom/google/common/collect/c1;

    return-void
.end method
