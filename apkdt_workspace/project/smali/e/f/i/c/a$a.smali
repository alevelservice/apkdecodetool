.class final Le/f/i/c/a$a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"

# interfaces
.implements Le/f/i/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/a;->a(Lcom/facebook/common/internal/j;Le/f/c/f/c;Le/f/i/c/h$c;)Le/f/i/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/i/c/v<",
        "Le/f/i/g/c;",
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
.method public a(Le/f/i/g/c;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Le/f/i/g/c;->j()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/c;

    invoke-virtual {p0, p1}, Le/f/i/c/a$a;->a(Le/f/i/g/c;)I

    move-result p1

    return p1
.end method
