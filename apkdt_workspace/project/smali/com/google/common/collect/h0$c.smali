.class final Lcom/google/common/collect/h0$c;
.super Ljava/lang/Object;
.source "ImmutableSetMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/l1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l1$b<",
            "Lcom/google/common/collect/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/h0;

    const-string v1, "emptySet"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/l1;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/l1$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/h0$c;->a:Lcom/google/common/collect/l1$b;

    return-void
.end method
