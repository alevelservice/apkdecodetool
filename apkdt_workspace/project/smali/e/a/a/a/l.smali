.class Le/a/a/a/l;
.super Ljava/lang/ThreadLocal;
.source "TBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Le/a/a/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/a/a/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Le/a/a/a/d;
    .locals 1

    .line 1
    new-instance v0, Le/a/a/a/d;

    invoke-direct {v0}, Le/a/a/a/d;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/l;->a()Le/a/a/a/d;

    move-result-object v0

    return-object v0
.end method
