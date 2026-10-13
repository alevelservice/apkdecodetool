.class final Le/f/i/c/l$a;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"

# interfaces
.implements Le/f/i/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/l;->a(Lcom/facebook/common/internal/j;Le/f/c/f/c;)Le/f/i/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/i/c/v<",
        "Le/f/c/f/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/c/f/g;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Le/f/c/f/g;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/f/c/f/g;

    invoke-virtual {p0, p1}, Le/f/i/c/l$a;->a(Le/f/c/f/g;)I

    move-result p1

    return p1
.end method
