.class final La/k/a/a$b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements La/k/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/k/a/b$b<",
        "La/e/h<",
        "Landroidx/core/view/f0/d;",
        ">;",
        "Landroidx/core/view/f0/d;",
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
.method public a(La/e/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/h<",
            "Landroidx/core/view/f0/d;",
            ">;)I"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, La/e/h;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, La/e/h;

    invoke-virtual {p0, p1}, La/k/a/a$b;->a(La/e/h;)I

    move-result p1

    return p1
.end method

.method public a(La/e/h;I)Landroidx/core/view/f0/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/h<",
            "Landroidx/core/view/f0/d;",
            ">;I)",
            "Landroidx/core/view/f0/d;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2}, La/e/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/f0/d;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, La/e/h;

    invoke-virtual {p0, p1, p2}, La/k/a/a$b;->a(La/e/h;I)Landroidx/core/view/f0/d;

    move-result-object p1

    return-object p1
.end method
